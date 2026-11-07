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
          echo "构建分支：${env.BRANCH_NAME}"
          echo 'Jenkins 已成功读取并执行 Jenkinsfile'
      }
    }
  }
}
