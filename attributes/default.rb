# flink-0.4-hadoop2.tgz
# flink-dist-0.4-hadoop2-yarn-uberjar.jar

include_attribute "kagent"
include_attribute "hadoop"


default[:flink][:user]                             = "flink"
default[:flink][:group]                            = node[:hadoop][:group]

#default[:flink][:version]                          = "0.9.0-incubating-bin-hadoop2-yarn" 
default[:flink][:version]                          = "0.8.1" 
#default[:flink][:name]                             = "yarn-0.9.0-incubating" 
default[:flink][:dir] 	                           = "/srv"
default[:flink][:home]                             = "#{default[:flink][:dir]}/flink-#{node[:flink][:version]}"
default[:flink][:url]                              = "http://apache.mirrors.spacedump.net/flink/flink-#{node[:flink][:version]}/#{node[:flink][:version]}-bin-hadoop2.tgz"
default[:flink][:checksum]                         = ""
#default[:flink][:url]                              = "#{node[:download_url]}/flink-#{node[:flink][:version]}.tgz"

default[:flink][:jobmanager][:rpc_addr]            = '10.0.2.15'
default[:flink][:jobmanager][:rpc_port]            = 6123
default[:flink][:jobmanager][:web_port]            = 8081
default[:flink][:jobmanager][:heap_mbs]            = 256
default[:flink][:taskmanager][:heap_mbs]           = 512
default[:flink][:taskmanager][:num_taskslots]      = -1
default[:flink][:parallelization][:degree]         = 1
default[:flink][:webclient][:port]                 = 8080
default[:flink][:taskmanager][:network_num_buffers]= 2048

default[:flink][:jobmanager][:public_ips]          = ['10.0.2.15']
default[:flink][:jobmanager][:private_ips]         = ['10.0.2.15']
default[:flink][:taskmanager][:public_ips]         = ['10.0.2.15']
default[:flink][:taskmanager][:private_ips]        = ['10.0.2.15']
