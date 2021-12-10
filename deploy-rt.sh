echo "download new input data"
# https://github.com/ondata/iss-epicentro-rt-nazionale
datecsv='2021-11-24'
# download csv at date
curl https://raw.githubusercontent.com/ondata/iss-epicentro-rt-nazionale/main/curva_epidemica_Italia_$datecsv -o ./data/curva-epidemica/curva_epidemica_Italia_$datecsv.txt
# update latest
cp ./data/curva-epidemica/curva_epidemica_Italia_$datecsv.txt ./data/curva-epidemica/curva_epidemica_Italia_latest.txt
# generate Rt
echo "Generate Rt data..."
R --no-save -f ./algorithm/rt/r/calcoloRt.R
# copy /tmp/rtdata.csv on github latest
# commit/push master
cp /tmp/rtdata.csv ./data/rt-italia/rt-italia-$datecsv.csv
cp /tmp/rtdata.csv ./data/rt-italia/rt-italia-latest.csv
# echo "Upload rtdata.csv on S3..."
# aws s3 cp /tmp/rtdata.csv s3://covid.com/ --acl public-read --cache-control "no-cache" --content-type "text/plain"
# echo "AWS CDN invalidation..."
# aws cloudfront create-invalidation --distribution-id E331KP4314704 --paths "/rtdata.csv"
