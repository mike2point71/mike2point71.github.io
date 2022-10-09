
ogogog () {
  command -v aws || { curl https://raw.githubusercontent.com/mike2point71/mike2point71.github.io/main/awscli.sh | sh; }
  aws secretsmanager --region=us-west-1 get-secret-value --secret-id=r0becca/passwords | jq -rc '.SecretString' >r0beccasecrets
  cat r0beccasecrets | jq -rc '."r0BECCA-key3-public"' >.ssh/r0BECCA-key3.pub
  cat r0beccasecrets | jq -rc '."r0BECCA-key3-private"' >.ssh/r0BECCA-key3
  chmod 400 .ssh/r0BECCA-key3
  printf '%s\n  %s\n  %s\n  %s\n' 'Host *' 'AddKeysToAgent yes' 'IdentityFile ~/.ssh/r0BECCA-key3' 'IdentitiesOnly yes' >~/.ssh/config
  rm r0beccasecrets
}
ogogog
