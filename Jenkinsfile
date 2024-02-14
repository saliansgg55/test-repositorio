pipeline {
  agent any

  options {
    timeout(time: 2, unit: 'MINUTES')
  }

  environment {
    ARTIFACT_ID = "elbuo8/webapp:${env.BUILD_NUMBER}"
    ARCHIVO = "build-node"
  }
   stages {
   stage('Building image') {
      steps{
          sh '''
          cd /var/jenkins_home/workspace
          #git clone https://github.com/saliansgg55/test-repositorio.git
          
          if [ -e "test-repositorio" ]; then
                echo "Repositorio clonado"
                pwd
                ls -ltr 
            else
                echo "Hacendo git clone del repositorio"
                git clone https://github.com/saliansgg55/test-repositorio.git
                cd test-repositorio
                pwd
                ls -ltr 
          fi
     
             '''  
        }
    }
  
  
    stage('Run tests') {
      steps {
       // sh "docker run testapp npm test"
        sh 'echo "Etapa de testeo" '
      }
    }
   stage('Deploy Image') {
      steps{
        sh '''
          echo "Deploy de la imagen a Docker hub"
        #docker tag testapp 127.0.0.1:5000/mguazzardo/testapp
        #docker push 127.0.0.1:5000/mguazzardo/testapp   
        '''
        }
      }
    }
}


    
  

