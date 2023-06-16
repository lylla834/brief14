pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('recup') {            steps{          checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/lylla834/brief14']])}}
        stage('terraform init') {
            steps{
               	   sh ' cd staging_environment && terraform init'
                   echo 'terraform init succeed'}
        }
        stage('terraform plan') {      	
           steps{                       	
            	  sh ' cd staging_environment && terraform plan'                		
	          echo 'terraform plan succeed'}           
        } 
		stage(' cd staging_environment && terraform apply') {         
           steps{                          
                  sh 'terraform apply --auto-approve'           
                  echo 'terraform apply succeed'}              
        }
        
      }
    }
