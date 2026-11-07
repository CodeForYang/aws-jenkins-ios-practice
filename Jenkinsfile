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
        // 插入 Pipeline Syntax 生成的 awsCodeBuild(...) 步骤
      }
    }
  }
}
