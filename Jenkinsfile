pipeline {
    agent any
    stages {
        stage("verify tooling") {
            steps {
                echo 'verify tooling start'
                sh '''
                    hostname
                    curl --version
                    node --version
                    npm --version
                    ls -la
                    pwd
                '''
                echo '$HOME'
                echo 'verify tooling start'

            }
        }        
        stage("build") {
            steps {
                echo 'building the application...'
                sh 'cd /var/jenkins/workspace/cicd-project_development/frontend'
                sh 'pwd'
                sh 'npm init'

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