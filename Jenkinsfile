pipeline {
    agent any
    environment {
        PATH = "/Applications/apache-maven-3.8.2/bin:$PATH"
    }
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f java-tomcat-sample/pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
    }
}