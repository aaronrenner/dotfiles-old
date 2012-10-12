require 'rake'

desc 'install dot files into home directory'
task :install do
  link_file "vimrc"
end


def link_file(file)
  target_file = File.join(ENV['HOME'],".#{file}")
  source_file = File.join(File.dirname(__FILE__), file) 

  unless File.exists?(target_file)
    puts "linking #{target_file}"
    system %Q{ln -s "#{target_file}" "#{source_file}"}
  end
end
