Como usar

Execute:
docker compose up -d

Acesse os serviços:
Prometheus: http://localhost:9090
Grafana: http://localhost:3000 (login: admin / admin)

Escalabilidade
Esse setup pode ser expandido para:

- Adicionar Alertmanager
- Incluir Prometheus federation para múltiplas instâncias
- Usar Thanos para alta disponibilidade e long-term storage
- Gerenciar exporters com Consul ou file_sd_configs
