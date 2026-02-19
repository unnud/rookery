# Shoutout.io를 20분만에 대체한 사례 (Gergely Orosz)

- Updated: 2026-02-18
- Tags: case-study, micro-saas, llm, codex, switching-cost, broken-windows
- Sources:
  - https://blog.pragmaticengineer.com/i-replaced-a-120-year-micro-saas-in-20-minutes-with-llm-generated-code/
  - https://shoutout.io/

## Context

Gergely Orosz(Pragmatic Engineer 운영자)는 testimonials(후기) 섹션을 위해 `Shoutout.io`라는 $120/년짜리 마이크로 SaaS를 사용하고 있었지만,
결제/인보이스 관련 UX가 깨져 있고 고객지원 응답도 부실하다고 느껴 “내가 실제로 쓰는 사용 사례만” LLM으로 빠르게 대체할 수 있는지 실험합니다.

## Key Takeaways

- LLM은 “제품 전체”보다 “내가 쓰는 일부 유스케이스”를 대체하는 데 훨씬 강하다.
- 정적/저변경 기능(한 번 설정하면 거의 안 바뀌는 위젯/페이지)은 특히 대체 비용이 급격히 내려간다.
- 개발자는 LLM 산출물을 검증/수정할 수 있어 전환 비용이 더 낮다. (비개발자 대비)
- “깨진 유리창(작은 결함)”이 이탈의 트리거가 될 가능성이 더 커진다: 고객이 불만을 느끼면 “직접 만들어 떠날” 수 있기 때문.
- SaaS의 해자는 “기능”보다도 업데이트/컴플라이언스/운영 가치(지속 가치 제공) 쪽으로 이동한다.

## Notes

이 사례에서 흥미로운 포인트는 “코딩 자체”보다도 마이그레이션 전략이 단순했다는 점입니다.

- 기존 SaaS 종속을 제거하고(3rd-party dependency 제거),
- testimonials를 JSON 파일로 관리하며,
- 빌드 단계에서 HTML로 생성하고,
- 정적 호스팅(예: Netlify)로 배포하는 형태로 구현했습니다.

즉, “CRUD 앱”이 아니라 “데이터 + 렌더링 + 배포 파이프라인”을 재구성한 케이스에 가깝습니다.

## Sources

- https://blog.pragmaticengineer.com/i-replaced-a-120-year-micro-saas-in-20-minutes-with-llm-generated-code/
- https://shoutout.io/
