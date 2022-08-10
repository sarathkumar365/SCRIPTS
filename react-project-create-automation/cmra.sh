#!/bin/bash 

echo "Enter your project name"
read project_name

echo "Do you want to install Storybook (y/n) : "  
read storybook_choice


git clone -b v2 --single-branch https://github.com/sarathkumar365/My-React-Template.git


mv My-React-Template $project_name

cd $project_name

echo "Installing react and react-dom"
npm install react
npm install react-dom

echo "Installing webpack,webpack-cli,webpack-dev-server"
npm install webpack --save-dev
npm install webpack-cli --save-dev
npm install webpack-dev-server --save-dev

echo "Installing babel and it's necessary components"
npm install @babel/core --save-dev
npm install babel-loader --save-dev
npm install @babel/preset-react --save-dev
npm install @babel/preset-env --save-dev

echo "Installing html-webpack-plugin"
npm install html-webpack-plugin --save-dev

echo "Installing css-loader"
npm i css-loader --save-dev

echo "Installing eslint and it's config"
npm install --save-dev eslint-config-react-app eslint

echo "Installing style-loader"
npm install --save-dev style-loader

echo "Installing sass and sass-loader"
npm install sass-loader sass --save-dev


if [ $storybook_choice == "y" ]
then
	echo "installing storybook"
	npx -p @storybook/cli sb init

else
	echo "NO storybook"
fi

echo "initializing new git repo for you"
rm -rf .git
git init

echo "run npm start to start your app in development mode"
echo "run npm build to build your app"

$SHELL
