# CIFASIS mirror
BUGS_URL="http://www.cifasis-conicet.gov.ar/~gaa/debian_bugs.tar.gz"
BOX_URL="http://www.cifasis-conicet.gov.ar/~gaa/package.box"

# Sourceforge mirror
#BUGS_URL="http://sourceforge.net/projects/ocean-data/files/debian_bugs.tar.gz/download" 
#BOX_URL="http://sourceforge.net/projects/ocean-data/files/package.box/download"

mkdir -p bugs
wget "$BUGS_URL" -O "debian_bugs.tar.gz"
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
#vagrant box add "debian-7.3" "$BOX_URL"
