require 'rake'

desc "install the dotfiles into user's home directory"
task :install do
  system 'git submodule init && git submodule update'

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

  # Change shell to zsh
  system 'chsh -s /bin/zsh' unless ENV['SHELL'] =~ /\/zsh$/
end

desc "uninstall the dotfiles from the user's home directory"
task :uninstall do
  puts "You are about to obliterate your dotfiles."
  print "Are you sure you wish to continue? [yN] "
  exit unless STDIN.gets.chomp.downcase == 'y'

  print "remove oh-my-zsh? [yN] "
  uninstall_oh_my_zsh = false unless STDIN.gets.chomp.downcase == 'y'

  Dir['*'].each do |file|
    local_file_path = File.join(ENV['HOME'], ".#{file}")

    next if %w[Rakefile README.md LICENSE].include? file
    next if file == "oh-my-zsh" && uninstall_oh_my_zsh
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
