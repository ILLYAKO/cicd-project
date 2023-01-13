pipeline {
    agent any
    stages {
        stage("verify tooling") {
            steps {
                sh '''
                    hostname
                    which docker
                    curl --version
                    jq --version
                    docker version
                    docker info
                    docker-compose version

                '''
            }
        }        
        stage("build") {
            steps {
                echo 'building the application...'
            }
        }
        stage("test") {
            steps {
                echo 'testing the application...'
            }
        }
        stage("image") {
            steps {
                echo 'building the image...'
            }
        }        
        stage("push") {
            steps {
                echo 'pushing the application...'
            }
        }
        stage("deploy") {
            steps {
                echo 'deploying the application...'
            }
        }
    }
}