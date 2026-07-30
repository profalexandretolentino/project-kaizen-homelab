# Project Kaizen Roadmap

[English](#english) | [Português](#português)

---

# English

## Purpose

This document defines the planned evolution of Project Kaizen.

It contains only future phases, milestones and deliverables. The current technical state is documented in [ARCHITECTURE.md](ARCHITECTURE.md), while completed work and release history belong to [CHANGELOG.md](CHANGELOG.md).

## Roadmap Principles

- The Roadmap contains planned work only.
- Completed phases and releases are removed from this document and recorded in [CHANGELOG.md](CHANGELOG.md).
- Architectural state resulting from completed work is reflected in [ARCHITECTURE.md](ARCHITECTURE.md).
- Phase numbers are preserved to maintain continuity with the established project sequence.
- No phase has a fixed date unless one is formally defined.

## Planned Phases

### Phase 3 — Backup

Planned deliverables:

- Backup strategy
- Restore procedures
- Backup automation

### Phase 4 — Monitoring and Observability

Planned deliverables:

- Node Exporter
- Prometheus
- Grafana

### Phase 5 — Container Platform Evolution

Planned deliverables:

- Docker Compose
- Reverse proxy
- Internal services

### Phase 6 — Kubernetes

Planned deliverables:

- k3s
- High availability concepts
- Service discovery

### Phase 7 — CI/CD

Planned deliverables:

- GitHub Actions
- Automated deployment
- Infrastructure validation

## Long-Term Milestone

Release:

**Project Kaizen v1.0**

## Completion Criteria

A phase is complete when:

- its listed deliverables have been implemented;
- the documentation required by [CONSTITUTION.md](CONSTITUTION.md) is complete;
- the resulting technical state is reflected in [ARCHITECTURE.md](ARCHITECTURE.md), when applicable;
- its completion is recorded in [CHANGELOG.md](CHANGELOG.md).

---

# Português

## Propósito

Este documento define a evolução planejada do Project Kaizen.

Ele contém somente fases, marcos e entregas futuras. O estado técnico atual está documentado em [ARCHITECTURE.md](ARCHITECTURE.md), enquanto o trabalho concluído e o histórico de releases pertencem ao [CHANGELOG.md](CHANGELOG.md).

## Princípios do Roadmap

- O Roadmap contém somente trabalho planejado.
- Fases e releases concluídas são removidas deste documento e registradas no [CHANGELOG.md](CHANGELOG.md).
- O estado arquitetural resultante do trabalho concluído é refletido no [ARCHITECTURE.md](ARCHITECTURE.md).
- A numeração das fases é preservada para manter a continuidade com a sequência estabelecida do projeto.
- Nenhuma fase possui data fixa, exceto quando uma data for formalmente definida.

## Fases Planejadas

### Fase 3 — Backup

Entregas planejadas:

- Estratégia de backup
- Procedimentos de restauração
- Automação de backup

### Fase 4 — Monitoramento e Observabilidade

Entregas planejadas:

- Node Exporter
- Prometheus
- Grafana

### Fase 5 — Evolução da Plataforma de Containers

Entregas planejadas:

- Docker Compose
- Proxy reverso
- Serviços internos

### Fase 6 — Kubernetes

Entregas planejadas:

- k3s
- Conceitos de alta disponibilidade
- Descoberta de serviços

### Fase 7 — CI/CD

Entregas planejadas:

- GitHub Actions
- Implantação automatizada
- Validação de infraestrutura

## Marco de Longo Prazo

Release:

**Project Kaizen v1.0**

## Critérios de Conclusão

Uma fase está concluída quando:

- suas entregas listadas foram implementadas;
- a documentação exigida pelo [CONSTITUTION.md](CONSTITUTION.md) está completa;
- o estado técnico resultante está refletido no [ARCHITECTURE.md](ARCHITECTURE.md), quando aplicável;
- sua conclusão está registrada no [CHANGELOG.md](CHANGELOG.md).
