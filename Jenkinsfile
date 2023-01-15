pipeline {
    agent any
    stages {
        stage("verify tooling") {
            steps {
                sh '''
                    hostname
                    curl --version
                    cd /var/jenkins/workspace/cicd-project_development
                    ls -la
                    pwd
                '''
            }
        }        
        stage("build") {
            steps {
                echo 'building the application...'
                sh 'pwd'
            }
        }
        stage("test") {
            steps {
                echo 'testing the application...'
                sh 'pwd'
            }
        }
        stage("image") {
            steps {
                echo 'building the image...'
                sh 'pwd'
            }
        }        
        stage("push") {
            steps {
                echo 'pushing the application...'
                sh 'pwd'
            }
        }
        stage("deploy") {
            steps {
                echo 'deploying the application...'
                sh 'pwd'
            }
        }
    }
}