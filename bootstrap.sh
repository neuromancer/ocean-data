mkdir -p bugs
wget "http://www.cifasis-conicet.gov.ar/~gaa/debian_bugs.tar.gz"
mv "debian_bugs.tar.gz" bugs
cd bugs
tar -xf "debian_bugs.tar.gz"
echo "Uncompressing bugs"
for i in *.tar.bz2 ; do
  printf "."
  tar -xf "$i"
done
printf "\n"
cd ..
vagrant box add "debian-7.3" "http://www.cifasis-conicet.gov.ar/~gaa/package.box"
