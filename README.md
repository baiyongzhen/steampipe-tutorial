# steampipe-tutorial




```bash
  grafana:
    image: grafana/grafana:9.4.7
    depends_on:
      - steampipe
    environment:
      - GF_AUTH_ANONYMOUS_ENABLED=true
      - GF_AUTH_ANONYMOUS_ORG_ROLE=Admin
      - GF_AUTH_DISABLE_LOGIN_FORM=true
    ports:
      - "3000:3000"
    logging:
      driver: "json-file"
      options:
        max-size: "5m"
        max-file: "2"
```