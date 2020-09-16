pipeline{
  agent any
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