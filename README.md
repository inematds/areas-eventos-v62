# Áreas do INEMA Eventos v6.2 — O que é cada área

Curso rápido no formato INEMA v6.2 (iniciante 30+, aulas de ~15 minutos): as nove áreas de assunto do
[eventos.inema.pro](https://eventos.inema.pro/), uma por aula, em três módulos. Português, inglês e espanhol.

- Curso: https://inematds.github.io/areas-eventos-v62/ · English: https://inematds.github.io/areas-eventos-v62/en/ · Español: https://inematds.github.io/areas-eventos-v62/es/
- Edição v2 do mesmo curso: https://inematds.github.io/areas-eventos/

| Módulo | Aulas |
|---|---|
| 1 · Gerenciar e comandar agentes | 1 Gestão de IA · 2 AGI-ready · 3 IA Cultivada |
| 2 · Ferramentas e ambiente | 4 Claude → Codex · 5 Codex + Claude · 6 OSWork |
| 3 · Melhorar, decidir e abrir | 7 RSI · 8 JEV · 9 WebMCP |

## Fontes

Fatos só das páginas das áreas (`~/projetos/inemaeventos/<área>/`) e de `shared/acesso.json`, via o conteúdo do v2
(`~/projetos/areas-eventos/conteudo/`). Currículo, personagens e cenas: `context/curriculo.md`. Leitor simulado: `context/leitor-simulado.md`.

## Editar

Aulas em `aulas/aula-N.html` (formato-curso-v6). Depois de editar:

```bash
python3 ~/.claude/skills/formato-curso-v6/scripts/montar-curso.py .
python3 ~/.claude/skills/formato-curso-v6/scripts/traduzir-curso.py . en es   # Codex pela assinatura; cache em i18n/
node ~/.claude/skills/formato-curso-v6/scripts/auditar-curso.cjs curso.html     # e en/curso.html, es/curso.html
node ~/.claude/skills/formato-curso-v6/scripts/testar-motor.cjs curso.html
```

Cenas: `context/gera-cenas.sh` (Codex image_gen pela assinatura; fallback flux2-klein local).
