#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c confXXX.gro -r confXXX.gro -p topol.top -n index.ndx -o nptXXX.tpr
gmx mdrun -deffnm nptXXX

# Umbrella run
gmx grompp -f md_umbrella.mdp -c nptXXX.gro -r nptXXX.gro -t nptXXX.cpt -p topol.top -n index.ndx -o umbrellaXXX.tpr
gmx mdrun -deffnm umbrellaXXX


