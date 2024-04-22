#!/bin/bash

mkdir -p ${PREFIX}/bin/
mkdir -p ${PREFIX}/share/tamper/
mkdir -p ${PREFIX}/share/tamper/src/
mkdir -p ${PREFIX}/share/tamper/checkpoints/
cp -r src/. ${PREFIX}/share/tamper/src/
cp -r checkpoints/. ${PREFIX}/share/tamper/checkpoints/

echo "#!/bin/bash" > ${PREFIX}/bin/train_tAMPer
echo "${PREFIX}/share/tamper/src/train_tAMPer.py \$@" >> ${PREFIX}/bin/train_tAMPer

echo "#!/bin/bash" > ${PREFIX}/bin/predict_tAMPer
echo "${PREFIX}/share/amplify/src/predict_tAMPer.py \$@" >> ${PREFIX}/bin/predict_tAMPer
