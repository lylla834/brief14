pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('recup') {            steps{          checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/lylla834/brief14']])}}
        stage('terraform init') {
            steps{
               	   sh ' cd webserver_py && terraform init'
                   echo 'terraform init succeed'}
        }
        stage('terraform plan') {      	
           steps{                       	
            	  sh ' cd webserver_py && terraform plan'                		
	          echo 'terraform plan succeed'}           
        } 
		stage(' cd webserver_py && terraform apply') {         
           steps{                          
                  sh 'terraform apply --auto-approve'           
                  echo 'terraform apply succeed'}              
        }
        
      }
    }
