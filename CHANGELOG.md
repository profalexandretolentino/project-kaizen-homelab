[English](#english) | [Português](#português)

---

# English

All notable changes to Project Kaizen are documented in this file.

The project follows incremental development through engineering Sprints.

## [Unreleased]

### Planned

- Future infrastructure evolution
- Additional homelab services
- Extended backup capabilities

---

## [0.3.0] — 2026-08-11

### Added

#### Monitoring Foundation

- Initial observability foundation for Project Kaizen Homelab
- Prometheus monitoring service
- Node Exporter infrastructure metrics collection
- Grafana dashboard visualization
- Dedicated Docker monitoring network
- Docker Compose monitoring deployment

#### Monitoring Documentation

- Monitoring stack operational documentation
- Time synchronization troubleshooting documentation
- Observability architecture documentation
- ADR-004 documenting the monitoring stack decision

### Changed

- Project architecture expanded with the Observability Layer
- Repository structure evolved to include operational documentation, architecture documentation and automation directories
- Infrastructure visibility evolved from service availability to metric-based monitoring

### Validation

- Prometheus health endpoint validated
- Prometheus targets validated
- Node Exporter metrics endpoint validated
- Grafana datasource connection validated
- Monitoring dashboard successfully displaying infrastructure metrics

### Operational Improvements

- System time synchronization issue identified during validation
- Root cause analyzed and resolved using Chrony NTP service
- Monitoring reliability improved through correct timestamp synchronization

### Engineering Milestones

- Sprint S04 — Monitoring Foundation

---

## [0.2.0] — 2026-08-03

### Added

#### Backup Foundation

- Initial backup strategy for Project Kaizen Homelab
- Configuration backup dataset organization
- Backup metadata generation
- Backup manifest generation
- Automated configuration backup script
- Restore procedure documentation

#### Backup Coverage

- Ubuntu Server installation configuration backup
- Docker environment metadata backup
- Portainer configuration metadata backup
- Samba configuration backup

#### Validation

- Backup archive generation validated
- Backup integrity validation implemented
- Restore test successfully completed

### Changed

- Backup process evolved from manual execution to automated workflow
- Backup structure organized by infrastructure responsibility
- Backup scope defined to protect configuration data only

### Engineering Milestones

- Sprint S03 — Backup foundation

---

## [0.1.0] — 2026-07-30

### Added

#### Project Foundation

- Project Kaizen repository foundation
- Initial engineering workflow
- Git and GitHub version control
- Incremental development through engineering Sprints

#### Infrastructure

- Windows host environment
- Oracle VirtualBox virtualization
- Ubuntu Server LTS virtual machine
- Docker container platform
- Portainer container management
- Tailscale remote access
- Samba storage and file-sharing service

#### Documentation

- `README.md` as the project portal
- `MANIFEST.md` defining identity, purpose, mission, vision and values
- `PHILOSOPHY.md` defining engineering principles
- `CONSTITUTION.md` defining mandatory rules and governance
- `ARCHITECTURE.md` documenting the current confirmed architecture
- `ROADMAP.md` documenting future evolution
- `LEGACY.md` preserving the project's personal and knowledge legacy
- Bilingual documentation standard with English and Brazilian Portuguese navigation

#### Practical Project

- Initial practical implementation stored in `src/`
- Current project state prepared for incremental evolution

### Changed

- Documentation responsibilities were separated using the One Question Principle
- The repository documentation was refactored to reduce duplication
- The README was converted into a navigation portal
- Current architecture, future planning and completed work were separated into their official documents

### Engineering Milestones

- Sprint S00 — Project foundation
- Sprint S01 — Documentation foundation
- Sprint S02 — Storage service and remote-access foundation
- Sprint S03 — Backup foundation
- Sprint S04 — Monitoring Foundation

---

# Português

Todas as mudanças relevantes do Project Kaizen são documentadas neste arquivo.

O projeto segue desenvolvimento incremental por meio de Sprints de engenharia.

## [Não lançado]

### Planejado

- Evolução futura da infraestrutura
- Novos serviços do homelab
- Capacidades adicionais de backup

---

## [0.3.0] — 2026-08-11

### Adicionado

#### Fundação do Monitoramento

- Fundação inicial de observabilidade do Project Kaizen Homelab
- Serviço de monitoramento Prometheus
- Coleta de métricas da infraestrutura com Node Exporter
- Visualização de dashboards com Grafana
- Rede Docker dedicada para monitoramento
- Implantação da stack de monitoramento utilizando Docker Compose

#### Documentação de Monitoramento

- Documentação operacional da stack de monitoramento
- Documentação de troubleshooting de sincronização de horário
- Documentação da arquitetura de observabilidade
- ADR-004 documentando a decisão da stack de monitoramento

### Alterado

- A arquitetura do projeto foi expandida com a Camada de Observabilidade
- A estrutura do repositório evoluiu para incluir documentação operacional, documentação arquitetural e diretórios de automação
- A visibilidade da infraestrutura evoluiu de disponibilidade de serviços para monitoramento baseado em métricas

### Validação

- Endpoint de saúde do Prometheus validado
- Targets do Prometheus validados
- Endpoint de métricas do Node Exporter validado
- Conexão do datasource Grafana validada
- Dashboard de monitoramento exibindo métricas da infraestrutura com sucesso

### Melhorias Operacionais

- Problema de sincronização de horário identificado durante a validação
- Causa raiz analisada e resolvida utilizando o serviço Chrony NTP
- Confiabilidade do monitoramento aprimorada através da sincronização correta dos timestamps

### Marcos de Engenharia

- Sprint S04 — Fundação do Monitoramento

---

## [0.2.0] — 2026-08-03

### Adicionado

#### Fundação do Backup

- Estratégia inicial de backup do Project Kaizen Homelab
- Organização do dataset de backup de configuração
- Geração de metadados do backup
- Geração automática do manifesto de arquivos
- Script automatizado de backup de configuração
- Documentação do procedimento de restauração

#### Cobertura do Backup

- Backup da configuração de instalação do Ubuntu Server
- Backup dos metadados do ambiente Docker
- Backup dos metadados de configuração do Portainer
- Backup da configuração do Samba

#### Validação

- Geração do arquivo de backup validada
- Validação de integridade do backup implementada
- Teste de restauração concluído com sucesso

### Alterado

- O processo de backup evoluiu de execução manual para fluxo automatizado
- A estrutura do backup foi organizada por responsabilidade da infraestrutura
- O escopo do backup foi definido para proteção de dados de configuração

### Marcos de Engenharia

- Sprint S03 — Fundação do backup

---

## [0.1.0] — 2026-07-30

### Adicionado

#### Fundação do Projeto

- Fundação do repositório Project Kaizen
- Fluxo inicial de engenharia
- Controle de versão com Git e GitHub
- Desenvolvimento incremental por meio de Sprints de engenharia

#### Infraestrutura

- Ambiente host Windows
- Virtualização com Oracle VirtualBox
- Máquina virtual Ubuntu Server LTS
- Plataforma de containers Docker
- Gerenciamento de containers com Portainer
- Acesso remoto com Tailscale
- Serviço de armazenamento e compartilhamento de arquivos com Samba

#### Documentação

- `README.md` como portal do projeto
- `MANIFEST.md` definindo identidade, propósito, missão, visão e valores
- `PHILOSOPHY.md` definindo os princípios de engenharia
- `CONSTITUTION.md` definindo regras obrigatórias e governança
- `ARCHITECTURE.md` documentando a arquitetura atual confirmada
- `ROADMAP.md` documentando a evolução futura
- `LEGACY.md` preservando o legado pessoal e de conhecimento do projeto
- Padrão de documentação bilíngue com navegação entre inglês e português brasileiro

#### Projeto Prático

- Implementação prática inicial armazenada em `src/`
- Estado atual do projeto preparado para evolução incremental

### Alterado

- As responsabilidades documentais foram separadas utilizando o One Question Principle
- A documentação do repositório foi refatorada para reduzir duplicações
- O README foi transformado em um portal de navegação
- Arquitetura atual, planejamento futuro e trabalho concluído foram separados em seus documentos oficiais

### Marcos de Engenharia

- Sprint S00 — Fundação do projeto
- Sprint S01 — Fundação documental
- Sprint S02 — Serviço de armazenamento e fundação do acesso remoto
- Sprint S03 — Fundação do backup
- Sprint S04 — Fundação do Monitoramento
