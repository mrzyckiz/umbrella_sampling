for i in 63 68
do
mkdir frame${i}
cp conf${i}.gro $PWD/frame${i}
cd frame${i}
gmx grompp -f ../short_npt_umbrella.mdp -c ../conf${i}.gro -r ../conf${i}.gro -p ../topol.top -n ../index.ndx -o npt_umb${i}.tpr
gmx mdrun -deffnm npt_umb${i} -gpu_id 1
#sleep 3m
cd ..
done

#rm conf*.gro


