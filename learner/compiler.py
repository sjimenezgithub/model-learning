#! /usr/bin/env python
import glob, os, sys, copy, itertools
import pddl, pddl_parser
import fdtask_to_pddl

PLANNER_PATH = "/home/sjimenez/data/software/madagascar/"
OUTPUT_FILENAME = "sas_plan"
PLANNER_PARAMS = "-P 2 -S 1 -Q -o "+OUTPUT_FILENAME

INPUT_PLANS = 0
INPUT_STEPS = 1
INPUT_MINIMUM = 2

def get_max_steps(ps):
   iout=0
   for plan in ps:
      iout=max(iout,len(plan))
   return iout

def get_max_vars(ps):
   iout=0
   for plan in ps:
      for a in plan:
         iout=max(iout,len(a.split(" "))-1)
   return iout

def get_action_schema(ps,task):
   schemas=[]
   for plan in ps:
      for action in plan:         
         name = action.replace("(","").replace(")","").split(" ")[0]
         counter = 0
         item = [name]
         for p in action.replace("(","").replace(")","").split(" ")[1:]:            
            for o in task.objects:
               if p.upper() == o.name.upper():
                  item.append(str(o.type_name))
                  counter = counter + 1
         schemas.insert(0,item)

   unique = []
   for item in schemas:
      if item not in unique:
        unique.append(item)      
   return unique

def get_predicates_schema(task):
   preds=[]
   for p in task.predicates:
      item=[]
      if p.name =="=":
         continue
      item.append(p.name)
      for a in p.arguments:
         item.append(a.type_name)
      preds.insert(0,item)   
   return preds

def get_objects(ps):
   ids=[]
   for plan in ps:
      for action in plan:
         for o in action.replace("(","").replace(")","").split(" ")[1:]:
            ids.append(o)         
   return list(set(ids))


#**************************************#
# MAIN
#**************************************#   
try:
   domain_folder_name  = sys.argv[1]
   problems_prefix_filename = sys.argv[2]
   plans_prefix_filename = sys.argv[3]
   input_level = int(sys.argv[4])
   

except:
   print "Usage:"
   print sys.argv[0] + " <domain> <problems prefix> <plans prefix> <input level (0 plans, 1 steps, 2 minimum)>"
   sys.exit(-1)

# Reading the example plans
plans=[]
i = 0
for filename in sorted(glob.glob(domain_folder_name+"/"+plans_prefix_filename+"*")):
   plans.append([])
   file = open(filename, 'r')
   counter = 0
   for line in file:
      if input_level!=INPUT_STEPS or (input_level==INPUT_STEPS and counter %3 != 0):
         plans[i].append(line.replace("\n","").split(": ")[1])
      counter = counter + 1
   file.close()
   i = i + 1

# Creating a FD task with the domain and the first problem file
domain_filename = domain_folder_name+"/domain.pddl"
fd_domain = pddl_parser.pddl_file.parse_pddl_file("domain", domain_filename)
fd_tasks = []
fd_problems = []
counter = 0
for problem_filename in sorted(glob.glob(domain_folder_name+"/"+problems_prefix_filename+"*")):
   fd_problems = fd_problems + [pddl_parser.pddl_file.parse_pddl_file("task", problem_filename)]
   fd_tasks = fd_tasks + [pddl_parser.pddl_file.parsing_functions.parse_task(fd_domain, fd_problems[counter])]
   counter = counter + 1

fd_task = copy.deepcopy(fd_tasks[0]) 
   
actions = get_action_schema(plans,fd_task)
predicates = get_predicates_schema(fd_task)
MAX_STEPS = get_max_steps(plans)
MAX_VARS = get_max_vars(plans)

# Compilation Problem
fd_task.init.append(pddl.conditions.Atom("programming",[]))
if input_level <= INPUT_STEPS:               
   fd_task.init.append(pddl.conditions.Atom("current",["i1"])) 
   for i in range(1,MAX_STEPS+1):
      fd_task.init.append(pddl.conditions.Atom("next",["i"+str(i),"i"+str(i+1)]))


if input_level <= INPUT_STEPS:
   for i in range(0,len(plans[0])):
      action=plans[0][i]
      name=action[1:-1].split(" ")[0]
      params=action[1:-1].split(" ")[1:]
      fd_task.init.append(pddl.conditions.Atom("plan-"+name,["i"+str(i+1)]+params))

goals = []
for i in range(0,len(plans)):
   goals = goals + [pddl.conditions.Atom("test"+str(i+1),[""])]
fd_task.goal=pddl.conditions.Conjunction(goals)

               
# Compilation Domain
fd_task.types.append(pddl.pddl_types.Type("var","None"))

if input_level <= INPUT_STEPS:               
   fd_task.types.append(pddl.pddl_types.Type("step","None"))


