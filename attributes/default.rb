default['aerospike']['version'] = '3.5.4'

case node['platform']
when 'ubuntu'
  default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/ubuntu12'
when 'debian'
  case node['platform_version']
  when '6'
    default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/debian6'
  when '7'
    default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/debian7'
  end
when 'centos', 'redhat', 'scientific', 'amazon', 'suse'
  default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/el6'
else
  default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/tgz'
end

default['aerospike']['base_name'] = 'aerospike-'
default['aerospike']['artifact_type'] = 'tgz'
