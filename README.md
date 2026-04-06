# fedora-ansible

Automacao de provisionamento para Fedora Workstation com Ansible, focada em uso local e organizacao por roles.


## Como funciona

- O inventário roda em localhost.
- O playbook [playbooks/install.yml](playbooks/install.yml) executa as roles em sequência.
- Variáveis por máquina/ambiente ficam em `envs/nome-da-maquina.yml`.

## Pré-requisitos

- Python 3
- Ansible
- Permissão de sudo

## Instalar dependencias do Ansible

```bash
ansible-galaxy collection install -r requirements.yml
```

## Execução

### Provisionamento completo

```bash
ansible-playbook playbooks/install.yml -e @envs/nome-da-maquina.yml
```
### Executar apenas partes (tags)

As tags estão definidas em [playbooks/install.yml](playbooks/install.yml).

```bash
# Executa apenas a role de packages
ansible-playbook playbooks/install.yml -e @envs/thinkpad-l14.yml -K --tags packages
```


## Variáveis de ambiente

Os arquivos em [envs/](envs/) sobrescrevem defaults e personalizam o host.
