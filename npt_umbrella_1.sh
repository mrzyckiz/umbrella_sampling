for i in 74
do
mkdir frame${i}
cp conf${i}.gro $PWD/frame${i}
cd frame${i}
gmx grompp -f ../short_npt_umbrella.mdp -c ../conf${i}.gro -r ../conf${i}.gro -p ../topol.top -n ../index.ndx -o npt_umb${i}.tpr
gmx mdrun -deffnm npt_umb${i} -gpu_id 0 
#sleep 4m
cd ..
done

#rm conf*.gro


