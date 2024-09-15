# my-rpi-ansible

## Setup repository
1. Clone the projet (With the vault submodule)
3. Set vault.key in vault submodule
```bash
$ git clone --recurse-submodules git@github.com:Dominique57/my-rpi-ansible.git
$ mv .../vault.key my-rpi-ansible/vault/vault.key
```

## Dependencies

- python3
  - ansible

## Execution

### Env variables

Check `.env.example` for variables to define
Load your own .env using 
```bash
$ set -o allexport
$ source .env
$ set +o allexport
```

### Connection check

```bash
$ ansible myhosts -m ping -i inventory.yml
```

### Execute playbook

```bash
$ ansible-playbook -i inventory.yml site.yml
```
