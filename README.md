salt-demo
=========

Salt Demo using Vagrant &amp; AWS

Here are the quick and dirty steps to getting up and running:

- You must have vagrant 1.2+ and vagrant-aws 0.2.2+ installed
- You must have an AWS account setup
- Setup the AWS Keys, yada-yada, I'll add more later
- Make sure whichever AWS zone you use has SSH open
- copy prefs.example.rb to prefs.rb and add your credentials
- run: vagrant up --provider=aws --no-provision
- When finished, run bin/buildHostsFiles.py
- run: vagrant provision
- login into the master via: vagrant ssh master
- Go ahead and accept the salt-keys: "salt-keys -A"
- Test with a: salt '*' test.ping

The initial deploy and provisioning can take 10-20 minutes depending on how quick amazon goes.