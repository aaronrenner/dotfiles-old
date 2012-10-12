require 'rake'

desc 'install dot files into home directory'
task :install do
  link_file "vimrc"
end


def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
