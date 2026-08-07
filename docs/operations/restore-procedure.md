[English](#english) | [Português](#português)

# English

# Restore Procedure

## Purpose

Define the initial recovery procedure for Project Kaizen Homelab configuration backup.

## Restore Source

The restore process uses:

```text
backup-config-YYYY-MM-DD_HH-MM-SS.tar.gz
```

## Restore Steps

### 1. Create Restore Directory

```bash
mkdir restore-test
```

### 2. Extract Backup Archive

```bash
tar -xzf backup-config-archive.tar.gz -C restore-test
```

### 3. Validate Recovered Files

Expected components:

- System configuration;
- Docker metadata;
- Portainer information;
- Samba configuration.

## Validation

A restore test was successfully performed during Sprint 3.

The restored files matched the original backup structure.

## Recovery Principle

The current backup strategy prioritizes configuration recovery.

Application data and additional services will be incorporated as the homelab evolves.

---

# Português

# Procedimento de Restauração

## Objetivo

Definir o procedimento inicial de recuperação do backup de configuração do Project Kaizen Homelab.

## Origem da Restauração

O processo utiliza:

```text
backup-config-YYYY-MM-DD_HH-MM-SS.tar.gz
```

## Etapas de Restauração

### 1. Criar Diretório de Restauração

```bash
mkdir restore-test
```

### 2. Extrair o Arquivo de Backup

```bash
tar -xzf backup-config-archive.tar.gz -C restore-test
```

### 3. Validar Arquivos Recuperados

Componentes esperados:

- Configuração do sistema;
- Metadados Docker;
- Informações do Portainer;
- Configuração Samba.

## Validação

Um teste de restauração foi realizado com sucesso durante a Sprint 3.

Os arquivos restaurados corresponderam à estrutura original do backup.

## Princípio de Recuperação

A estratégia atual de backup prioriza recuperação de configurações.

Dados de aplicação e serviços adicionais serão incorporados conforme a evolução do homelab.
