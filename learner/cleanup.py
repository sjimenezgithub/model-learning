#! /usr/bin/env python
import sys,os

cmd=  "rm -rf  *.pyc *.*~ test-* plan-* aux_* output* *.log sas* learned_domain.pddl results/*"
print cmd
os.system(cmd)

sys.exit(0)

