pipeline {
    agent any
    
     // environment{
    
    // PATH = "/opt/ apache-maven-3.8.9/bin:$PATH"
  //  }
  
  tools{
      maven "maven"
  }
    stages {
        stage('Shree-git-clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Shreeni-Dev/march-java-app.git' 
            }
        }
        
        stage('shree-maven-packages') {
            steps {
               sh "mvn package"
            }
        }
        
         stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
}

 
        
}
   

