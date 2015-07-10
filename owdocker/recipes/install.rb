bash "install docker" do
  code <<-EOF
    sudo apt-get update
    sudo apt-get -y install linux-image-extra-$(uname -r)
    sudo sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"
    sudo sh -c "echo deb https://get.docker.io/ubuntu docker main\ > /etc/apt/sources.list.d/docker.list"
    sudo apt-get update
    sudo apt-get -y install lxc-docker
  EOF
end

service "docker" do
  action :start
end
