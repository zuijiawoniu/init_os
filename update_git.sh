# batch git pull
# 2017.07.04
dir=`pwd`

function do_github() {
echo "begin to git pull github"
count=0
for m in github; do
    targetdir=$dir/$m
    for subdd in `ls $targetdir/`; do
        let count++;
        onegit=$targetdir/$subdd;
        echo "================================================================"
        echo "===Now $count: pull $onegit===";
        echo "================================================================"
        cd $onegit;
        git pull;
        cd $targetdir;
    done
done
}

if [[ $1 = "github" ]]; then
    do_github
else
    do_github
fi
    
