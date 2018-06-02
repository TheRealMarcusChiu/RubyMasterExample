# require 'json'
#
# data = JSON.parse '{"tags": ["hello"]}'
#
# print data["tags"][0]


# AWSCLIENTS = {};
# AWSCLIENTS[:dynamo] = "hello"
#
# puts AWSCLIENTS[:'dynamo']


# member2 = %w{ solr-shopatron }
# jesus = false if member2.member?('solr-shopatron')
#
# puts jesus

# packages = %w(gd)
# extra_packages = %w(jesus)
#
# all_packages = packages | extra_packages
#
# puts all_packages
# packages.map{ |pkg| 'php56w-'.concat pkg}.push('php56w').each do |pkg|
#
#   puts pkg
#
# end

# APPLICATION = 'common-notifications-router'
# puts APPLICATION.gsub(/[^\p{Alnum}]/, '')

# module NewRelic
#   def self.license(node)
#     node['newrelic'] && node['newrelic']['license']
#   end
#
#   def self.server_monitoring_license(node)
#     node['newrelic'] && node['newrelic']['server_monitoring'] && node['newrelic']['server_monitoring']['license'] || license(node)
#   end
#
#   def self.application_monitoring_license(node)
#     node['newrelic'] && node['newrelic']['application_monitoring'] && node['newrelic']['application_monitoring']['license'] || license(node)
#   end
#
#   def self.to_boolean(variable)
#     if variable.is_a?(TrueClass) || variable.is_a?(FalseClass)
#       variable
#     else
#       variable == 'true' || variable == 1
#     end
#   end
# end
#
# node = {}
#
# temp = node['newrelic']
# puts "temp = #{temp}"
require 'rubygems'
require 'net/dns'

# 10.133.0.2
res = Net::DNS::Resolver.new(nameservers: ['10.129.0.2'].shuffle, use_tcp: true ) #log_file: '/dev/null' )  Use this to stop the warning email noise

urltest = 'google.com'

begin
  retries ||= 0
  dns_values = res.query(urltest).answer
  if dns_values.empty? || dns_values.nil?
    raise "dns response was empty!"
  end
rescue => error
  retry if (retries += 1) < 2
  raise "An error occurred attempting to resolve #{urltest} - #{error}"
end

a_records = []
dns_values.each do |value|
  puts "#{value.value}"
  a_records.push(value.value) if value.type == 'A'
end

