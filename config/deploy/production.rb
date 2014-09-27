set :stage, :production
set :branch, 'master'
set :rails_env, 'production'
set :migration_role, 'db'

server '54.168.179.40', user: 'ec2-user', roles: %w{web app db}