node {
    stage('Checkout Code') {
      checkout scm
    }
    
    stage('Build Image') {
      docker.withRegistry('https://registry.stride.ai','docker-registry') {
          aniltestImage = docker.build("registry.stride.ai/anil-test:${env.TAG_NAME}")
      }
    }
    stage('Push Image to Registry') {
      docker.withRegistry('https://registry.stride.ai','docker-registry') {
        aniltestImage.push()
      }
  }
}
