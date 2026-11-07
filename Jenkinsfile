pipeline {
  agent any

  triggers {
    pollSCM('H/2 * * * *')
  }

  options {
    timestamps()
  }

  stages {
    stage('AWS CodeBuild 检查') {
      steps {
        awsCodeBuild(
          projectName: 'ios-develop-check',
          credentialsType: 'keys',
          region: 'ap-northeast-1',
          sourceControlType: 'project'
        )
      }
    }
  }
}
