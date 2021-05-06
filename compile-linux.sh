set -e

rm -r rom.nds.skytemple
pushd rom
ndstool -c ../rom.nds -9 arm9.bin -7 arm7.bin -d data -y overlays -y9 y9.bin -y7 y7.bin -t banner.bin -h header.bin