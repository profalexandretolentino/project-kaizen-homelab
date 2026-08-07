[English](#english) | [Português](#português)

# English

# Backup Strategy

## Purpose

Define the initial backup strategy for Project Kaizen Homelab.

This strategy protects critical configuration data required to rebuild and recover the environment.

## Backup Scope

The current backup includes:

- Ubuntu Server installation configuration;
- Docker environment information;
- Portainer metadata;
- Samba configuration.

## Backup Structure

```text
backup-config/
├── system/
│   └── 00-installer-config.yaml
├── docker/
│   ├── docker-containers.txt
│   ├── portainer-inspect.json
│   └── portainer-volume.json
├── samba/
│   └── smb.conf.factory
├── backup-info.txt
└── backup-manifest.txt
```

## Backup Process

The backup process follows:

1. Collect critical configuration files.
2. Generate backup metadata.
3. Generate file manifest.
4. Create compressed backup archive.
5. Validate backup integrity.

## Current Implementation

The automation is provided by:

```text
scripts/backup-config.sh
```

## Current Status

- Configuration backup implemented.
- Restore test validated.
- Backup automation foundation completed.

---

# Português

# Estratégia de Backup

## Objetivo

Definir a estratégia inicial de backup do Project Kaizen Homelab.

Esta estratégia protege dados críticos de configuração necessários para reconstruir e recuperar o ambiente.

## Escopo do Backup

O backup atual inclui:

- configuração de instalação do Ubuntu Server;
- informações do ambiente Docker;
- metadados do Portainer;
- configuração do Samba.

## Estrutura do Backup

```text
backup-config/
├── system/
│   └── 00-installer-config.yaml
├── docker/
│   ├── docker-containers.txt
│   ├── portainer-inspect.json
│   └── portainer-volume.json
├── samba/
│   └── smb.conf.factory
├── backup-info.txt
└── backup-manifest.txt
```

## Processo de Backup

O processo segue:

1. Coleta dos arquivos críticos de configuração.
2. Geração dos metadados do backup.
3. Geração do manifesto dos arquivos.
4. Criação do arquivo compactado.
5. Validação da integridade do backup.

## Implementação Atual

A automação é fornecida por:

```text
scripts/backup-config.sh
```

## Status Atual

- Backup de configuração implementado.
- Teste de restauração validado.
- Base de automação concluída.