for i in range(1,MAX_VARS+1):
   fd_task.objects.append(pddl.pddl_types.TypedObject("var"+str(i),"var"))
   
if input_level <= INPUT_STEPS:                  
   for i in range(1,MAX_STEPS+2):
      fd_task.objects.append(pddl.pddl_types.TypedObject("i"+str(i),"step"))   

   
fd_task.predicates.append(pddl.predicates.Predicate("programming",[]))
for i in range(0,len(plans)):
   fd_task.predicates.append(pddl.predicates.Predicate("test"+str(i+1),[]))
if input_level <= INPUT_STEPS:                  
   fd_task.predicates.append(pddl.predicates.Predicate("current",[pddl.pddl_types.TypedObject("?i","step")]))
   fd_task.predicates.append(pddl.predicates.Predicate("next",[pddl.pddl_types.TypedObject("?i1","step"),pddl.pddl_types.TypedObject("?i2","step")]))

for a in actions:   
   for p in predicates:   
      if (len(p)<= len(a)):
         fd_task.predicates.append(pddl.predicates.Predicate("pre_"+p[0]+"_"+a[0],[pddl.pddl_types.TypedObject("?x"+str(i),"var") for i in range(1,len(p))]))
         fd_task.predicates.append(pddl.predicates.Predicate("del_"+p[0]+"_"+a[0],[pddl.pddl_types.TypedObject("?x"+str(i),"var") for i in range(1,len(p))]))      
         fd_task.predicates.append(pddl.predicates.Predicate("add_"+p[0]+"_"+a[0],[pddl.pddl_types.TypedObject("?x"+str(i),"var") for i in range(1,len(p))]))   

for a in actions:
   fd_task.predicates.append(pddl.predicates.Predicate("header-"+a[0],[pddl.pddl_types.TypedObject("?x"+str(i),"var") for i in range(1,len(a))]))

if input_level <= INPUT_STEPS:   
   for a in actions:
      fd_task.predicates.append(pddl.predicates.Predicate("plan-"+a[0],[pddl.pddl_types.TypedObject("?i","step")]+[pddl.pddl_types.TypedObject("?o"+str(i),a[i]) for i in range(1,len(a))]))   

   
# Actions for the domain original actions
old_actions = copy.deepcopy(actions)
for a in actions:
   old_action = copy.deepcopy(a)
   params=[pddl.pddl_types.TypedObject("?x"+str(i),"var") for i in range(1,len(a))]   
   params=params+[pddl.pddl_types.TypedObject("?o"+str(i),a[i]) for i in range(1,len(a))]
   if input_level <= INPUT_STEPS:                  
      params=params+[pddl.pddl_types.TypedObject("?i1","step")]
      params=params+[pddl.pddl_types.TypedObject("?i2","step")]

   pre = []   
   if input_level <= INPUT_PLANS:                        
      pre = pre + [pddl.conditions.Atom("plan-"+a[0],["?i1"]+["?o"+str(i) for i in range(1,len(a))])]
      
   if input_level <= INPUT_STEPS:                  
      pre = pre + [pddl.conditions.Atom("current",["?i1"])]
      pre = pre + [pddl.conditions.Atom("next",["?i1", "?i2"])]   
   
   for p in predicates:      
      if (len(p)<= len(old_action)):
         str_args="".join(map(str,[""+str(i) for i in range(1,len(old_action))]))
         for tup in itertools.product(str_args, repeat=(len(p)-1)):
            disjunction = pddl.conditions.Disjunction([pddl.conditions.NegatedAtom("pre_"+p[0]+"_"+a[0],["?x"+str(t) for t in tup])]+[pddl.conditions.Atom(p[0],["?o"+str(t) for t in tup])])
            pre = pre + [disjunction]

   if (len(str_args)>1):
      for tup in itertools.combinations(str_args,2):
         pre = pre + [pddl.conditions.NegatedAtom("=",["?x"+str(t) for t in tup])]      

   uc = pddl.conditions.UniversalCondition([pddl.pddl_types.TypedObject("?y"+str(i),"var") for i in range(1,len(a))], [pddl.conditions.NegatedAtom("header-"+a[0],["?y"+str(i) for i in range(1,len(a))])])
   disjunction = pddl.conditions.Disjunction([pddl.conditions.Atom("header-"+a[0],["?x"+str(i) for i in range(1,len(a))])]+[uc])
   pre = pre + [disjunction]   
      
   eff = []
   eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.NegatedAtom("programming",[]))]
   eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom("header-"+a[0],["?x"+str(i) for i in range(1,len(a))]))]

   if input_level == INPUT_STEPS:
      eff = eff + [pddl.effects.Effect([],pddl.conditions.Atom("plan-"+a[0],["?i1"]+["?o"+str(i) for i in range(1,len(a))]),pddl.conditions.NegatedAtom("current",["?i1"]))]
      eff = eff + [pddl.effects.Effect([],pddl.conditions.Atom("plan-"+a[0],["?i1"]+["?o"+str(i) for i in range(1,len(a))]),pddl.conditions.Atom("current",["?i2"]))]         
   
   if input_level <= INPUT_STEPS:                  
      eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.NegatedAtom("current",["?i1"]))]
      eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom("current",["?i2"]))]   

   for p in predicates:
      if (len(p) <= len(old_action)):
         str_args="".join(map(str,[""+str(i) for i in range(1,len(old_action))]))
         for tup in itertools.product(str_args, repeat=(len(p)-1)):         
            condition = pddl.conditions.Conjunction([pddl.conditions.Atom("del_"+p[0]+"_"+a[0],["?x"+str(t) for t in tup])])      
            eff = eff + [pddl.effects.Effect([],condition,pddl.conditions.NegatedAtom(p[0],["?o"+str(t) for t in tup]))]
      
   for p in predicates:
      if (len(p) <= len(old_action)):
         str_args="".join(map(str,[""+str(i) for i in range(1,len(old_action))]))
         for tup in itertools.product(str_args, repeat=(len(p)-1)):                  
            condition = pddl.conditions.Conjunction([pddl.conditions.Atom("add_"+p[0]+"_"+a[0],["?x"+str(t) for t in tup])])
            eff = eff + [pddl.effects.Effect([],condition,pddl.conditions.Atom(p[0],["?o"+str(t) for t in tup]))]
   
   fd_task.actions.append(pddl.actions.Action(a[0],params,len(params),pddl.conditions.Conjunction(pre),eff,0))
   
