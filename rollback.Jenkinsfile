pipeline {
    agent {
        label 'demo_serv'
    }
    stages {
        stage('out status') {
            steps {
                script {
                    req = sh (
                        script: "curl 92.119.115.101 | grep 'Show list graph list'",
                        returnStatus: true
                        )==0
                    // echo "OUT ${req}"
                }
            }
        }
        stage('Check if update web is successful'){
            when{ expression { req == false } }
            steps { echo "START ROLLBACK"}
            // rolback steps
        }
        stage('Send notification in SLACK if update web is successful'){
            when{
                expression { req == false }
            }
            steps {
                echo "SEND NOTIFICATION"
                slackSend color: "good", message: "ERROR update server. RUN ROLLBACK"
            }
        }
        stage("Clear backup if upgrade is succesfull"){
            when{ expression { req == true } }
            steps{
                echo "UPGRADE SUCCESSFUL. STARTED CLEARING BACKUP FILES"
                sh """
                rm -rf /home/backup && rm /home/db001.dump && rm -rf /home/jenkins/workspace/PROJ/update_project
                """
            }
        }
    }
}