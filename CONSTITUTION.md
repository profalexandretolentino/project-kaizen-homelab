# Project Kaizen Constitution

**Project:** Project Kaizen

[English](#english) | [Português](#português)

---

# English

## Purpose

This Constitution defines the mandatory rules, governance and official conventions of Project Kaizen.

Every engineering decision, implementation, script and document within the repository must comply with these articles.

## Article I — Engineering Quality

Engineering quality has priority over implementation speed.

Temporary solutions are permitted only when their limitations, impact and intended resolution are documented.

## Article II — Documentation

Documentation is mandatory and forms part of every delivery.

No Sprint is considered complete without the documentation required to understand, operate, maintain or reproduce its changes.

Every relevant architectural decision must be recorded.

## Article III — Reproducibility

Every environment, service and relevant technical procedure must be reproducible using the repository documentation.

No required manual step may remain undocumented.

## Article IV — Security by Design

Security is part of the architecture and must be considered during design and implementation.

Security must never be treated as an optional improvement.

## Article V — Continuous Improvement

Every Sprint must improve at least one of the following areas:

- architecture;
- documentation;
- automation;
- security;
- reliability;
- observability.

## Article VI — Version Control and Single Source of Truth

Infrastructure, documentation and scripts must be versioned together whenever they are part of the same change.

The repository is the project's official single source of truth.

Information required to understand or reproduce the project must not depend exclusively on external memory, undocumented local files or isolated manual knowledge.

## Article VII — Architectural Decisions

Architecture Decision Records preserve the reasoning and context behind relevant technical decisions.

An approved ADR must not be rewritten to conceal or replace its original decision. A later decision must be recorded separately and may supersede the previous ADR while preserving the historical context.

## Article VIII — Knowledge Sharing

Documentation must allow future engineers to understand the project independently.

Technical knowledge produced by the project must remain clear, accessible and reusable.

## Governance

The Constitution has precedence over implementation convenience.

Changes that conflict with this document must be corrected before a Sprint or release is considered complete.

## Official Conventions

- Repository documentation must use Markdown.
- Internal documentation links must use the official repository filenames.

---

# Português

## Objetivo

Esta Constituição define as regras obrigatórias, a governança e as convenções oficiais do Project Kaizen.

Toda decisão de engenharia, implementação, script e documento existente no repositório deve respeitar estes artigos.

## Artigo I — Qualidade de Engenharia

A qualidade da engenharia tem prioridade sobre a velocidade de implementação.

Soluções temporárias são permitidas somente quando suas limitações, seu impacto e sua resolução prevista estiverem documentados.

## Artigo II — Documentação

A documentação é obrigatória e faz parte de toda entrega.

Nenhuma Sprint será considerada concluída sem a documentação necessária para compreender, operar, manter ou reproduzir suas alterações.

Toda decisão arquitetural relevante deve ser registrada.

## Artigo III — Reprodutibilidade

Todo ambiente, serviço e procedimento técnico relevante deve ser reproduzível utilizando a documentação do repositório.

Nenhuma etapa manual obrigatória pode permanecer sem registro.

## Artigo IV — Segurança desde o Projeto

A segurança faz parte da arquitetura e deve ser considerada durante o projeto e a implementação.

A segurança nunca deve ser tratada como uma melhoria opcional.

## Artigo V — Melhoria Contínua

Toda Sprint deve melhorar pelo menos uma das seguintes áreas:

- arquitetura;
- documentação;
- automação;
- segurança;
- confiabilidade;
- observabilidade.

## Artigo VI — Versionamento e Fonte Única da Verdade

Infraestrutura, documentação e scripts devem ser versionados em conjunto sempre que fizerem parte da mesma alteração.

O repositório é a fonte única e oficial da verdade do projeto.

As informações necessárias para compreender ou reproduzir o projeto não podem depender exclusivamente de memória externa, arquivos locais não documentados ou conhecimento manual isolado.

## Artigo VII — Decisões Arquiteturais

Os Architecture Decision Records preservam as justificativas e o contexto das decisões técnicas relevantes.

Um ADR aprovado não deve ser reescrito para ocultar ou substituir sua decisão original. Uma decisão posterior deve ser registrada separadamente e pode substituir o ADR anterior, preservando seu contexto histórico.

## Artigo VIII — Compartilhamento de Conhecimento

A documentação deve permitir que futuros engenheiros compreendam o projeto de forma independente.

O conhecimento técnico produzido pelo projeto deve permanecer claro, acessível e reutilizável.

## Governança

A Constituição tem precedência sobre conveniências de implementação.

Alterações que entrem em conflito com este documento devem ser corrigidas antes que uma Sprint ou release seja considerada concluída.

## Convenções Oficiais

- A documentação do repositório deve utilizar Markdown.
- Links internos da documentação devem utilizar os nomes oficiais dos arquivos do repositório.
