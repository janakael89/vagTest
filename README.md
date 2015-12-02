# EL89 Dev test


## Pre-requests
1. Vagrant [download](https://www.vagrantup.com/downloads.html)
2. Hypervisor (virtual box recommended) [download](https://www.virtualbox.org)
3. Compser [download](https://getcomposer.org/download/)
4. Git [download](https://git-scm.com/downloads)

## Installation Instructions

1. Clone the repo.
2. Run composer install under example.com directory.
3. Copy .env.example to .env
4. Generate app key by executing following command. `php artisan key:generate`
5. Run `vagrant up` under root folder (where Vagrantfile file resides).
6. Add  `127.0.0.1 example.com` to host file.
7. Access example.com in your favourite web browser.


