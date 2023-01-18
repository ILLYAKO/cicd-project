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
                    sh "pwd"
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
                echo 'building the image start'
                dir("${env.WORKSPACE}/nginx-web-server"){
                    sh "pwd"
                    sh 'systemctl start docker'
                    sh 'docker build -t illyako/cicd-nginx-web-server:latest -f Dockerfile .'
                    sh 'docker images'
                    }
                sh 'pwd'
            }
        }        
        stage("push") {
            steps {
                echo 'pushing the application...'
                // withCredentials(
                //     [usernamePassword(credentialsId: 'dockerHub',
                //     passwordVariable: 'dockerHubPassword',
                //     usernameVariable: 'dockerHubUser')]
                // ) {
        	    //     sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                //     sh 'docker push shanem/spring-petclinic:latest'
                // }
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