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
			sh 'cd src/build'
			sh './exec'
		}
	}
	stage('Test 9'){
		steps{
			sh 'echo "Running 9..."'ù
			sh 'cd src/build'
			sh './exec2'

		}
	}
	stage('Test 10'){
		steps{
			sh 'echo "Running 10..."'
			sh 'cd src/build'
			sh './exec3'
		}
	}
	stage('Run main'){
		steps{
			sh 'echo "Running main...'
			sh 'cd src/build'
			sh './main'		
		}
	}
	stage('Build Docker'){
		steps{
			script{
				sh 'docker build -t filobuda/googletest .'
			}
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