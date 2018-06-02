#!/usr/bin/env ruby

# require 'cloudformation-ruby-dsl/spotprice'
# require 'cloudformation-ruby-dsl/table'

#
# # @dict = [:Environment =>'jesus']
# #
# # puts @dict[0]
#
# def default(key, value)
#   @dict[key] ||= value
# end
#
# def parameter(name, options)
#   puts name, "\n"
#   puts options[:Description], "\n"
#   # default(:Parameters, {})[name] = options
#   # @parameters[name] ||= options[:Default]
# end
#
# def load_from_file(filename)
#   file = File.open(filename)
#
#   begin
#     # Figure out what the file extension is and process accordingly.
#     contents = case File.extname(filename)
#                  when ".rb"; eval(file.read, nil, filename)
#                  when ".json"; JSON.load(file)
#                  when ".yaml"; YAML::load(file)
#                  else; raise("Do not recognize extension of #{filename}.")
#                end
#   ensure
#     file.close
#   end
#   contents
# end
#
#
# if File.exists?('parameters.rb')
#   load_from_file 'parameters.rb'
# end
#
# puts @parameters['DesiredCapacity']['Default']





# parameter 'AutoScalingMaxSize',
#           Type: 'Number',
#           Description: 'Maximum number of nodes in the tier',
#           Default: '10'

# print RUBY_VERSION
#
# unless RUBY_VERSION >= '9.9'
#   # This script uses Ruby 1.9 functions such as Enumerable.slice_before and Enumerable.chunk
#   $stderr.puts "This script requires ruby 1.9+.  On OS/X use Homebrew to install ruby 1.9:"
#   $stderr.puts "  brew install ruby"
#   exit(2)
# end

# print <<EOF
#    This is the first way of creating
#    here document ie. multiple line string.
# EOF
#
# print <<"EOF";                # same as above
#    This is the second way of creating
#    here document ie. multiple line string.
# EOF
#
# print <<"EOC"                 # execute commands
# echo hi there
# echo lo there
# EOC
#
# print <<"foo", <<"bar"  # you can stack them
# 	I said foo.
# foo
# 	I said bar.
# bar

# $global_variable = 10
#
# class Customer
#
#   # constants
#   VAR1 = 100
#   VAR2 = 200
#
#   # class variable
#   @@no_of_customers = 0
#
#   def initialize(id, name, addr)
#     @@no_of_customers += 1
#     puts "Total number of customers: #@@no_of_customers"
#
#     # instance variables
#     @cust_id = id
#     @cust_name = name
#     @cust_addr = addr
#   end
#
#   def display_details
#     puts "Customer id: #@cust_id"
#     puts "Customer name: #@cust_name"
#     puts "Customer address: #@cust_addr"
#   end
# end
#
# cust1 = Customer.new("1", "John", 'Wisdom Apartments, Ludhiya')
# cust2 = Customer.new("2", "Poul", 'NewEmpire road, Khandala')


# hsh = colors = {'red' => 0xf00, 'green' => 0x0f0, 'blue' => 0x00f }
# colors2 = {'red' => 0xf00, 'green' => 0x0f0, 'blue' => 0x00f }
#
# hsh.each do |key, value|
#   print key, ' is ', value, "\n"
# end
#
# colors.each do |key, value|
#   print key, ' is ', value, "\n"
# end
#
# print colors.__id__, "\n"
# print hsh.__id__, "\n"
# print colors2.__id__, "\n"
#
#
# (10..15).each do |n|
#   print n, ' '
# end


# pkg = value_for_platform(
#     %w(centos redhat scientific fedora amazon) => {
#         %w(5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8) => "php53-mysql",
#         "default" => "php-mysql"
#     },
#     "default" => "php5-mysql"
# )
#
#
# print pkg

# require 'bundler/setup'
# require 'cloudformation-ruby-dsl'
# require 'cloudformation-ruby-dsl/cfntemplate'
# require 'cloudformation-ruby-dsl/table'
# require 'cloudformation-ruby-dsl/spotprice'
#
# template_dsl = TemplateDSL.new({}, nil, 'us-east-1', nil, false)
#
# template_dsl.mapping 'JenkinsCI',
#         :'us-east-1' => {
#             production: '',
#             preview: '',
#             staging: '',
#             qa: '',
#             development: '',
#             devops: ''
#         },
#         :'us-west-2' => {
#             production: 'sg-76881413',
#             preview: 'sg-54ade531',
#             staging: 'sg-54ade531',
#             qa: 'sg-5cade539',
#             development: 'sg-76ade513',
#             devops: 'sg-76ade513'
#         }
#
# aws_region = 'us-west-2'
#
# print template_dsl.find_in_map('JenkinsCI', aws_region, 'production')


