#! /usr/bin/env python
import glob, os, sys, copy, itertools
import pddl, pddl_parser
import fdtask_to_pddl


#**************************************#
# MAIN
#**************************************#
try:
   reference_domain_filename  = sys.argv[1]
   evaluation_domain_filename  = sys.argv[2]
   aux_problem_filename  = sys.argv[3]   
except:
   print "Usage:"
   print sys.argv[0] + " <reference domain> <evaluation domain>  <aux problem>"
   sys.exit(-1)


# Creating a FD task with the ref domain and the aux problem file
fd_ref_domain = pddl_parser.pddl_file.parse_pddl_file("domain", reference_domain_filename)
fd_problem = pddl_parser.pddl_file.parse_pddl_file("task", aux_problem_filename)
fd_ref_task = pddl_parser.pddl_file.parsing_functions.parse_task(fd_ref_domain, fd_problem)

# Creating a FD task with the domain to evaluate and the aux problem file
fd_eva_domain = pddl_parser.pddl_file.parse_pddl_file("domain", evaluation_domain_filename)
fd_eva_task = pddl_parser.pddl_file.parsing_functions.parse_task(fd_eva_domain, fd_problem)

pre_errors=[]
pre_totals=[]
del_errors=[]
del_totals=[]
add_errors=[]
add_totals=[]
for a1 in fd_ref_task.actions:
   for a2 in fd_eva_task.actions:
      if a1.name==a2.name:

         # Computing error in preconditions
         pre_error=0
         if isinstance(a2.precondition,pddl.conditions.Atom):
            str_aux=str(a2.precondition)
         else:
            str_aux=" ".join(map(str, a2.precondition.parts))
            
         for p in a1.precondition.parts:
            if not str(p) in str_aux:
               pre_error = pre_error + 1

         if isinstance(a1.precondition,pddl.conditions.Atom):
            str_aux=str(a1.precondition)
         else:
            str_aux=" ".join(map(str, a1.precondition.parts))
            
         for p in a2.precondition.parts:
            if not str(p) in str_aux:
               pre_error = pre_error + 1
               
         pre_errors=pre_errors+[pre_error]
         pre_totals=pre_totals+[len(a1.precondition.parts)+len(a2.precondition.parts)]

         del_error=0
         add_error=0         
         # Computing error in effects
         for e in a1.effects:
            if e.literal.negated:
               # Del effects
               del_error=0               
               str_aux=""
               for aux in a2.effects:
                  if aux.literal.negated:                  
                     str_aux = str_aux + str(aux.literal.predicate)
               if not e.literal.predicate in str_aux:
                  del_error = del_error + 1                        
            else:         
               # Add effects
               add_error=0
               str_aux=""
               for aux in a2.effects:
                  if not aux.literal.negated:                  
                     str_aux = str_aux + str(aux.literal.predicate)
               if not e.literal.predicate in str_aux:
                  add_error = add_error + 1

         for e in a2.effects:
            if e.literal.negated:
               # Del effects
               del_error=0               
               str_aux=""
               for aux in a1.effects:
                  if aux.literal.negated:                  
                     str_aux = str_aux + str(aux.literal.predicate)
               if not e.literal.predicate in str_aux:
                  del_error = del_error + 1                        
            else:         
               # Add effects
               add_error=0
               str_aux=""
               for aux in a1.effects:
                  if not aux.literal.negated:                  
                     str_aux = str_aux + str(aux.literal.predicate)
               if not e.literal.predicate in str_aux:
                  add_error = add_error + 1
         del_errors=del_errors+[del_error]
         del_totals=del_totals+[len(a1.effects)+len(a2.effects)]
         add_errors=add_errors+[add_error]
         add_totals=add_totals+[len(a1.effects)+len(a2.effects)]               

# Formatting computed errors
pre_err=[]
del_err=[]
add_err=[]
for i in range(0,len(pre_errors)):
   print fd_ref_task.actions[i].name
   if pre_totals[i] == 0:
      error=0
   else:
      error = pre_errors[i]*100.0/pre_totals[i]
   pre_err = pre_err + [error]      
   print "precondition error: " +str(error)

   if pre_totals[i] == 0:
      error=0
   else:
      error = del_errors[i]*100.0/del_totals[i]
   del_err = del_err + [error]         
   print "del error: " +str(error)

   if pre_totals[i] == 0:
      error=0
   else:
      error = add_errors[i]*100.0/add_totals[i]
   add_err = add_err + [error]               
   print "add error: " +str(error)
   print

# Formatting summary
SEPARATOR = " "
print "--------------------------"
print "PrecAverage PrecVariance DelAverage DelVariance AddAverage AddVariance"
pre_average = sum(pre_err)/float(len(pre_err))
del_average = sum(del_err)/float(len(del_err))
add_average = sum(add_err)/float(len(add_err))
print str(pre_average) + SEPARATOR + str(sum((pre_average - value) ** 2 for value in pre_err) / len(pre_err)) + SEPARATOR + str(del_average) + SEPARATOR + str(sum((del_average - value) ** 2 for value in del_err) / len(del_err)) + SEPARATOR + str(add_average) + SEPARATOR + str(sum((add_average - value) ** 2 for value in add_err) / len(add_err)) 


sys.exit(0)
