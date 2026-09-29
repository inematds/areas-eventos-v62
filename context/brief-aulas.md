# Brief comum — aulas 2 a 9 do "Áreas do INEMA Eventos v6.2"

Curso: `~/projetos/areas-eventos-v62` (formato-curso-v6, **perfil técnico**, 9 aulas, 1 aula = 1 área do eventos.inema.pro).
Leia antes: `context/curriculo.md` (promessa, prática e gancho de cada aula; personagens; cenas), `curso.json` (termos),
a skill `~/.claude/skills/formato-curso-v6/` (SKILL.md + references/CONTEUDO-INICIANTE.md, V6-DESIGN.md, CHECKLIST-V6.md)
e o **molde aprovado 10/10**: `aulas/aula-1.html` (Gestão de IA). Siga a mesma estrutura e densidade.

## Fonte dos fatos (única)
`~/projetos/areas-eventos/conteudo/trilha{1,2,3}.py` — `MODULES[i]` da trilha (índice local 0..2). Campos: title, goal, steps (lab),
check/answer (bom para o teste-se), snippet (prompt pronto — base da prática), sources (links), topics (6 tópicos: what/why/keys/example/action).
Pode conferir na página original `~/projetos/inemaeventos/<slug>/index.html`. **Nada fora disso**: sem data ou preço que a página não tenha;
Claude → Codex sem data de evento; IA Cultivada sem vídeo; nenhum vídeo do Explicavideos. Conteúdo de terceiros citado na página: só referência.

## Regras desta edição
- Personagens fixos do curso: **Sônia**, gerente de loja (49, loja de calçados de bairro com site e WhatsApp) → `data-ex="gerente de loja"`;
  **Diego**, analista de RH (35, empresa de 120 pessoas) → `data-ex="analista de RH"`. Alterne os dois; situações novas em cada aula
  (não repita as da aula 1: lista de assistentes do RH, ficha da vendedora de WhatsApp, férias, pedidos copiados para planilha).
- Kicker: `Aula N de 9 · <Área>`. Cena: `assets/img/aula-N.webp` (já gerada; alt descrevendo a cena do curriculo.md, >20 caracteres).
- 3–4 steps, cada um com visual real (`.tela`, `.lado`, `.janela`, `.terminal`, `.diag` só se não houver tela). ≥1 `.calma`. 1 `.quiz` (use check/answer do v2 quando couber).
- Prática = a do currículo, baseada no `snippet` do v2, **simplificada** para ≤12 min e para chat de IA comum (copiar e colar). Área com
  comando (Codex + Claude): o caminho principal é no chat; o comando pode ir num `details.mais` com `.terminal`, com `.gterm` nos termos.
- Termos de `curso.json` (agente, Codex, Claude Code, WebMCP, Skill, LOOP-R, token, runtime, lock-in, Computer Use, evals, handoff, SEO)
  e toda palavra da lista-sentinela (terminal, API, script, servidor, instalar, login, workflow…) **só com `.gterm` na 1ª vez nesta aula**,
  com a MESMA definição (`data-def`) em todas as aulas. Definições já usadas: veja `aulas/aula-1.html` (agente, LOOP-R, token) e as das
  outras aulas prontas em `aulas/`. Evite o termo quando uma palavra comum resolver.
- `details.complementar` depois da `.fecho`: os 6 tópicos do v2 da área, **enxugados** em frases curtas (≤22 palavras), um `comp-sec` por tópico,
  e `p.comp-fontes` com os `sources`. Mesmo cuidado de jargão.
- Tela "boa" simulada nunca inventa número, data ou nome que não esteja no pedido mostrado.
- Cartões `cards-N`: 3 ou 4, frente termina em "?", formas decisão/diagnóstico/aplicação, sem repetir a `.cola`.
- `nav.lnav`: `#aula-(N-1)`/trilha e `#aula-(N+1)`; na aula 9 o próximo é `#trilha` ("voltar à trilha →"). Rodapé `Aula N · Áreas INEMA v6.2 · INEMA.CLUB PRO`.
- `data-tempo` = palavras/200 + minutos da prática + 1 (arredonde para cima), alvo 12–15.

## Como validar (numa cópia isolada, nunca montando no projeto)
```bash
S=$(mktemp -d)/c; cp -r ~/projetos/areas-eventos-v62 $S
python3 -c "import json;p='$S/curso.json';c=json.load(open(p));c['modulos']=[{'titulo':'M','aulas':[N]}];json.dump(c,open(p,'w'),ensure_ascii=False)"
# a montagem aceita só as aulas listadas; renomeie/ajuste se precisar (aula N sozinha)
python3 ~/.claude/skills/formato-curso-v6/scripts/montar-curso.py $S
node ~/.claude/skills/formato-curso-v6/scripts/auditar-curso.cjs $S/curso.html
```
Meta: **≥9/10 e sem falha em 7, 8 e 10** (mire 10/10). Grave só o arquivo final em `~/projetos/areas-eventos-v62/aulas/aula-N.html`.
Não gere imagens, não faça git, não chame API externa. Ao terminar, feche qualquer Chromium que tenha aberto.
Responda: nota do auditor, nº de palavras, e qualquer fato de que ficou em dúvida.
