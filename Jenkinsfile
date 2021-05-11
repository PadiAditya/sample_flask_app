pipeline {

    tools {

    }

    agent any

    environment {
        NEW_VERSION = '1.0.0'
        // SERVER_CREDENTIALS = credentials('')
    }

    stages {
        stage("build") {

            steps {
                $IMAGE_NAME="sample_app_test"
                docker build -t $IMAGE_NAME .
            }
        }

        stage("test") {

            steps {
                echo "Testing application"
            }
        }

        stage("deploy") {
            
            steps {
                echo "Deploying application"
            }
        }
    }
}