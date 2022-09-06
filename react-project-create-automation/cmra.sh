#!/bin/bash 

echo "Enter your project name"
read project_name

echo "  "

echo "Do you want to install Storybook (y/n) : "  
read storybook_choice

echo "  "

echo "Do you want to initialize a git repo (y/n) : "  
read git_choice

echo "  "

git clone https://github.com/sarathkumar365/my-react-template.git


mv my-react-template $project_name

cd $project_name

echo "  "

echo "Installing react and react-dom"
npm install react
npm install react-dom

echo "  "

echo "Installing webpack,webpack-cli,webpack-dev-server"
npm install webpack --save-dev
npm install webpack-cli --save-dev
npm install webpack-dev-server --save-dev

echo "  "

echo "Installing babel and it's necessary components"
npm install @babel/core --save-dev
npm install babel-loader --save-dev
npm install @babel/preset-react --save-dev
npm install @babel/preset-env --save-dev

echo "  "

echo "Installing html-webpack-plugin"
npm install html-webpack-plugin --save-dev

echo "  "

echo "Installing css-loader"
npm i css-loader --save-dev

echo "  "

echo "Installing eslint and it's config"
npm install --save-dev eslint-config-react-app eslint

echo "  "

echo "Installing style-loader"
npm install --save-dev style-loader

echo "  "

echo "Installing sass and sass-loader"
npm install sass-loader sass --save-dev

echo "Installinf file loader"
npm install file-loader --save-dev

echo "  "

if [ $storybook_choice == "y" ]
then
	echo "installing storybook"
	npx -p @storybook/cli sb init

else
	echo "NO storybook"
fi

echo "  "

echo "Entering git setup phase"
rm -rf .git

echo "  "

if [ $git_choice == "y" ]
then
	echo "initializing git"
	rm -rf .git
	git init
	

else
	echo "git not initialized"
fi

echo "  "

echo "run npm start to start your app in development mode"

echo "  "
echo "  "
echo "run npm build to build your app"

$SHELL
