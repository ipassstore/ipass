# ipassstore

Source code of ipassstore site.

The project is based on Rails 3.2.14 and Ruby 1.9.2, and it requires the following components:

- Mysql for database. (Only in production environment for now)
- Memcached for caching. (Not required right now)
- Redis && Sidekiq for delay jobs. (Not required right now)


## Installation

Before you clone the project, make sure you have your local environment configured. Please see the following reference

* Ubuntu user, please reference this:
[Install Rails on ubuntu-12-04-server](http://ruby-china.org/wiki/install-rails-on-ubuntu-12-04-server)
* Mac OS user, please refercen this: [Mac OS setup](http://ruby-china.org/wiki/mac-nginx-passenger-rails)

When you have Ruby and rvm configured, clone the repo

	  $ git clone https://github.com/ipassstore/ipass ipassstore
   	  $ cd ipassstore
      $ bundle install
      $ rake db:migrate
      $ rails s