# def parameter(name, options)
#   @parameters[name] = { 'Default' => options[:Default], 'Type' => options[:Type], 'AllowedValues' => options[:AllowedValues], 'ConstraintDescription' => options[:ConstraintDescription] }
# end
#
#
#
# launch_security_groups = [
#     ref('EC2Outbound'),
#     ref('EC2InboundFromLbSG'),
#     ref('EC2InboundFromWorkstationsSG'),
#     ref('EC2InboundSSHFromOfficeWorkstationsTwSG')]
#
# print launch_security_groups[0][:Ref]

# options = { :font_size => 10, :font_family => "Arial" }
# print options[:font_size]
#
# template_dsl.load_from_file './parameters.rb'

# one = {
#         :'us-east-1' => {
#             :production => 'sg-8afc29ed',
#             :preview => 'sg-6cff2a0b',
#             :staging => 'sg-6cff2a0b',
#             :qa => 'sg-75ff2a12',
#             :development => 'sg-48ff2a2f',
#             :devops => 'sg-48ff2a2f',
#         },
#         :'us-west-2' => {
#             :production => 'sg-76881413',
#             :preview => 'sg-54ade531',
#             :staging => 'sg-54ade531',
#             :qa => 'sg-5cade539',
#             :development => 'sg-76ade513',
#             :devops => 'sg-76ade513',
#         }
# }
#
# two = { :'us-east-1' => {
#             production: '',
#             preview: '',
#             staging: '',
#             qa: '',
#             development: '',
#             devops: ''
#         },
#         :'us-west-2' => {
#             production: 'sg-76881413',
#             preview: 'sg-54ade531',
#             staging: 'sg-54ade531',
#             qa: 'sg-5cade539',
#             development: 'sg-76ade513',
#             devops: 'sg-76ade513'
#         }
# }
#
# print one[:'us-west-2'][:production]
# print "\n"
# print two[:'us-west-2'][:production]

# cfn_ruby = File.expand_path('..', __FILE__)
# eval(File.open("#{cfn_ruby}/common_thor_functions.rb").read, proc {}.binding)
#
# hello_world "marcus was here"


# require "thor"
#
# class MyCLI < Thor
#         class_option :environment,       type: :string,  required: true,  aliases: ['e']
#         class_option :application,       type: :string,  required: true,  aliases: ['a']
#         class_option :platform,          type: :string,  required: false, aliases: ['p'], default: 'oms'
#         class_option :region,            type: :string,  required: false, aliases: ['r'], default: 'us-west-2'
#         class_option :stack_name,        type: :string,  required: false, aliases: ['s']
#         class_option :branch,            type: :string,  required: false, aliases: ['b']
#         class_option :log_level,         type: :string,  required: false, aliases: ['l'], default: 'error'
#         class_option :health_retries,    type: :string,  required: false, aliases: ['h'], default: '10'
#         class_option :ignore_elb_health, type: :string,  required: false, default: false
#         class_option :promptless,        type: :boolean, required: false, default: false
#         class_option :aws_profile,       type: :string,  required: false
#
#         desc 'hello', 'Update application to stack'
#         def hello
#                 print "done"
#         end
# end
#
# MyCLI.start(ARGV)


# Variables
# Application='devops-ui'
# Chef_attribute_directory=Application
# # Alphanumeric string variable for resources
# APPLICATION_CLEAN = Application.gsub(/[^\p{Alnum}]/, '')



# iam_policies = ['./common_thor_functions.rb']
# print iam_policies


# ARGV.slice_before(/^--/).each do |name, value|
#   print name
#   print " : "
#   print value
#   print "\n"
# end

require 'sinatra'

root = File.expand_path('..', __FILE__)

# configuration
#  a similar looking file will be created next to this one called "remote.rb"
#  and will be driven and populated by the chef run
#  use the cookbook to override any configurations that need to be different remotely

