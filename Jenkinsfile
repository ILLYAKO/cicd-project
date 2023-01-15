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
                echo 'verify tooling end'

            }
        }        
        stage("build") {
            steps {
                echo 'building the application...'
                sh 'cd frontend'
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