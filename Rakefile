require "fileutils"

desc "Put the .vimrc and .gvimrc into your homefolder."
task :place_vim_config do
  home_dir = File.expand_path("~")

  ["vimrc", "gvimrc"].each do |f|
    file_path_from  = File.dirname(__FILE__) + "/#{f}"
    file_path_to    = "#{home_dir}/.#{f}"

    print "Creating symlink for #{f} into #{home_dir}: "
    FileUtils.ln_s file_path_from, file_path_to
    print "done\n"
  end

  puts ''
  puts '= Important '.ljust 80, '='
  puts 'This vim setup uses powerline with fancy symbols. You should use the'
  puts 'monaco_for_powerline.otf font which can be found in the fonts folder.'
  puts '=' * 80
end


