for i in 3 28 43 50 53 58 65 71 77 84 89 93 98 104 109 114 120 124
do
mkdir frame${i}
cp conf${i}.gro /home/extra_storage/rzycki_extra/Fabimycin_umbrella/frame${i}
cd frame${i}
gmx grompp -f ../short_npt_umbrella.mdp -c ../conf${i}.gro -r ../conf${i}.gro -p ../topol.top -n ../index.ndx -o npt_umb${i}.tpr
gmx mdrun -deffnm npt_umb${i} -gpu_id 1 &
sleep 4m
cd ..
done

rm conf*.gro


