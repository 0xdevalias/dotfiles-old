# Generate SSH keyfiles
* **Command:** `ssh-keygen -r rsa -b 4096`
* Enter file to save the key (can name it here)
* Enter passphrase (recommended)
* Confirm passphrase

# Add public key to server
* Copy the public key
  * Eg. (OSX) `cat ~/.ssh/my_key_rsa.pub|pbcopy`
* SSH/connect to your server.
* Edit ~/.ssh/authorized_keys2
  * Eg. `vi ~/.ssh/authorized_keys2`
* Paste the contents of the public key into the file

# Create easy SSH aliases
* **File:** ~/.ssh/config
* **Purpose:** Add 'easy names' for each host
------------------
COPY BELOW HERE
------------------
    Host easy-name
    Hostname full.server.name.net
    User my-username
    IdentityFile ~/.ssh/my_private_key_rsa
------------------
COPY ABOVE HERE
------------------