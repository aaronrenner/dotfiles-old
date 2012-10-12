require 'rake'

desc 'install dot files into home directory'
task :install do
  %w(vimrc vim).each do | file |
    link_file file 
  end
end


def link_file(file)
  target_file = File.join(ENV['HOME'],".#{file}")
  source_file = File.join(File.dirname(__FILE__), file) 

  unless File.exists?(target_file)
    puts "linking #{target_file}"
    system %Q{ln -s "#{source_file}" "#{target_file}"}
  end
end
