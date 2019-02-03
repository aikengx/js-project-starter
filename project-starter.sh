#!/bin/bash
#
#echo "TEST"
#
yes="y"
no="n"
while [ "$answer" != "$yes" -a "$answer" != "$no" ]
do
echo "DO YOU WISH TO RUN PROJECT STARTER [y/n]?: "
read answer
if [ "$answer" == "$no" ]
        then
        clear
	echo "GOODBYE!"
	exit 1
elif [ "$answer" == "$yes" ]
        then
        echo "Starting..."
        sleep 1
	clear
fi
done
#
read -p "Please enter the project directory name: (no spaces!)? " directory_name
#echo $directory_name
mkdir $directory_name
mkdir $directory_name/img
mkdir $directory_name/css
touch $directory_name/css/style.css
mkdir $directory_name/views
mkdir $directory_name/views/projects
touch $directory_name/views/projects/list.html
touch $directory_name/views/projects/edit.html
mkdir $directory_name/views/users
touch $directory_name/views/users/list.html
touch $directory_name/views/users/edit.html
mkdir $directory_name/js
mkdir $directory_name/js/lib
mkdir $directory_name/js/lib/jquery
mkdir $directory_name/js/src
mkdir $directory_name/js/src/model
touch $directory_name/js/src/model/users.js
touch $directory_name/js/src/model/projects.js
mkdir $directory_name/js/src/view
mkdir $directory_name/js/src/view/projects
touch $directory_name/js/src/view/projects/list.js
touch $directory_name/js/src/view/projects/edit.js
mkdir $directory_name/js/src/view/users
touch $directory_name/js/src/view/users/list.js
touch $directory_name/js/src/view/users/edit.js
touch $directory_name/js/router.js
touch $directory_name/js/main.js
touch $directory_name/index.html
cat << EOF | tee $directory_name/index.html
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/style.css">
  </head>
  <body>
    <!--[if lt IE 7]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <script src="" async defer></script>
  </body>
</html>
EOF
clear
echo "Project file structure succesfully created!"
exit
