[English](#english) | [Português](#português)

---

# English

# Time Synchronization

## Purpose

Document the system time synchronization requirement for reliable monitoring and observability in Project Kaizen Homelab.

This document records the troubleshooting process performed during Sprint 4.

---

## Problem Identified

During monitoring dashboard validation, Grafana initially displayed missing metrics:

```text
No data
```

The investigation identified that the server clock was not synchronized.

Observed condition:

```text
System clock synchronized: no
```

---

## Impact

Incorrect system time can affect:

- Metrics timestamps;
- Monitoring visualization;
- Log correlation;
- Operational troubleshooting;
- Alert reliability.

Reliable observability requires accurate time synchronization.

---

## Diagnosis Process

The troubleshooting followed these steps:

```text
Grafana Dashboard
        |
        ↓
Datasource Validation
        |
        ↓
Prometheus Validation
        |
        ↓
Operating System Validation
        |
        ↓
NTP Synchronization Check
```

---

## Root Cause

The Ubuntu Server environment was using Chrony as the NTP client/server service.

The initial investigation checked:

```text
systemd-timesyncd
```

However, this service was not installed.

The active synchronization service was identified:

```text
chrony.service
```

---

## Resolution

The Chrony service was restarted:

```bash
sudo systemctl restart chrony
```

Synchronization status was validated using:

```bash
chronyc tracking
```

Validation result:

```text
Leap status : Normal
```

The active NTP source was confirmed using:

```bash
chronyc sources -v
```

---

## Validation Result

After time synchronization was restored:

- Prometheus timestamps became consistent;
- Grafana variables started returning values;
- Monitoring dashboards displayed host metrics correctly.

---

## Operational Principle

Time synchronization is a fundamental requirement for infrastructure observability.

The operational chain is:

```text
Correct Time
      |
      ↓
Reliable Metrics
      |
      ↓
Accurate Dashboards
      |
      ↓
Trustworthy Operations
```

---

## Current Status

Time synchronization validated.

Monitoring environment operating correctly.

---

# Português

# Sincronização de Horário

## Objetivo

Documentar o requisito de sincronização de horário do sistema para garantir monitoramento e observabilidade confiáveis no Project Kaizen Homelab.

Este documento registra o processo de troubleshooting realizado durante a Sprint 4.

---

## Problema Identificado

Durante a validação dos dashboards de monitoramento, o Grafana inicialmente apresentou ausência de métricas:

```text
No data
```

A investigação identificou que o relógio do servidor não estava sincronizado.

Condição observada:

```text
System clock synchronized: no
```

---

## Impacto

Horário incorreto pode afetar:

- timestamps das métricas;
- visualização do monitoramento;
- correlação de logs;
- troubleshooting operacional;
- confiabilidade dos alertas.

Uma observabilidade confiável depende de sincronização correta de horário.

---

## Processo de Diagnóstico

O troubleshooting seguiu estas etapas:

```text
Dashboard Grafana
        |
        ↓
Validação do Datasource
        |
        ↓
Validação do Prometheus
        |
        ↓
Validação do Sistema Operacional
        |
        ↓
Verificação da Sincronização NTP
```

---

## Causa Raiz

O ambiente Ubuntu Server utilizava o Chrony como serviço cliente/servidor NTP.

A investigação inicial verificou:

```text
systemd-timesyncd
```

Porém, este serviço não estava instalado.

O serviço ativo identificado foi:

```text
chrony.service
```

---

## Resolução

O serviço Chrony foi reiniciado:

```bash
sudo systemctl restart chrony
```

O estado da sincronização foi validado utilizando:

```bash
chronyc tracking
```

Resultado da validação:

```text
Leap status : Normal
```

A fonte NTP ativa foi confirmada utilizando:

```bash
chronyc sources -v
```

---

## Resultado da Validação

Após a sincronização do horário:

- os timestamps do Prometheus ficaram consistentes;
- as variáveis do Grafana passaram a retornar valores;
- os dashboards apresentaram corretamente as métricas do host.

---

## Princípio Operacional

A sincronização de horário é um requisito fundamental para observabilidade de infraestrutura.

A cadeia operacional é:

```text
Horário Correto
      |
      ↓
Métricas Confiáveis
      |
      ↓
Dashboards Precisos
      |
      ↓
Operação Confiável
```

---

## Status Atual

Sincronização de horário validada.

Ambiente de monitoramento operando corretamente.
