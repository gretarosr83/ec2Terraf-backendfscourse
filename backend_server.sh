
    #!/bin/bash
  
      #UBUNTU Server
          sudo apt-get update -y

        # Install git 
          sudo apt install git

        # Install nvm: 
          sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash. 

        # Load nvm: 
            source ~/.bashrc. 
        # Install Node.js: (for the latest LTS version) or nvm install <version> (for a specific version). 
            sudo nvm install --lts 
    
        # Install node js
          nvm install  node  
                   
        # Install npm pm2 
          sudo npm install -g pm2

        # Clone github repository
          sudo git clone https://github.com/gretarosr83/e_commerce_app_backend.git /home/ec2-user/backend-app
          cd /home/ec2-user/backend-app
          npm install   
          pm2 start index.js --name "backend-fscourse"  
          pm2 save  
          pm2 startup systemd

 