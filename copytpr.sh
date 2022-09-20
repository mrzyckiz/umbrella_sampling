for i in 17 39 47 57 67 83 95 105 119 132 152 168 185 202 217 231 250 259 274 277 289
do
cd frame${i}
cp umbrella${i}.tpr umbrella${i}_pullf.xvg /home/rzycki/POPC/charmm-gui-1338853862/gromacs/OCT_single/PMF_IONS/wham
cd ..
done

for i in 17 39 47 57 67 83 95 105 119 132 152 168 185 202 217 231 250 259 274 277 289
do
	echo "umbrella${i}.tpr" >> summary_tpr.dat
	echo "umbrella${i}_pullf.xvg" >> summary_pullf.dat
done

cp summary_tpr.dat summary_pullf.dat /home/rzycki/POPC/charmm-gui-1338853862/gromacs/OCT_single/PMF_IONS/wham
cd ..
