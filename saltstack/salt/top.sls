base:
  '*':
    - core
    - users
  'web*.saltdemo.com':
  	- apache2
  	- php5
  'db.saltdemo.com':
  	- mysql
  'lb.saltdemo.com':
  	- nginx
  
