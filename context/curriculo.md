# Currículo — Áreas do INEMA Eventos v6.2

Edição v6.2 (formato-curso-v6, perfil técnico) do curso v2 `inematds/areas-eventos` (id 307 no portal).
Fonte única de fatos: `~/projetos/areas-eventos/conteudo/trilha{1,2,3}.py`, que por sua vez só usa as páginas
`~/projetos/inemaeventos/<área>/index.html` + `shared/acesso.json` (lidas em 28/09/2026). Mapa: `~/projetos/wifi/PLANO-VIDEOS-EXPLICAVIDEOS-EVENTOS.md`.

## Descoberta (Passo 0) — definida pelo agente em 29/09/2026 a partir do plano e do v2; o usuário pode trocar

1. **Aluno:** profissional ou gestor de 30+ que já usa IA no trabalho (chat), ouviu falar das áreas do eventos.inema.pro
   e não sabe o que cada uma é nem por onde começar.
2. **Profissões-alvo:** **gerente de loja** (Sônia, 49, loja de calçados de bairro com site e WhatsApp) e **analista de RH**
   (Diego, 35, empresa de 120 pessoas). Anti-clone: não usadas nos últimos v6 (contadora/fisioterapeuta, dona de clínica/contador,
   desenvolvedor/analista, coordenadora/professora, professor/gestora). `data-ex="gerente de loja"` e `data-ex="analista de RH"`.
3. **Já usa:** celular, WhatsApp, e-mail, planilha, um chat de IA. Não programa. Não usa terminal.
4. **Sai fazendo:** explica cada área em uma frase, sabe para quem ela é e sai com um primeiro passo feito na área escolhida.
5. **Sessão:** 15 minutos, muitas vezes no celular.

## Regras de conteúdo

- Só fatos, números e nomes das páginas das áreas / acesso.json (via trilhaN.py). Sem data ou preço que a página não tenha.
- Claude → Codex: nada de data de evento. IA Cultivada: nada de vídeo. Nenhum vídeo do Explicavideos.
- Tela "boa" simulada nunca inventa número, data ou nome que não esteja no pedido.
- Termos técnicos (agente, Codex, Claude Code, WebMCP…) sempre com `.gterm` na primeira vez em CADA aula.
- `details.complementar` = os 6 tópicos do v2 daquela área (o que é / por que / conceitos / na prática), texto do v2 enxugado.

## Módulos e aulas (1 aula = 1 área)

| Aula | Área | Módulo | Promessa ("Você consegue…") | Prática | Gancho para a próxima |
|---|---|---|---|---|---|
| 1 | Gestão de IA | 1 · Gerenciar e comandar agentes | dizer o que a área resolve e escolher um processo seu que um agente poderia assumir sob gestão | prompt | gerenciar exige saber delegar: aula 2 |
| 2 | AGI-ready | 1 | reescrever um pedido seu como delegação (objetivo, contexto, limites, como saber que está bom) | prompt | delegar uma vez é fácil; melhorar sempre é cultivar: aula 3 |
| 3 | IA Cultivada | 1 | montar a ficha de um agente seu com os oito elementos do cultivo | prompt | a ficha é sua ou do fornecedor? aula 4 |
| 4 | Claude → Codex | 2 · Ferramentas e ambiente | encontrar onde o seu jeito de trabalhar com IA está preso e juntar num documento que qualquer modelo lê | tarefa | com dois modelos à mão, use os dois: aula 5 |
| 5 | Codex + Claude | 2 | pedir que uma IA revise o que outra fez, com achados e correção mínima | prompt | onde guardar tudo isso: aula 6 |
| 6 | OSWork | 2 | escolher a edição do OSWork certa para o seu momento | analise | o sistema funciona; agora, fazê-lo melhorar: aula 7 |
| 7 | RSI | 3 · Melhorar, decidir e abrir | rodar um ciclo curto de melhoria com teste antes e depois | prompt | melhorar exige decidir entre versões: aula 8 |
| 8 | JEV | 3 | montar uma decisão com alternativas e critério e conferir a escolha | prompt | e quando quem decide é o agente do cliente, no seu site? aula 9 |
| 9 | WebMCP | 3 | fazer o diagnóstico gratuito do seu site e escolher a primeira correção | tarefa | fim: voltar ao mapa e escolher a área |

## Cenas (sem texto na imagem, adultos brasileiros 30–60, sem robô)

- trilha: gerente de loja (mulher, 49) e analista de RH (homem, 35) numa mesa de café de trabalho olhando juntos um mapa de papel com nove caminhos coloridos.
- aula-1: Diego, analista de RH, numa sala de reunião, cola notas adesivas num quadro separando tarefas de pessoas e tarefas que poderiam ir para um assistente.
- aula-2: Sônia, gerente de loja, no balcão da loja de calçados, escreve num caderno uma lista de responsabilidades para delegar, celular ao lado.
- aula-3: Diego revisa numa mesa uma ficha impressa com anotações à mão, como quem ajusta uma receita, xícara de café ao lado.
- aula-4: Sônia, no escritório dos fundos da loja, junta anotações espalhadas (post-its, caderno, celular) numa única pasta de papel.
- aula-5: Diego no notebook com duas janelas lado a lado, comparando dois rascunhos, marcando um papel com caneta.
- aula-6: Sônia em casa à noite, escolhendo entre cinco pastas coloridas sobre a mesa, notebook aberto.
- aula-7: Diego compara duas versões impressas de um documento, marcando com ✓ e ✗ à caneta, numa mesa organizada.
- aula-8: Sônia no estoque da loja, tablet na mão, pesando duas opções de pedido de reposição diante das prateleiras de caixas.
- aula-9: Sônia no balcão olhando o site da loja no notebook enquanto uma cliente mostra algo no celular.
