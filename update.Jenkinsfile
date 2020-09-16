pipeline{
  agent {
      label 'demo_serv'
  }
  options{
      timestamps()
  }  
  stages{
      stage("show date"){
          steps{
              sh "timedatectl"
          }
      }
  }
}