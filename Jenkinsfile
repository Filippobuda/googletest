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
	stage('Docker'){
		steps{
			sh 'sudo -S docker build -t sweng/googletest .'
		}
	}
}
}