# AI로 Rails 웹 프레임워크 사용한다면? | Ruby on rails AI agent

- Updated: 2026-02-18
- Published (YouTube): 2026-01-21
- Channel: WeekdayCode 평일코딩
- Tags: video, rails, agentic-coding, claude, 37signals, hotwire, solid, security
- Sources:
  - https://www.youtube.com/watch?v=dGuya10eCoI
  - https://github.com/ThibautBaissac/rails_ai_agents
  - https://github.blog/ai-and-ml/github-copilot/how-to-write-a-great-agents-md-lessons-from-over-2500-repositories/
  - https://gist.github.com/marckohlbrugge/d363fb90c89f71bd0c816d24d7642aca
  - https://thedecipherist.com/articles/claude-code-guide-v4/

## Summary

Rails가 AI 코딩(에이전틱 코딩)과 궁합이 좋은 이유를 “컨벤션/철학/보안” 관점에서 정리하고,
실전에서 바로 써먹을 수 있는 `rails_ai_agents`(에이전트/커맨드/스킬 모음) 레포를 소개합니다.

핵심 메시지는 “AI에게 Rails의 문법과 철학을 먼저 주입해라” 입니다. (예: 37signals 스타일 vs 표준 Rails 아키텍처)

## Key Takeaways

- AI가 덜 흔들리게 하려면 “Rails답게 일하는 규칙”을 문서로 고정해야 함: `AGENTS.md`/`CLAUDE.md`로 프로젝트 규칙을 먼저 만든다.
- `rails_ai_agents`는 아키텍처 철학을 3갈래로 나눠 제공한다: 37signals 스타일(바닐라), 표준 Rails(서비스/쿼리/프리젠터), 기능 기획/스펙.
- Rails 철학(리치 도메인 모델, CRUD 관점, thin controller)은 “LLM이 생성한 코드의 후속 리팩터링 비용”을 낮춘다.
- 프런트는 Hotwire + Turbo/Stimulus로 최소화하면 의존성/공급망 리스크를 줄이고 유지보수를 단순화할 수 있다.
- 보안은 “나중에”가 아니라 “기본값”으로: CSP, Rails 보안 기본기, 의존성 최소화 관점으로 접근한다.

## Chapters (from video description)

- 00:00 인트로: AI로 루비 온 레일즈를 효율적으로 개발하는 방법
- 00:10 버셀(Vercel)의 리액트 베스트 프랙티스와 에이전트 코딩
- 01:29 레일즈 AI 에이전트(Rails AI Agent) 레포지토리 소개
- 02:39 37signals의 코드 베이스와 스타일 가이드 활용
- 03:41 레일즈의 철학: 리치 도메인 모델과 순수 레일즈의 중요성
- 04:13 최신 레일즈 기술 스택: 솔리드(Solid) 시리즈와 핫와이어(Hotwire)
- 05:45 Node.js의 의존성 문제와 left-pad 사건의 교훈
- 07:27 공급망 공격과 보안 취약점(Log4j)에 대응하는 프레임워크의 자세
- 08:39 리액트의 빠른 변화와 학습 곡선에 대한 솔직한 생각
- 10:01 모든 것은 결국 CRUD: 모든 것을 CRUD 관점으로 바라보기
- 11:06 웹 개발 보안의 핵심: 콘텐츠 보안 정책(CSP)과 레일즈의 보안 기능
- 11:55 모델은 뚱뚱하게, 컨트롤러는 얇게(Fat Model, Skinny Controller)
- 12:51 데이터베이스 이즈 킹: 복잡한 외부 툴 대신 순수 DB 활용의 가치
- 13:38 마무리: 창시자의 코드를 통해 배우는 웹 개발의 본질과 애자일 마인드

## Rookery Playbook (바로 적용)

프로젝트 루트에 아래 프롬프트를 “고정 규칙”으로 넣고(예: `AGENTS.md`/`CLAUDE.md`), 기능 요청을 이 규칙 아래에서만 받게 하면 생성 품질이 안정화됩니다.

```text
You are a senior Ruby on Rails engineer.

Constraints:
- Rails conventions first (RESTful routes, generators, standard folders)
- Frontend: Hotwire (Turbo/Stimulus) only (no React/Next.js)
- Prefer built-in Rails features; add gems only with justification
- Security: strong params, CSP, authz considerations by default

Style:
- Skinny controllers, rich models
- Keep diffs small; add minimal tests when practical
```

## Sources

- https://www.youtube.com/watch?v=dGuya10eCoI
- https://github.com/ThibautBaissac/rails_ai_agents
