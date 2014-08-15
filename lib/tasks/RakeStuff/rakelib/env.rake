namespace :rake_demo do
  desc 'Show the Unix Environment Variables'
  task :show_env do
    # Action
    # sh means a shell command meaning that by passing sh I can run a Unix command
    sh 'env'
  end

  task :my_ls do
    sh 'ls -F'
  end

  task :show_rails_env do
    sh "The RAILS_ENV = #{ENV['RAILS_ENV']}"
  end
end
