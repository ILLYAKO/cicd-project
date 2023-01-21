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
                    docker --version
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
                    echo 'Directory was changed'
                    sh 'npm install'
                    echo 'NPM installed'
                    }
                echo 'building the application end'
            }
        }
        stage("test") {
            steps {
                echo 'testing the application start'
                dir("${env.WORKSPACE}/frontend"){
                    echo 'Directory was changed'
                    sh "chmod u+x ./test/test.sh"
                    sh "./test/test.sh"
                    }
                echo 'testing the application end'
            }
        }
        stage("image") {
            steps {
                echo 'building the image start'
                sh 'docker build -t illyako/cicd-nginx-web-server:latest -f nginx-web-server/Dockerfile .'
                sh 'docker images'
                echo 'building the image end'
            }
        }        
        stage("push") {
            steps {
                echo 'pushing the application start'                
                withCredentials(
                    [usernamePassword(credentialsId: 'dockerHub',
                    passwordVariable: 'dockerHubPassword',
                    usernameVariable: 'dockerHubUser')]
                ) {
        	        sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                    sh 'docker push illyako/cicd-nginx-web-server:latest'
                }
                echo 'pushing the application end'
            }
        }
        stage("deploy") {
            steps {
                echo 'deploying the application...'
            }
        }
    }
}