[English](#english) | [Português](#português)

---

# English

# Monitoring Stack

## Purpose

Define the initial monitoring and observability stack implemented in Project Kaizen Homelab.

This document records the operational foundation created during Sprint 4.

---

## Architecture Overview

The monitoring stack follows this architecture:

```text
Ubuntu Server LTS
        |
        |
     Docker
        |
        |
Monitoring Network
        |
        +----------------+
        |                |
        |                |
 Prometheus       Node Exporter
        |
        |
     Grafana
```

---

## Components

## Prometheus

### Purpose

- Collect infrastructure metrics.
- Store monitoring data.
- Provide the query engine for observability.

Configuration:

```text
infrastructure/monitoring/prometheus/prometheus.yml
```

Service:

```text
http://prometheus:9090
```

---

## Node Exporter

### Purpose

- Export Linux host metrics.
- Provide system-level information for monitoring.

Collected metrics:

- CPU usage;
- Memory usage;
- Filesystem information;
- Network statistics;
- System uptime.

Service:

```text
node-exporter:9100
```

---

## Grafana

### Purpose

- Provide dashboards and visualization.
- Consume metrics collected by Prometheus.

Datasource:

```text
Prometheus
```

Dashboard:

```text
Node Exporter Full
```

Access:

```text
http://homelab-ip:3000
```

---

## Docker Implementation

The monitoring environment was deployed using Docker Compose.

Location:

```text
infrastructure/monitoring/
```

Structure:

```text
monitoring/
├── docker-compose.yml
├── prometheus/
│   └── prometheus.yml
└── grafana/
```

Dedicated Docker network:

```text
monitoring
```

---

## Validation

The monitoring stack was validated through:

- Docker container verification;
- Prometheus health endpoint;
- Prometheus target validation;
- Node Exporter metrics endpoint;
- Grafana datasource connection;
- Dashboard visualization.

---

## Operational Notes

Reliable monitoring requires correct system time synchronization.

During implementation, a clock synchronization issue was identified and resolved using Chrony NTP service.

Reference:

`time-synchronization.md`

---

## Current Status

Monitoring foundation completed.

Implemented services:

- Prometheus;
- Node Exporter;
- Grafana.

Future improvements:

- Custom Project Kaizen dashboards;
- Alert management;
- Additional infrastructure metrics.

---

# Português

# Stack de Monitoramento

## Objetivo

Definir a stack inicial de monitoramento e observabilidade implementada no Project Kaizen Homelab.

Este documento registra a fundação operacional criada durante a Sprint 4.

---

## Visão Geral da Arquitetura

A stack de monitoramento segue esta arquitetura:

```text
Ubuntu Server LTS
        |
        |
     Docker
        |
        |
Rede Monitoring
        |
        +----------------+
        |                |
        |                |
 Prometheus       Node Exporter
        |
        |
     Grafana
```

---

## Componentes

## Prometheus

### Objetivo

- Coletar métricas da infraestrutura.
- Armazenar dados de monitoramento.
- Fornecer mecanismo de consulta para observabilidade.

Configuração:

```text
infrastructure/monitoring/prometheus/prometheus.yml
```

Serviço:

```text
http://prometheus:9090
```

---

## Node Exporter

### Objetivo

- Exportar métricas do host Linux.
- Fornecer informações do sistema para monitoramento.

Métricas coletadas:

- uso de CPU;
- memória;
- sistema de arquivos;
- estatísticas de rede;
- tempo de atividade do sistema.

Serviço:

```text
node-exporter:9100
```

---

## Grafana

### Objetivo

- Fornecer dashboards e visualizações.
- Consumir métricas coletadas pelo Prometheus.

Datasource:

```text
Prometheus
```

Dashboard:

```text
Node Exporter Full
```

Acesso:

```text
http://ip-do-homelab:3000
```

---

## Implementação Docker

O ambiente de monitoramento foi implantado utilizando Docker Compose.

Localização:

```text
infrastructure/monitoring/
```

Estrutura:

```text
monitoring/
├── docker-compose.yml
├── prometheus/
│   └── prometheus.yml
└── grafana/
```

Rede Docker dedicada:

```text
monitoring
```

---

## Validação

A stack de monitoramento foi validada através de:

- verificação dos containers Docker;
- endpoint de saúde do Prometheus;
- validação dos targets do Prometheus;
- endpoint de métricas do Node Exporter;
- conexão do datasource Grafana;
- visualização do dashboard.

---

## Notas Operacionais

Um monitoramento confiável depende da sincronização correta do horário do sistema.

Durante a implementação, foi identificado e corrigido um problema de sincronização utilizando o serviço Chrony NTP.

Referência:

`time-synchronization.md`

---

## Status Atual

Fundação de monitoramento concluída.

Serviços implementados:

- Prometheus;
- Node Exporter;
- Grafana.

Melhorias futuras:

- Dashboards próprios do Project Kaizen;
- Gerenciamento de alertas;
- Métricas adicionais da infraestrutura.
