set :application, 'isucon_app'
set :scm, :git
set :repo_url, 'git@github.com:t11a/isucon_app.git'
set :deploy_to, '/home/ec2-user/isucon_app'
set :branch, 'master'

set :log_level, :info

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/assets}

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/vagrant.pem')],
  forward_agent: true,
  auth_methods: %w(publickey)
}

namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
after 'deploy:publishing', 'deploy:restart'
