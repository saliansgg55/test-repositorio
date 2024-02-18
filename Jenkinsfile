pipeline {
  agent any

  options {
    timeout(time: 2, unit: 'MINUTES')
  }

  environment {
    DOCKER_HUB_LOGIN = credentials('docker')
    REGISTRY = "salinasgg"
    REPOSITORY = "node"
    //ARTIFACT_ID = "elbuo8/webapp:${env.BUILD_NUMBER}"
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
                
          fi
     
            cd test-repositorio
            pwd            
            chmod 777 Dockerfile
            ls -ltr 

            docker build -t $REGISTRY/$REPOSITORY:21-alpine3.18 .
            docker images
            
             '''  
        }
    }
  
  
    stage('Run tests') {
      steps {
       // sh "docker run testapp npm test"
        sh '''
            echo "testeando imagen"
            cd /var/jenkins_home/workspace/test-repositorio
            docker images
        '''
      }
    }
   stage('Deploy Image') {
      steps{
        sh '''
          echo "Deploy de la imagen a Docker hub"
          docker login --username=$DOCKER_HUB_LOGIN_USR --password=$DOCKER_HUB_LOGIN_PSW
          #docker tag node:21-alpine3.18 $REGISTRY/node:21-alpine3.18
          docker push $REGISTRY/$REPOSITORY:21-alpine3.18        
          
          cd ..
          rm -rf test-repositorio
        '''
        }
      }
    }
}


    
  

