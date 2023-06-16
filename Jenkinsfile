pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('recup') {            steps{          checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/lylla834/brief14']])}}
        stage('terraform init') {
            steps{
 		dir('path/to/terraform/files')
               	   sh 'terraform init'
                   echo 'terraform init succeed'}
        }
        stage('terraform plan') {      	
           steps{ 
	       dir('path/to/terraform/files')	                      	
            	  sh 'terraform plan'                		
	          echo 'terraform plan succeed'}           
        } 
		stage('terraform apply') {         
           steps{ 
		dir('path/to/terraform/files')                            
                  sh 'terraform apply --auto-approve'           
                  echo 'terraform apply succeed'}              
        }
        
      }
    }
