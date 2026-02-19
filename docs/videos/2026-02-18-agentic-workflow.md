# EP 86. 진짜 내 일을 해결하는 Agentic Workflow (Lablup 신정규 대표)

- Updated: 2026-02-18
- Published (YouTube): 2026-02-18
- Channel: 노정석
- Tags: video, agentic-coding, workflow, automation, claude, codex
- Sources:
  - https://www.youtube.com/watch?v=EQ-Rnx-k-Ec
  - https://github.com/lablup/backend.ai
  - https://github.com/lablup/backend.ai-go-releases

## Summary

Lablup 신정규 대표와 함께 `Backend.AI:GO` 개발 과정을 사례로, “에이전트 기반으로 일을 쪼개고 실행시키는 방식(Agentic Workflow)”을 어떻게 설계하는지 다룹니다.
핵심은 코드를 많이 ‘타이핑’하는 것이 아니라, 에이전트가 일관되게 일을 하도록 문서/진행상태/명령 체계를 만드는 쪽에 가깝습니다.

## Key Takeaways

- “Soul Document(영혼 문서)”로 프로젝트 목적/규칙/구조를 고정하면, 에이전트의 일관성이 크게 올라간다. (예: `CLAUDE.md`/`AGENTS.md`)
- 진행상태 파일(`PROGRESS.md`/`PLAN.md`)을 유지하면, 컨텍스트 손실로 인한 재작업이 줄어든다.
- 일을 잘게 쪼개서 병렬로 돌리는 것이(서브 에이전트) 생산성의 핵심이며, 사람은 “감독/검증” 역할로 이동한다.
- 토큰/추론 비용이 병목이 되는 시대로 가면서, thinking budget을 줄이는 설계(명확한 스펙/룰/체크리스트)가 중요해진다.
- 결과물의 품질은 “프롬프트”보다 “작업 시스템(문서+검증+루프)”에 더 좌우된다.

## Rookery Playbook (Rails에 바로 적용)

Rails 프로젝트 루트에 아래 3가지를 두면, 바이브코딩이 “짧은 세션”에서도 덜 깨집니다.

1. `AGENTS.md`: 레포 목적/금지사항/컨벤션(Hotwire only, RESTful, 테스트 기준 등)
2. `PROGRESS.md`: 지금까지 한 일(결정/변경/미해결)
3. `PLAN.md`: 다음 3~10개의 작업 큐(작게 쪼개기)

그리고 기능 구현은 “모델/마이그레이션 → 컨트롤러/라우팅 → 뷰/컴포넌트 → 테스트/리팩터링” 순으로 쪼개서,
각 단계마다 에이전트 산출물을 사람이 체크하는 루프로 굴리는 게 안전합니다.

## Sources

- https://www.youtube.com/watch?v=EQ-Rnx-k-Ec
- https://github.com/lablup/backend.ai
