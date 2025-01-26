<h2 align=center>Privasea Privanetix Node</h2>

## Minimum System Requirements

| **Component**             | **Requirement**                     |
|---------------------------|-------------------------------------|
| **Operating System (OS)** | Ubuntu (Recommended)                |
| **CPU Architecture**      | amd64 (x86 architecture)            |
| **Storage**               | 100GB available storage             |
| **Memory (RAM)**          | 4GB RAM                             |
| **Processor**             | 6 cores                             |

1) Past Command in Your VPS/WSL/Ubuntu
```
source <(wget -O - Git SH Link)
```

Get Your Address & Copy
cd privasea/config
sudo cat wallet_keystore

- Now visit this [Privanetix Dashboard](https://deepsea-beta.privasea.ai/privanetixNode)
- Connect a wallet where you will recieve reward and then give the node any name, set up commission (I will use 1%), and then enter the `node address` you note down in above step and then click on **Set up my node** option
- Now run the below command to start your `Privasea Privanetix Node`, Make sure to replace **ENTER_YOUR_KEYSTORE_PASSWORD** with your **Keystore Password**, you provided in the above steps
```
KEYSTORE_PASSWORD=ENTER_YOUR_KEYSTORE_PASSWORD && docker run -d --name privanetix-node -v "$HOME/privasea/config:/app/config" -e KEYSTORE_PASSWORD=$KEYSTORE_PASSWORD privasea/acceleration-node-beta:latest
```

- Now follow the guide from **Step 3 (Manage my Privanetix node)** from [this docs](https://www.privasea.ai/privanetix-node)
