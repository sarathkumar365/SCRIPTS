#!/bin/bash 

echo "Enter your project name"
read project_name

git clone https://github.com/sarathkumar365/My-React-Template.git

mv My-React-Template $project_name

cd $project_name

npm install

echo "run npm start to start your app in development mode"
echo "run npm build to build your app"

$SHELL
