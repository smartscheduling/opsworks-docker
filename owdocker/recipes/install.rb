execute "install docker" do
  command 'wget -qO- https://get.docker.com/ | sh'
end

service "docker" do
  action :start
end
