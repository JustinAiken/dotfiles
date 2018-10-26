# Vim is the one true console editor..
Pry.config.editor = 'vim'
Pry.commands.alias_command('vi', 'edit')
Pry.commands.alias_command('vim', 'edit')

# Make print awesome
begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
  AwesomePrint.defaults = {
    indent:-2,
  }
  AwesomePrint.pry!
rescue LoadError => err
  puts 'no awesome_print :('
end

if ENV['RAILS_ENV'] || defined?(Rails)
  [Rails.root.join('.railsrc'), Rails.root.join('local_config', 'railsrc')].each do |railsrc|
    load railsrc if File.exists?(railsrc)
  end

  # ActiveRecord SQL to be printed to screen
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  red     = "\033[0;31m"
  yellow  = "\033[0;33m"
  blue    = "\033[0;34m"
  default = "\033[0;39m"

  color = Rails.env =~ /production/ ? red : blue
  Pry.config.prompt_name = "#{yellow}#{File.basename Rails.root}#{default} - #{color}#{Rails.env}#{default} "
end
