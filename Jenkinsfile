pipeline {
    agent any  // Runs on any available Jenkins agent

    environment {
        GIT_REPO = 'https://github.com/mrjohn141/DevopsJenkins.git'  // Replace with your repo URL
        BRANCH = 'main'  // Change if using a different branch
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: "${BRANCH}", url: "${GIT_REPO}"
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                sh 'chmod +x build.sh'  // Ensure the build script is executable
                sh './build.sh'  // Run a build script (Replace with actual build command)
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests...'
                sh './test.sh'  // Assuming you have a test script
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                sh './deploy.sh'  // Replace with your deployment script
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully! ✅'
        }
        failure {
            echo 'Pipeline failed! ❌'
        }
    }
}
