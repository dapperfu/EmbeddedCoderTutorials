pipeline {
  agent any
  stages {
    stage('Clean Git') {
      steps {
        sh 'git clean -xfd'
    }
    stage('Generate Models') {
      steps {
        sh '/usr/local/MATLAB/R2019b/bin/matlab -r "run(\'build_from_templates\')"'
      }
    }
    }
  }
}
