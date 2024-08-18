# my-rpi-ansible

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
