# my-rpi-ansible

## Requirements
- ansible-dedicated **sudoer** user to login into (defined in vault)
  - ex: ansible-admin
  ```bash
  sudo useradd -m ansible-admin
  sudo passwd ansible-admin
  > # type and confirm password
  sudo usermod -a -G sudo ansible-admin # debian-based use `sudo` group
  ```

## Setup repository
1. Clone the projet (With the vault submodule)
1. Set vault.key in vault submodule

```bash
$ git clone --recurse-submodules git@github.com:Dominique57/my-rpi-ansible.git
$ mv .../vault.key my-rpi-ansible/vault/vault.key
```

## Dependencies

- python3
  - ansible

## Execution

### Vault

Ensure the vault submodule has correctly been cloned and can be decoded.

### Connection check

```bash
$ ansible myhosts -m ping -i inventory.yml
```

### Execute playbook

```bash
$ ansible-playbook -i inventory.yml site.yml
```
