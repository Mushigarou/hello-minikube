Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu_24_server"

    config.vm.provider "virtualbox" do |v|
        v.memory = 6144
        v.cpus = 2
    end


    config.vm.define "app" do |app|
        app.vm.synced_folder "./app", "/home/vagrant/app", create: true

        app.vm.network "forwarded_port", guest: 37971,  host: 37971
        
        app.vm.provision "shell", name: "kubectl-installation", path: "./scripts/install-kubectl.sh"
        app.vm.provision "shell", name: "minikube-installation", path: "./scripts/install-minikube.sh"
    end

end