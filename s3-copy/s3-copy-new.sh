
for x in $(ls test*)
do
 aws s3 cp $x s3://mkazone
done


