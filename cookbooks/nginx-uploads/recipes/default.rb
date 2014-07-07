if node[:instance_role] =~ /^app/ || node[:instance_role] == 'solo'
  remote_file "/etc/nginx/servers/netfoxonline/keep.upload.location" do
    source "upload.location.conf"
    owner "deploy"
    group "deploy"
    mode 0755
  end

  directory '/mnt/temp_uploads/' do
    owner 'deploy'
    group 'deploy'
    mode  '0755'
    action :create
    recursive true
  end
end
