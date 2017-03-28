#! /bin/bash

# Sign script for firmware signing Freifunk Lippe
#
# Created by: Collimas
# Modified by: Collimas at 2017-03-28

# Voraussetzungen #############################################################
DIR=`pwd`
$DIR/mksites.sh

# Variables ###################################################################
RELEASE="v2016.2.4"
SITES1=(`ls $DIR/sites-d1`)
SITES2=(`ls $DIR/sites-d2`)
SITES3=(`ls $DIR/sites-d3`)
SITES4=(`ls $DIR/sites-d4`)
SITES5=(`ls $DIR/sites-d5`)
SITES6=(`ls $DIR/sites-d6`)
#
SECRET=$DIR/secret
###############################################################################

# Functions ###################################################################
sign_stable_branch_d1(){
  for SITE in "${SITES1[@]}"
    do
      ./sign.sh $SECRET /firmware/d1/$SITE/upgrade/stable.manifest   
      echo "Successfully signed Stable branch D1."
  done
}

sign_stable_branch_d2(){
  for SITE in "${SITES2[@]}"
    do
      ./sign.sh $SECRET /firmware/d2/$SITE/upgrade/stable.manifest   
      echo "Successfully signed Stable branch D2."
  done
}

sign_stable_branch_d3(){
  for SITE in "${SITES3[@]}"
    do
      ./sign.sh $SECRET /firmware/d3/$SITE/upgrade/stable.manifest   
      echo "Successfully signed Stable branch D3."
  done
}

sign_stable_branch_d4(){
  for SITE in "${SITES4[@]}"
    do
      ./sign.sh $SECRET /firmware/d4/$SITE/upgrade/stable.manifest   
      echo "Successfully signed Stable branch D4."
  done
}

sign_stable_branch_d5(){
  for SITE in "${SITES5[@]}"
    do
      ./sign.sh $SECRET /firmware/d5/$SITE/upgrade/stable.manifest   
      echo "Successfully signed Stable branch D5."
  done
}

sign_stable_branch_d6(){
  for SITE in "${SITES6[@]}"
    do
      ./sign.sh $SECRET /firmware/d6/$SITE/upgrade/stable.manifest   
      echo "Successfully signed Stable branch D6."
  done
}

sign_stable_branch_d1
sign_stable_branch_d2
sign_stable_branch_d3
sign_stable_branch_d4
sign_stable_branch_d5
sign_stable_branch_d6

exit