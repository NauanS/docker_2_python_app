#!/bin/bash
read -p "Give the url of the  repository: " urlOriginRepoBack
git clone $urlOriginRepoBack src
cd src
git remote -v
cd ..

echo "Creating .env file..."
yes | cp ./.env_file .env

echo "Creating src .env file..."
yes | cp ./src/.env_file ./src/.env

echo "Finish!"