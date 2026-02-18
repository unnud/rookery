# Rails + Vibe Coding (KR) 2025-2026 Snapshot

- Updated: 2026-02-18
- Tags: rails, ruby, hotwire, tailwind, vibe-coding, korea
- Sources:
  - https://www.youtube.com/watch?v=PDAZwXfYn-s
  - https://www.youtube.com/watch?v=dGuya10eCoI
  - https://www.youtube.com/watch?v=SJIiYha6qpI
  - https://www.youtube.com/watch?v=EQ-Rnx-k-Ec

> Note: 이 문서는 2026-02-18 기준의 정리/의견을 포함합니다. 숫자/사실관계는 추후 출처 링크로 보강합니다.

## 왜 Rails가 vibe coding에 잘 맞나

- 컨벤션이 강함: 생성 코드가 프레임워크의 "정답 경로"를 벗어날 확률이 상대적으로 낮음
- 읽기 쉬움: AI가 만든 코드도 사람이 나중에 수정하기 쉬운 편
- 풀스택 배터리 포함: 인증/CRUD/핫와이어 패턴을 빠르게 붙이기 좋음

## 2026년 기준 자주 쓰는 흐름(예시)

- 에디터: Cursor 또는 VS Code
- 모델: Claude / Gemini 등(프로젝트 성격에 따라)
- Rails: 8+
- 프론트: Hotwire(Turbo/Stimulus)
- 스타일: Tailwind

## 프롬프트 패턴(예시)

```text
Rails 8 앱이야.
이미 User, Post 모델이 있고 인증이 되어 있어.
프론트는 Hotwire(Turbo Drive/Frames/Stimulus)만 써줘. React/Next.js는 쓰지 마.

새 기능: 사용자가 자신의 게시글 통계를 볼 수 있는 대시보드 페이지
- 경로: /dashboard
- 이번 달 게시글 수
- 총 좋아요 수
- 조회수 합계
- 간단한 차트(Chart.js 등)
- 모바일에서도 잘 보이게 Tailwind로

컨벤션 지켜서: migration, model, controller, view, route, partial까지 전부.
```

## 장점/단점(요약)

장점

- 생성 코드 품질이 컨벤션에 의해 안정화되기 쉬움
- 기능 추가 단위가 Rails 구조(migration/model/controller/view)로 잘 쪼개짐

단점

- 일부 코드 생성기/에이전트는 Rails 친화도가 낮을 수 있음
- 장기 운영은 결국 사람이 이해/리팩터링해야 함

## 다음 액션

- 케이스 스터디는 `docs/case-studies/`에 개별 파일로 분리
- 영상/아티클별로 "핵심 요지 + 적용 포인트 + 프롬프트" 형태로 축적
