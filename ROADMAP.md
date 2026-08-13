# Project Kaizen Roadmap

[English](#english) | [Português](#português)

---

# English

## Purpose

This document defines the planned evolution of Project Kaizen.

It contains project phases, milestones, current status and future deliverables. The current technical state is documented in ARCHITECTURE.md, while completed work and release history belong to CHANGELOG.md.

## Roadmap Principles

- The Roadmap defines the evolution path of Project Kaizen.
- Completed phases remain documented with their current status.
- Detailed implementation history belongs to CHANGELOG.md.
- Architectural state resulting from completed work is reflected in ARCHITECTURE.md.
- Phase numbers are preserved to maintain continuity with the established project sequence.
- No phase has a fixed date unless one is formally defined.
- Each implementation cycle prioritizes practical delivery before documentation refinement.
- Sprints have a maximum duration of 5 hours. Larger initiatives are divided into multiple Sprints.

## Phase Status

- Completed: Delivered and validated.
- In Progress: Currently being implemented.
- Planned: Future evolution.

## Engineering Evolution Path

```mermaid
flowchart TD

    A[Infrastructure] --> B[Operations]
    B --> C[Observability]
    C --> D[Containers]
    D --> E[Cloud]
    E --> F[Security]
    F --> G[Infrastructure as Code]
    G --> H[CI/CD]
    H --> I[Kubernetes]

```

## Project Evolution Phases

### Phase 0 — Project Foundation

Status: Completed

### Phase 1 — Documentation Foundation

Status: Completed

### Phase 2 — Storage and Remote Access Foundation

Status: Completed

### Phase 3 — Backup Foundation

Status: Completed

### Phase 4 — Monitoring and Observability

Status: Planned

Planned deliverables:

- Node Exporter
- Prometheus
- Grafana
- Infrastructure metrics collection
- Operational dashboards

### Phase 5 — Container Platform Evolution

Status: Planned

Planned deliverables:

- Docker Compose
- Container networking
- Reverse proxy
- Internal services
- Service organization improvements

### Phase 6 — Cloud Foundation

Status: Planned

Planned deliverables:

- AWS account foundation
- IAM management
- MFA security baseline
- VPC networking concepts
- EC2 infrastructure
- S3 storage
- CloudWatch monitoring

### Phase 7 — Security Foundation

Status: Planned

Planned deliverables:

- Linux security hardening
- SSH security improvements
- Firewall configuration
- Fail2ban protection
- Security best practices

### Phase 8 — Infrastructure as Code

Status: Planned

Planned deliverables:

- Terraform introduction
- AWS infrastructure provisioning
- Infrastructure version control
- Reproducible environments

### Phase 9 — CI/CD Engineering

Status: Planned

Planned deliverables:

- GitHub Actions
- Automated validation
- Infrastructure pipelines
- Automated deployment workflows

### Phase 10 — Kubernetes Foundation

Status: Planned

Planned deliverables:

- k3s
- Container orchestration concepts
- Service discovery
- High availability concepts
- Cloud-native foundations

## Long-Term Milestone

Release:

**Project Kaizen v1.0**

Expected capabilities:

- Hybrid infrastructure knowledge
- On-premise and cloud environments
- Infrastructure automation
- Observability
- Security practices
- CI/CD workflows
- Container orchestration

## Completion Criteria

A phase is complete when:

- its listed deliverables have been implemented;
- the documentation required by CONSTITUTION.md is complete;
- the resulting technical state is reflected in ARCHITECTURE.md, when applicable;
- its completion is recorded in CHANGELOG.md.

---

# Português

## Propósito

Este documento define a evolução planejada do Project Kaizen.

Ele contém fases do projeto, marcos, status atual e entregas futuras. O estado técnico atual está documentado em ARCHITECTURE.md, enquanto o trabalho concluído e o histórico de releases pertencem ao CHANGELOG.md.

## Princípios do Roadmap

- O Roadmap define o caminho de evolução do Project Kaizen.
- Fases concluídas permanecem documentadas com seu status atual.
- O histórico detalhado de implementação pertence ao CHANGELOG.md.
- O estado arquitetural resultante do trabalho concluído é refletido no ARCHITECTURE.md.
- A numeração das fases é preservada para manter a continuidade com a sequência estabelecida do projeto.
- Nenhuma fase possui data fixa, exceto quando uma data for formalmente definida.
- Cada ciclo de implementação prioriza entrega prática antes do refinamento documental.
- As Sprints possuem duração máxima de 5 horas. Iniciativas maiores são divididas em múltiplas Sprints.

## Status das Fases

- Completed: Entregue e validado.
- In Progress: Atualmente em implementação.
- Planned: Evolução futura.

## Caminho de Evolução de Engenharia

```mermaid
flowchart TD

    A[Infraestrutura] --> B[Operações]
    B --> C[Observabilidade]
    C --> D[Containers]
    D --> E[Cloud]
    E --> F[Segurança]
    F --> G[Infrastructure as Code]
    G --> H[CI/CD]
    H --> I[Kubernetes]

```

## Fases de Evolução do Projeto

### Fase 0 — Fundação do Projeto

Status: Completo

### Fase 1 — Fundação Documental

Status: Completo

### Fase 2 — Fundação de Armazenamento e Acesso Remoto

Status: Completo

### Fase 3 — Fundação do Backup

Status: Completo

### Fase 4 — Monitoramento e Observabilidade

Status: Completo

Entregas planejadas:

- Node Exporter
- Prometheus
- Grafana
- Coleta de métricas da infraestrutura
- Dashboards operacionais

### Fase 5 — Evolução da Plataforma de Containers

Status: Planned

Entregas planejadas:

- Docker Compose
- Redes de containers
- Proxy reverso
- Serviços internos
- Melhorias na organização dos serviços

### Fase 6 — Fundação Cloud

Status: Planned

Entregas planejadas:

- Fundação da conta AWS
- Gerenciamento IAM
- MFA e baseline de segurança
- Conceitos de rede VPC
- Infraestrutura EC2
- Armazenamento S3
- Monitoramento CloudWatch

### Fase 7 — Fundação de Segurança

Status: Planned

Entregas planejadas:

- Hardening Linux
- Melhorias de segurança SSH
- Configuração de firewall
- Proteção com Fail2ban
- Boas práticas de segurança

### Fase 8 — Infrastructure as Code

Status: Planned

Entregas planejadas:

- Introdução ao Terraform
- Provisionamento de infraestrutura AWS
- Versionamento da infraestrutura
- Ambientes reproduzíveis

### Fase 9 — Engenharia CI/CD

Status: Planned

Entregas planejadas:

- GitHub Actions
- Validação automatizada
- Pipelines de infraestrutura
- Fluxos de deploy automatizados

### Fase 10 — Fundação Kubernetes

Status: Planned

Entregas planejadas:

- k3s
- Conceitos de orquestração de containers
- Descoberta de serviços
- Conceitos de alta disponibilidade
- Fundamentos Cloud Native

## Marco de Longo Prazo

Release:

**Project Kaizen v1.0**

Capacidades esperadas:

- Conhecimento de infraestrutura híbrida
- Ambientes on-premise e cloud
- Automação de infraestrutura
- Observabilidade
- Práticas de segurança
- Fluxos CI/CD
- Orquestração de containers

## Critérios de Conclusão

Uma fase está concluída quando:

- suas entregas listadas foram implementadas;
- a documentação exigida pelo CONSTITUTION.md está completa;
- o estado técnico resultante está refletido no ARCHITECTURE.md, quando aplicável;
- sua conclusão está registrada no CHANGELOG.md.
