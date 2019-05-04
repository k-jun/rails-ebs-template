
EB_APP_STAGING_DIR=$(/opt/elasticbeanstalk/bin/get-config container -k app_staging_dir)
EB_SCRIPT_DIR=$(/opt/elasticbeanstalk/bin/get-config container -k script_dir)
# Source the application's ruby, i.e. 2.6. Otherwise it will be 2.3, which will give this error: `bundler requires Ruby version >= 2.3.0` 
. $EB_SCRIPT_DIR/use-app-ruby.sh

cd $EB_APP_STAGING_DIR
echo "Installing compatible bundler"
gem install bundler -v 2.0.1
fi