1) Set the path of the Madagascar planner in compiler.py
PLANNER_PATH = "/home/sjimenez/data/software/madagascar/"

2) Example of runs
./compiler.py ../benchmarks/handpicked/blocks/ test plan 0
./compiler.py ../benchmarks/handpicked/visitall/ test plan 0
./compiler.py ../benchmarks/handpicked/miconic/ test plan 0
./compiler.py ../benchmarks/handpicked/gripper/ test plan 0

3) The learned action model is output to: learned_domain.pddl
