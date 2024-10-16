node() {
  checkout scm
  sh "ls -lart"
  sh "docker build --no-cache -t python-build ."
}
