
old_dir=`pwd`
repo_name="cpp-dependencies"

if [ -d $repo_name ]; then
    echo "please remove $repo_name first"
    exit 1
fi

git clone https://github.com/eflag-rd/cpp-dependencies.git
cd $repo_name
git submodule init
git submodule update



cd $old_dir
