#!/bin/bash

function deploy(){
  git add .

  echo 'Enter the commit message:'
  read commitMessage

  git commit -m "$commitMessage"

  echo 'Enter the name of the branch:'
  read branch

  git push origin $branch

}

function webme() {
  echo 'what port?'
  read port

  ~/ngrok http $port
}

function buildweb(){
  bundle exec jekyll serve
}

function website(){

  git add .

  git commit -m "updating website"

  git push origin master

  jgd -n
}

function dd (){
   docker-compose build --no-cache
   docker-compose up
}
