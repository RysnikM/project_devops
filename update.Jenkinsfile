pipeline{
  agent 'master'
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