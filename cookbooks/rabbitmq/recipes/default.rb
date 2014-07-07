if node[:instance_role] =~ /^app/
  package "net-misc/rabbitmq-server" do
    action :install
  end

  service "rabbitmq" do
    supports :status => true, :stop => true, :restart => true, :staus => true
    action :restart
  end
end

