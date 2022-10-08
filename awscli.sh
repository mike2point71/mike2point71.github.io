
ogogog () {
  command -v curl || { echo "Need curl"; exit 1; }
  command -v unzip || sudo apt install unzip
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  sudo ./aws/install
 }
 ogogog
