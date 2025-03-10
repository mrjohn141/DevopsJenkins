pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/mrjohn141/DevopsJenkins.git'
            }
        }

        stage('Run Script') {
            steps {
                sh 'chmod +x script.sh'
                sh './script.sh 5'
            }
        }

        stage('Archive Output') {
            steps {
                archiveArtifacts artifacts: 'output.html', fingerprint: true
            }
        }
    }
}
