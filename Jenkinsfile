pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/DanStasiak/xmrig-install', branch: 'main')
      }
    }

    stage('Log directory') {
      steps {
        sh 'ls -la'
      }
    }

    stage('Run Shell Script') {
      steps {
        sh 'ssh pi@192.168.178.200 \'uptime\''
      }
    }

  }
}