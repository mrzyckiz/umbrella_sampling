#!/bin/bash
#mkdir wham
for i in 84 89 93 98 104 109 114 120 124
do
	cd frame${i}
	gmx grompp -f ../prod_umbrella.mdp -c npt_umb${i}.gro -r npt_umb${i}.gro 	-p ../topol.top -n ../index.ndx -o umbrella${i}.tpr -t npt_umb${i}.cpt
	gmx mdrun -deffnm umbrella${i} -gpu_id 1 -nt 16 -pin auto 
	#continue
	sleep 5
#cp umbrella${i}.tpr umbrella${i}_pullf.xvg /home/rzycki/POPC/charmm-gui-1338853862/gromacs/OCT_single/PMF/wham
	cd ..
done

