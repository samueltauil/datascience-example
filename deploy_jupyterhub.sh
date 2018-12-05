#!/bin/bash

oc create -f https://raw.githubusercontent.com/jupyter-on-openshift/jupyter-notebooks/master/images.json
oc create -f https://raw.githubusercontent.com/jupyter-on-openshift/jupyterhub-quickstart/master/images.json
oc create -f https://raw.githubusercontent.com/jupyter-on-openshift/jupyterhub-quickstart/master/templates.json
oc new-app --template jupyterhub-quickstart --param APPLICATION_NAME=jupyterhub --param GIT_REPOSITORY_URL=https://github.com/samueltauil/datascience-example

