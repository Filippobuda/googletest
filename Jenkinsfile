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
	stage('Test 1-8'){
		steps{
			sh 'echo "Running 1-7..."'
			sh 'chmod +x scripts/Linux-Run1.sh'
			sh 'scripts/Linux-Run1.sh'
		}
	}
	stage('Test 9'){
		steps{
			sh 'echo "Running 9..."'
			sh 'chmod +x scripts/Linux-Run2.sh'
			sh 'scripts/Linux-Run2.sh'
		}
	}
	stage('Test 10'){
		steps{
			sh 'echo "Running 10..."'
			sh 'chmod +x scripts/Linux-Run3.sh'
			sh 'scripts/Linux-Run3.sh'
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