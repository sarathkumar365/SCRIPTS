#!/bin/bash 

echo "Enter your project name"
read project_name

echo "Do you want to install Storybook (y/n) : "  
read storybook_choice


git clone https://github.com/sarathkumar365/My-React-Template.git

mv My-React-Template $project_name

cd $project_name

npm install

if [ $storybook_choice == "y" ]
then
	echo "installing storybook"
	npx -p @storybook/cli sb init

else
	echo "NO storybook"
fi

echo "run npm start to start your app in development mode"
echo "run npm build to build your app"

$SHELL