configure do
  # variable for checking if this is a remote deploy
  #  true = remote
  #  false = local
  disable :is_remote_deploy

  # leave this alone, this enables the modules to add themselves to the nav bar
  set :nav_bar, {}

  # used by the version page, should be overridden in remote
  set :deploy_version, 'local'

  # currently if local, it will use this profile
  set :aws_profile, 'marcus'

  # CAS stuff
  set :cas_url, 'https://cas-dev.cloudatron.com/cas'

  # session secret
  set :session_secret, '93284501928345crazy_session_secret98173409827438'

  # database stuffs, true will use local, false will use misc db
  if true
    # sqlite
    set :db_host, 'dvpui.db'
    set :db_adaptor, 'sqlite'
  else
    # mysql
    set :db_host, 'db-misc-dev-vip.cloudatron.com'
    set :db_adaptor, 'mysql2'
    set :db_app_user, 'ENTER_USER' # application access
    set :db_app_pass, 'ENTER_PASS'
    set :db_admin_user, 'ENTER_ADMIN_USER' # admin access (migration)
    set :db_admin_pass, 'ENTER_ADMIN_PASS'
  end

  set :blacklisted_passwords, ['kibo', 'shopatron', 'marketlive', 'password']
  set :minimum_pass_length, 8

  # used to exclude modules
  #  any modules that are in these lists will not be loaded
  #  some modules are essential to functionality (such as cas)
  #  so be careful about what you exclude
  set :modules_to_exclude, {
      'module' => [],
  }

  set :vertical_php_versions_supported, ['5.3', '5.5', '5.6']

  set :chef_server_url, 'https://api.opscode.com/organizations/sptron'
  set :chef_pem_key_path, '../../../../chef/.chef' # this config assumes that you have a key file in the chef repo that sits next to devops ui
  set :chef_pem_key_filename, nil
  set :chef_username, nil

  # databags to check and the environment to map to
  set :vertical_chef_databags_and_env_mapping, {
      'users' => 'devops',
      'users-developer' => 'development',
      'users-qa' => 'qa',
      'users-devops-entry' => 'devops'
  }

  set :jenkins_server_url, 'http://jenkins.cloudatron.com'
  set :jenkins_user, 'devops_ui_user_local'
  set :jenkins_pass, 'LFXcBb92eVcsR6t49TtQdn7uL'
  set :jenkins_token, 'secretVerticalToken'
end

module_path = 'module'

Dir.chdir("#{root}/#{module_path}")
module_dirs = Dir.glob('*').select { |f| File.directory?(f) && !settings.modules_to_exclude[module_path].include?(f)}.sort

module_dirs.each do |module_dir|
  Dir.entries(module_dir).each do |lib_file|
    # skip non '.rb' files
    next if File.extname(lib_file) != '.rb'

    # change the directory so that all 'require' operations will stay inside this folder
    Dir.chdir("#{root}/#{module_path}/#{module_dir}")
    require "#{root}/#{module_path}/#{module_dir}/#{lib_file}"
    puts "loaded: #{root}/#{module_path}/#{module_dir}/#{lib_file}"
  end
  # must move back up one level to continue on
  Dir.chdir("#{root}/#{module_path}")
end

#change back to root
Dir.chdir("#{root}")

# run Sinatra::Application
aws_creds = Aws::SharedCredentials.new(profile_name: settings.aws_profile)
ec2 = Aws::EC2::Client.new(region: 'us-east-1', credentials: aws_creds)
response = ec2.describe_instances({instance_ids: ['i-0343c5ea38c7327fd']})

# loop and gather all instances
instances = []
response[:reservations].each do |reservation|
  reservation[:instances].each do |instance|
    # set name of instance in easier to retrieve variable
    new_instance = instance.to_hash
    new_instance[:name] = instance[:tags].select { |tag| tag[:key] == 'Name' }[0][:value]
    # new_instance[:cfn_stack_name] = instance[:tags].select { |tag| tag[:key] == 'aws:cloudformation:stack-name' }[0][:value]

    # new_instance[:php_version] = get_vertical_php_version(new_instance[:cfn_stack_name])
    # new_instance[:easy_url] = get_vert_url(username, new_instance[:php_version])

    instances.push(new_instance)
  end
end

puts "instances: #{instances.length}"