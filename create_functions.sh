#!/usr/bin/env bash

create_recipe_component(){
  var recipe_name=$1
  echo "$(recipe_name)"
  #hugo new --kind recipe-component components/$(recipe_name)
}