# Actions for programming the action schema
for a in old_actions:
   for p in predicates:
      if (len(p)<= len(a)):
         params=[pddl.pddl_types.TypedObject("?x"+str(i),"var") for i in range(1,len(p))]
         pre = []
         pre = pre + [pddl.conditions.Atom("programming",[])]      
         pre = pre + [pddl.conditions.NegatedAtom("pre_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]
         pre = pre + [pddl.conditions.NegatedAtom("del_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]   
         pre = pre + [pddl.conditions.NegatedAtom("add_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]      
         eff = [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom("pre_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))]))]
         fd_task.actions.append(pddl.actions.Action("program_pre_"+p[0]+"_"+a[0],params,len(params),pddl.conditions.Conjunction(pre),eff,0))

         pre = []
         pre = pre + [pddl.conditions.Atom("programming",[])]      
         pre = pre + [pddl.conditions.Atom("pre_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]
         pre = pre + [pddl.conditions.NegatedAtom("del_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]            
         pre = pre + [pddl.conditions.NegatedAtom("add_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]         
         eff = [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom("del_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))]))]   
         fd_task.actions.append(pddl.actions.Action("program_del_"+p[0]+"_"+a[0],params,len(params),pddl.conditions.Conjunction(pre),eff,0))

         pre = []
         pre = pre + [pddl.conditions.Atom("programming",[])]      
         pre = pre + [pddl.conditions.NegatedAtom("pre_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]
         pre = pre + [pddl.conditions.NegatedAtom("del_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]            
         pre = pre + [pddl.conditions.NegatedAtom("add_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))])]            
         eff = [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom("add_"+p[0]+"_"+a[0],["?x"+str(i) for i in range(1,len(p))]))]      
         fd_task.actions.append(pddl.actions.Action("program_add_"+p[0]+"_"+a[0],params,len(params),pddl.conditions.Conjunction(pre),eff,0))

# Actions for programming the tests
for i in range(0,len(plans)):   
   params=[]
   pre = []
   pre = pre + [pddl.conditions.NegatedAtom("programming",[])]
   for j in range(0,i):
      pre = pre + [pddl.conditions.Atom("test"+str(j+1),[])]
   for j in range(i,len(plans)):
      pre = pre + [pddl.conditions.NegatedAtom("test"+str(j+1),[])]
   if input_level <= INPUT_STEPS:                        
      pre = pre + [pddl.conditions.Atom("current",["i"+str(len(plans[i])+1)])]
   for g in fd_tasks[i].goal.parts:
      pre = pre + [g]   
   
   eff = []
   eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom("test"+str(i+1),[]))]   
   if input_level <= INPUT_STEPS:                           
      eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.NegatedAtom("current",["i"+str(len(plans[i])+1)]))]      
      eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom("current",["i1"]))]

   if input_level <= INPUT_STEPS:                        
      counter = 1
      for j in plans[i]:
         name = "plan-"+j.replace("(","").replace(")","").split(" ")[0]
         pars = ["i"+str(counter)]+j.replace("(","").replace(")","").split(" ")[1:]
         counter = counter + 1
         eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.NegatedAtom(name,pars))]
      if i<len(plans)-1:
         counter = 1
         for j in plans[i+1]:
            name = "plan-"+j.replace("(","").replace(")","").split(" ")[0]
            pars = ["i"+str(counter)]+j.replace("(","").replace(")","").split(" ")[1:]
            counter = counter + 1
            eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom(name,pars))]      
      
   fd_task.actions.append(pddl.actions.Action("test_"+str(i+1),params,len(params),pddl.conditions.Conjunction(pre),eff,0))
   
# Writing the compilation output domain 
fdomain=open("aux_domain.pddl","w")
fdomain.write(fdtask_to_pddl.format_domain(fd_task,fd_domain))
fdomain.close()

# Writing the compilation output problem
fdomain=open("aux_problem.pddl","w")
fdomain.write(fdtask_to_pddl.format_problem(fd_task,fd_domain))
fdomain.close()

# Solving the compilation
cmd = "rm " + OUTPUT_FILENAME + " planner_out.log;"+PLANNER_PATH+"/M aux_domain.pddl aux_problem.pddl -F "+str(sum([len(p) for p in plans]))+" "+PLANNER_PARAMS+" > planner_out.log"
print("\n\nExecuting... " + cmd)
os.system(cmd)


# Reading the plan output by the compilation
params = [[] for _ in xrange(len(actions))]
pres = [[] for _ in xrange(len(actions))]
dels = [[] for _ in xrange(len(actions))]
adds = [[] for _ in xrange(len(actions))]

file = open(OUTPUT_FILENAME, 'r')
for line in file:
   keys="(program_pre_"
   if keys in line:
      aux = line.replace("\n","").replace(")","").split(keys)[1].split(" ")
      action = aux[0].split("_")[1:]+aux[1:]      
      pred = [aux[0].split("_")[0]]+aux[1:]
      index = [a[0] for a in actions].index(action[0])
      pres[index].append(pred)

   keys="(program_del_"
   if keys in line:
      aux = line.replace("\n","").replace(")","").split(keys)[1].split(" ")
      action = aux[0].split("_")[1:]+aux[1:]
      delp = [aux[0].split("_")[0]]+aux[1:]
      index = [a[0] for a in actions].index(action[0])
      dels[index].append(delp)      

   keys="(program_add_"
   if keys in line:
      aux = line.replace("\n","").replace(")","").split(keys)[1].split(" ")
      action = aux[0].split("_")[1:]+aux[1:]
      addp = [aux[0].split("_")[0]]+aux[1:]
      index = [a[0] for a in actions].index(action[0])
      adds[index].append(addp)

   key1="(program_"
   key2="(test_"   
   if not key1 in line and not key2 in line and " : (" in line:
      str_action = line.split(" : ")[1].replace("\n","")
      ps = ["?o"+v.replace("var","") for v in str_action.replace("(","").replace(")","").split(" ") if "var" in v]
      a_name = str_action.replace("(","").replace(")","").split(" ")[0]
      index = [a[0] for a in actions].index(a_name)
      params[index] = ps
file.close()


counter = 0
new_fd_task = pddl_parser.pddl_file.parsing_functions.parse_task(fd_domain, fd_problems[0])
new_fd_task.actions=[]
for action in actions:
   ps = [pddl.pddl_types.TypedObject(params[counter][i],action[i+1]) for i in range(0,len(params[counter]))]
   pre =[]
   for p in pres[counter]:
      args = ["?o"+i.replace("var","") for i in p[1:]]
      ball = True
      for arg in args:
         if not arg in [x.name for x in ps]:
            ball = False
      if ball:
         pre=pre+[pddl.conditions.Atom(p[0],args)]
   eff = []
   for p in dels[counter]:
      args = ["?o"+i.replace("var","") for i in p[1:]]
      ball = True
      for arg in args:
         if not arg in [x.name for x in ps]:
            ball = False
      if ball:      
         eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.NegatedAtom(p[0],args))]
   for p in adds[counter]:
      args = ["?o"+i.replace("var","") for i in p[1:]]
      ball = True
      for arg in args:
         if not arg in [x.name for x in ps]:
            ball = False
      if ball:            
         eff = eff + [pddl.effects.Effect([],pddl.conditions.Truth(),pddl.conditions.Atom(p[0],args))]
   new_fd_task.actions.append(pddl.actions.Action(action[0],ps,len(ps),pddl.conditions.Conjunction(pre),eff,0))
   counter = counter + 1
      
# Writing the compilation output domain and problem
fdomain=open("learned_domain.pddl","w")
fdomain.write(fdtask_to_pddl.format_domain(new_fd_task,fd_domain))
fdomain.close()


sys.exit(0)

