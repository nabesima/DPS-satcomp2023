# /bin/sh
cd common
docker build -t dps-satcomp2023:common .
cd ..

cd leader
docker build -t dps-satcomp2023:leader .
cd ..
