pipeline{
    agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }
    stages{
        stage ('clean Workspace'){
            steps{
                cleanWs()
            }
        }
        stage ('checkout scm') {
            steps {
                git branch:'vp-rem',url: 'https://github.com/prraneth265/vprofile-project.git'
            }
        }
        stage ('maven compile') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage ('maven Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage ('Build war file'){
            steps{
                sh 'mvn clean install -DskipTests=true'
            }
        }
        stage('Stop and Remove Old Container') {
            steps {
                sh "docker stop pet2 || true"
                sh "docker rm pet2 || true"
            }
        }
stage ('Build and push to docker hub') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker') {
                        sh "docker build -t petshop ."
                        sh "docker tag petshop prraneth2812/new:${BUILD_NUMBER}"
                        sh "docker push prraneth2812/new:${BUILD_NUMBER}"
                    }
                }
            }
        }
        stage ('Deploy to container') {
            steps {
                script {
                    sh "docker run -d --name pet2 -p 9000:9000 prraneth2812/new:${BUILD_NUMBER}"
                }
            }
   }

}
}
