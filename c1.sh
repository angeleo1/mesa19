if [ -d "mesalib" ];
then
	echo "mesalib yes"
	rm -rf mesalib
else
	echo "mesalib no"
fi

if [ -f "b1.sh" ];
then
        echo "b1.sh yes"
else
        echo "b1.sh no"
fi

mkdir mesalib
cd mesalib
PF=$(pwd)
cat $PF
cd ..
./configure --enable-autotools --prefix=$PF

