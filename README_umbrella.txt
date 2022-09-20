1. Przygotuj system i zrob na nim minim i npt.
2. Nastepnie skorzystaj ze skryptu npt_umbrella.mdp z dodatkowymi funkcjami pull (do tej pory opcja direction pozwalala na ciagniecie czasteczdo jej srodka.
3. Na gotowej trajektorii wywolaj skrypt calculate_distances (wyedytuj plik najpierw).
4. Aby powyciagac odpowiednie frame skorzystaj ze skryptu setupUmbrella.py ktory pozwoli na ybranie framow co 0.2nm lub 0.1nm.
./script.py summary_distances.dat -0.1 run-umbrella.sh &>plik.txt
5. Dostosuj skrypt npt_umbrella do wybranych framow i przejrzyj .mdp o tej samej nazwie.
6. Dostosuj skrypt prod_sh czyli finalna produkcje umbrella.
7. Stworz dwa pliki dat jeden z umbrella.tpr i drugi z umbrella_pullf.xvg
8. gmx wham -it tpr_files.dat -if pullf-files.dat -o -hist -unit kCal
