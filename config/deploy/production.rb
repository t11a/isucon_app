set :stage, :production
set :rails_env, 'production'
set :migration_role, 'db'

server '54.178.24.136', user: 'ec2-user', roles: %w{web app db}