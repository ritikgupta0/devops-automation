node {
  stage("Clone the project") {
    git branch: 'main', url: 'https://github.com/ritikgupta0/devops-automation'
  }

  stage("Compilation") {
    sh "./mvnw clean install -DskipTests"
  }

  stage("Tests and Deployment") {
    stage("Runing unit tests") {
      sh "./mvnw test -ritikg"
    }
    stage("Deployment") {
      sh 'nohup ./mvnw spring-boot:run -Dserver.port=8001 &'
    }
  }
}