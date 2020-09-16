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
      stage("show ip settings"){
          steps{
              sh "ip a"
          }
      }
  }
}