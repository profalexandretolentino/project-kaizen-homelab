[English](#english) | [Português](#português)

---

# English

# Observability Architecture

## Purpose

Document the observability layer implemented in Project Kaizen Homelab.

This document describes the role of monitoring services within the current infrastructure architecture.

---

## Architecture Position

Observability is part of the operational evolution of the homelab.

Current architecture flow:

```text
Infrastructure
      ↓
Operations
      ↓
Observability
```

The observability layer provides visibility into the operational state of the environment.

---

## Observability Stack

The current monitoring architecture is composed of:

```text
Ubuntu Server LTS

        |
        |

Docker Engine

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

Role:

- Metrics collection and storage;
- Query engine for monitoring data;
- Source of information for dashboards.

Configuration:

```text
infrastructure/monitoring/prometheus/prometheus.yml
```

---

## Node Exporter

Role:

- Linux host metrics exporter;
- Provides infrastructure-level information.

Collected information:

- CPU;
- Memory;
- Filesystem;
- Network;
- System uptime.

---

## Grafana

Role:

- Visualization platform;
- Dashboard management;
- Operational monitoring interface.

Grafana consumes metrics provided by Prometheus.

---

## Network Design

The monitoring services operate inside a dedicated Docker network:

```text
monitoring
```

This provides:

- Service discovery between containers;
- Logical separation;
- Simplified communication between monitoring components.

---

## Operational Flow

The monitoring data flow is:

```text
Host Operating System
          |
          ↓
    Node Exporter
          |
          ↓
    Prometheus
          |
          ↓
      Grafana
          |
          ↓
   Human Visualization
```

---

## Current Implementation

Implemented during:

```text
Sprint S04 — Monitoring Foundation
```

Delivered components:

- Prometheus service;
- Node Exporter service;
- Grafana service;
- Docker Compose deployment;
- Monitoring Docker network;
- Initial operational dashboard.

---

## Future Evolution

Future observability improvements may include:

- Alert management;
- Custom Project Kaizen dashboards;
- Additional exporters;
- Service-level monitoring;
- Cloud monitoring integration.

---

# Português

# Arquitetura de Observabilidade

## Objetivo

Documentar a camada de observabilidade implementada no Project Kaizen Homelab.

Este documento descreve o papel dos serviços de monitoramento dentro da arquitetura atual da infraestrutura.

---

## Posição na Arquitetura

A observabilidade faz parte da evolução operacional do homelab.

Fluxo atual da arquitetura:

```text
Infrastructure
      ↓
Operations
      ↓
Observability
```

A camada de observabilidade fornece visibilidade sobre o estado operacional do ambiente.

---

## Stack de Observabilidade

A arquitetura atual de monitoramento é composta por:

```text
Ubuntu Server LTS

        |
        |

Docker Engine

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

Responsabilidade:

- Coleta e armazenamento de métricas;
- Mecanismo de consulta dos dados de monitoramento;
- Fonte de dados para dashboards.

Configuração:

```text
infrastructure/monitoring/prometheus/prometheus.yml
```

---

## Node Exporter

Responsabilidade:

- Exportador de métricas do host Linux;
- Fornecimento de informações da infraestrutura.

Informações coletadas:

- CPU;
- Memória;
- Sistema de arquivos;
- Rede;
- Tempo de atividade do sistema.

---

## Grafana

Responsabilidade:

- Plataforma de visualização;
- Gerenciamento de dashboards;
- Interface operacional de monitoramento.

O Grafana consome as métricas fornecidas pelo Prometheus.

---

## Modelo de Rede

Os serviços de monitoramento operam dentro de uma rede Docker dedicada:

```text
monitoring
```

Benefícios:

- Descoberta de serviços entre containers;
- Separação lógica;
- Comunicação simplificada entre componentes.

---

## Fluxo Operacional

O fluxo dos dados de monitoramento é:

```text
Sistema Operacional do Host
          |
          ↓
    Node Exporter
          |
          ↓
    Prometheus
          |
          ↓
      Grafana
          |
          ↓
 Visualização Operacional
```

---

## Implementação Atual

Implementado durante:

```text
Sprint S04 — Fundação do Monitoramento
```

Componentes entregues:

- Serviço Prometheus;
- Serviço Node Exporter;
- Serviço Grafana;
- Deploy utilizando Docker Compose;
- Rede Docker de monitoramento;
- Dashboard operacional inicial.

---

## Evolução Futura

Melhorias futuras de observabilidade:

- Gerenciamento de alertas;
- Dashboards próprios do Project Kaizen;
- Exportadores adicionais;
- Monitoramento de serviços;
- Integração com monitoramento em nuvem.
