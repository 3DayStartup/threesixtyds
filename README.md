# 360DS API

## Getting Started

### Set up your local db

install postgresql
    
    brew install postgresql

start postgres

    pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

install gems

    bundle install

create your local db

    rake db:create
    rake db:migrate
    
you can open a db console w/ 

    rails dbconsole

start the server

    foreman start

