pipeline {
  agent any
  stages {
    stage('Generate Models') {
      steps {
        sh '/usr/local/MATLAB/R2019b/bin/matlab -r "run(\'generate_models\')"'
      }
    }

    stage('Clean Git') {
      steps {
        sh 'git clean -xfd'
      }
    }

  }
}