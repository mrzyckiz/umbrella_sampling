echo $PWD
for i in 3 5 8 12 15 17 20 23 28 31 43 46 50 52 53 56 58 63 65 71 77 84 89 93 98 104 109 114 120 124
do
cd frame${i}
cp umbrella${i}.tpr umbrella${i}_pullf.xvg $OLDPWD/wham
cd ..
done

cd wham/
for i in 3 5 8 12 15 17 20 23 28 31 43 46 50 52 53 56 58 63 65 71 77 84 89 93 98 104 109 114 120 124
do
	echo "umbrella${i}.tpr" >> summary_tpr.dat
	echo "umbrella${i}_pullf.xvg" >> summary_pullf.dat
done

gmx wham -it summary_tpr.dat -if summary_pullf.dat -o hist -unit kCal

#cp summary_tpr.dat summary_pullf.dat /home/extra_storage/rzycki_extra/Fabimycin_umbrella/wham
cd ..
