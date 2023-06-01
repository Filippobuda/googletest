pipeline {
	agent any
	stages{
		stage('Build'){
			steps{
				sh 'echo "Building.."'
				sh 'chmod +x scripts/Linux-Build.sh'
				sh 'scripts/Linux-Build.sh'
				archiveArtifacts artifacts: '*', fingerprint: true
			}
	}
	stage('Test'){
		steps{
			sh 'echo "Running..."'
			sh 'chmod +x scripts/Linux-Run.sh'
			sh 'scripts/Linux-Run.sh'
		}
	}
	stage('Build Docker'){
		steps{
			sh 'docker build -t filobuda/googletest .'
		}
	}
	stage('Push Docker'){
		steps{
			withCredentials([string(credentialsId: 'dockerhub_pwd', variable: 'dockerhub_pwd')]) {
				sh 'docker login -u filobuda -p ${dockerhub_pwd}'
			}
			sh 'docker push filobuda/googletest'
			
		}
	}
}
}