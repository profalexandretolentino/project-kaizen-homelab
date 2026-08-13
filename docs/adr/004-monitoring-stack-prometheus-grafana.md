[English](#english) | [Português](#português)

---

# English

# ADR-004 — Monitoring Stack with Prometheus, Node Exporter and Grafana

## Status

Accepted

## Date

2026-08-11

## Context

Project Kaizen Homelab required an initial observability solution to provide visibility into the infrastructure environment.

Before this decision, the environment had infrastructure services running but lacked:

- system metrics collection;
- operational dashboards;
- infrastructure visibility;
- monitoring foundation for future evolution.

The monitoring solution needed to follow the project principles:

- incremental evolution;
- open-source technologies;
- reproducible deployment;
- Docker-based operation;
- documentation-first approach.

---

## Decision

The project adopts the following monitoring stack:

- Prometheus;
- Node Exporter;
- Grafana.

The stack is deployed using Docker Compose inside a dedicated Docker network.

Architecture:

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

### Prometheus

Responsible for:

- collecting infrastructure metrics;
- storing time-series data;
- providing the query interface for monitoring information.

---

### Node Exporter

Responsible for:

- exporting Linux host metrics;
- providing CPU, memory, filesystem and network information.

---

### Grafana

Responsible for:

- visualization of metrics;
- dashboard creation;
- operational monitoring interface.

---

## Alternatives Considered

### Zabbix

Rejected for the initial implementation.

Reasons:

- higher initial complexity;
- larger operational footprint;
- less aligned with the current learning objective.

---

### Datadog / Cloud Monitoring Solutions

Rejected for the initial implementation.

Reasons:

- external dependency;
- cost considerations;
- unnecessary complexity for the current homelab stage.

---

### Manual Monitoring

Rejected.

Reasons:

- does not scale;
- does not provide historical metrics;
- does not represent professional operational practices.

---

## Consequences

Positive consequences:

- The homelab gains an observability foundation.
- Metrics become available for dashboards and future alerts.
- The architecture aligns with common DevOps practices.
- Future cloud monitoring concepts can be integrated later.

Negative consequences:

- Additional services increase resource consumption.
- Monitoring configuration requires maintenance.
- Future alerting strategy will require additional design.

---

## Operational Notes

During implementation, a system time synchronization issue was identified.

The root cause was incorrect server time synchronization.

The issue was resolved by identifying and using Chrony as the active NTP service.

Reference:

`docs/operations/time-synchronization.md`

---

## Future Evolution

Future improvements may include:

- Alertmanager;
- custom Project Kaizen dashboards;
- additional exporters;
- cloud monitoring integration;
- centralized observability.

---

# Português

# ADR-004 — Stack de Monitoramento com Prometheus, Node Exporter e Grafana

## Status

Aceito

## Data

2026-08-11

## Contexto

O Project Kaizen Homelab precisava de uma solução inicial de observabilidade para fornecer visibilidade sobre o ambiente de infraestrutura.

Antes desta decisão, o ambiente possuía serviços de infraestrutura funcionando, porém não possuía:

- coleta de métricas do sistema;
- dashboards operacionais;
- visibilidade da infraestrutura;
- base de monitoramento para evolução futura.

A solução de monitoramento precisava seguir os princípios do projeto:

- evolução incremental;
- tecnologias open source;
- implantação reproduzível;
- operação baseada em Docker;
- abordagem de documentação primeiro.

---

## Decisão

O projeto adota a seguinte stack de monitoramento:

- Prometheus;
- Node Exporter;
- Grafana.

A stack é implantada utilizando Docker Compose dentro de uma rede Docker dedicada.

Arquitetura:

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

### Prometheus

Responsável por:

- coletar métricas da infraestrutura;
- armazenar dados temporais;
- fornecer interface de consulta dos dados de monitoramento.

---

### Node Exporter

Responsável por:

- exportar métricas do host Linux;
- fornecer informações de CPU, memória, sistema de arquivos e rede.

---

### Grafana

Responsável por:

- visualização das métricas;
- criação de dashboards;
- interface operacional de monitoramento.

---

## Alternativas Consideradas

### Zabbix

Rejeitado para a implementação inicial.

Motivos:

- maior complexidade inicial;
- maior carga operacional;
- menor alinhamento com o objetivo atual de aprendizado.

---

### Datadog / Soluções de Monitoramento em Nuvem

Rejeitadas para a implementação inicial.

Motivos:

- dependência externa;
- custos envolvidos;
- complexidade desnecessária para o estágio atual do homelab.

---

### Monitoramento Manual

Rejeitado.

Motivos:

- não escala;
- não fornece histórico de métricas;
- não representa práticas profissionais de operação.

---

## Consequências

Consequências positivas:

- O homelab ganha uma base de observabilidade.
- Métricas ficam disponíveis para dashboards e alertas futuros.
- A arquitetura se aproxima de práticas DevOps.
- Conceitos de monitoramento em nuvem poderão ser integrados futuramente.

Consequências negativas:

- Novos serviços aumentam o consumo de recursos.
- A configuração de monitoramento exige manutenção.
- A estratégia de alertas futura exigirá novo planejamento.

---

## Notas Operacionais

Durante a implementação foi identificado um problema de sincronização do horário do sistema.

A causa raiz foi a falta de sincronização correta do relógio do servidor.

O problema foi resolvido identificando e utilizando o Chrony como serviço NTP ativo.

Referência:

`docs/operations/time-synchronization.md`

---

## Evolução Futura

Melhorias futuras podem incluir:

- Alertmanager;
- dashboards próprios do Project Kaizen;
- exportadores adicionais;
- integração com monitoramento em nuvem;
- observabilidade centralizada.
