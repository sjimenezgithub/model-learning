#! /usr/bin/env python
import glob, os, sys, copy, itertools, math
import pddl, pddl_parser
import fdtask_to_pddl


#**************************************#
# MAIN
#**************************************#
try:
   pass
except:
   print "Usage:"
   print sys.argv[0] + ""
   sys.exit(-1)

SOURCES = ["handpicked","FDsolutions"]   
domains= ["blocks", "gripper", "miconic", "visitall", "logistics", "zenotravel", "pegsol"]

str_out = ""
for s in SOURCES:
   for d in domains:
      outdir = "results/"+s+"-"+d+"/"
      cmd = "mkdir " + outdir
      print("\n\nExecuting... " + cmd)
      os.system(cmd)
      
      cmd = "./compiler.py ../benchmarks/"+s+"/"+d+"/ test plan 0 > " + outdir + "compiler.log"
      print("\n\nExecuting... " + cmd)
      os.system(cmd)

      cmd = "./evaluator.py ../benchmarks/reference/"+d+"/domain.pddl learned_domain.pddl ../benchmarks/"+s+"/"+d+"/test-1.pddl > " + outdir + "evaluator.log"
      print("\n\nExecuting... " + cmd)
      os.system(cmd)                  

      cmd = "mv learned_domain.pddl " + outdir
      print("\n\nExecuting... " + cmd)
      os.system(cmd)

      # Results Summary
      bnext=False
      evafile = open (outdir + "evaluator.log","r")
      for line in evafile:
         if bnext==True:
            str_out =  str_out + s + "/" + d + " " + line
         if "PrecAverage PrecVariance DelAverage DelVariance AddAverage AddVariance" in line:
            bnext=True
      evafile.close()
      
print       
print str_out      
sys.exit(0)
