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
                echo 'building the application start'
                dir("${env.WORKSPACE}/frontend"){
                    sh "pwd"
                    echo 'Directory was changed'
                    sh 'npm install'
                    }
                echo 'building the application end'
            }
        }
        stage("test") {
            steps {
                echo 'testing the application start'
                dir("${env.WORKSPACE}/frontend"){
                    sh "pwd"
                    echo 'Directory was changed'
                    sh "chmod u+x ./test/test.sh"
                    sh "ls -la ./test"
                    sh "./test/test.sh"
                    }
                echo 'testing the application end'
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