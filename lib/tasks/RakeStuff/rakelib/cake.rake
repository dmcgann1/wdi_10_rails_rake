namespace :cake  do
  desc "Bake a cake"
  # This bake task depends on the mix_up and go_to_store tasks. These must be
  # run before the action is run
  task :bake => [:mix_up, :go_to_store] do
    puts "Cake is baked"
  end

  desc "Mixing up ingredients"
  task :mix_up => [:add_flour, :add_eggs] do
    puts "Mix up ingredients"
  end

  task :add_flour => :get_flour do
    puts "adding flour"
  end

  task :get_flour => :go_to_store do
    puts "Got flour"
  end

  task :add_eggs => :go_to_store do
    puts "adding eggs"
  end

  task :go_to_store do
    puts "Gone to Store"
  end
end
