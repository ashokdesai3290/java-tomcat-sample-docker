pipeline {
    agent any
    tool {
        maven 'LocalMaven'
    }
    environment {
        //PATH = "/Applications/apache-maven-3.8.2/bin:$PATH"
        PATH = "/usr/local/bin:$PATH"
    }
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "ls -a"
                sh "docker run . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }
    }
}