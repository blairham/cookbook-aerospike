default['aerospike']['version'] = '3.5.4'

case node['platform']
when 'ubuntu'
  default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/ubuntu12'
  default['aerospike']['checksum'] = '12f461810d58dba97d0a44e588275152af288716e5bff64b4aaa631220c94033'
when 'debian'
  case node['platform_version']
  when '6'
    default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/debian6'
    default['aerospike']['checksum'] = '006b3e3293256231808423f80111bd0ed50518b13ff2ec072d29ba10fad249c8'
  when '7'
    default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/debian7'
    default['aerospike']['checksum'] = '80c23ea858278419297c51d8fd924ac64d7b62684b24334440c16725ba856e45'
  end
when 'centos', 'redhat', 'scientific', 'amazon', 'suse'
  default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/el6'
  default['aerospike']['checksum'] = 'f2da01a29a09b289575f6e06f2adf8a0ae2db8209a1a7749042d009b612bb302'
else
  default['aerospike']['tarball_url'] = 'http://aerospike.com/download/server/latest/artifact/tgz'
  default['aerospike']['checksum'] = '1d24750ce91d9e92d7f08fbe9b7c4a1dab80fea53cd3116a8a7e2d8e1f3d4000'
end

default['aerospike']['base_name'] = 'aerospike-'
default['aerospike']['artifact_type'] = 'tgz'
