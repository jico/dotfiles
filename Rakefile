require 'rake'

desc "install the dotfiles into user's home directory"
task :install do
  system 'git submodule init && git submodule update --init'
  install_oh_my_zsh

  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.md LICENSE].include? file

    local_file_path = File.join(ENV['HOME'], ".#{file}")
    if File.exist?(local_file_path)
      if File.identical? file, local_file_path
        puts "identical ~/.#{file}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end
end

desc "uninstall the dotfiles from the user's home directory"
task :uninstall do
  puts "You are about to obliterate your dotfiles."
  print "Are you sure you wish to continue? [yN] "
  exit unless STDIN.gets.chomp.downcase == 'y'

  print "uninstall oh-my-zsh? [yN] "
  uninstall_oh_my_zsh if STDIN.gets.chomp.downcase == 'y'

  Dir['*'].each do |file|
    local_file_path = File.join(ENV['HOME'], ".#{file}")

    next if %w[Rakefile README.md LICENSE].include? file
    if File.exist?(local_file_path)
      puts "unlinking ~/.#{file}"
      system %Q{rm -rf "#{local_file_path}"}
    end
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

def install_oh_my_zsh
  system 'git clone git://github.com/jico/oh-my-zsh.git ~/.oh-my-zsh'
  system 'chsh -s /bin/zsh' unless ENV['SHELL'] =~ /\/zsh$/
end

def uninstall_oh_my_zsh
  system %Q{rm -rf "$HOME/.oh-my-zsh"}
end
