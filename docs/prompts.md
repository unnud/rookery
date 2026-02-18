# Prompts

재사용 가능한 프롬프트 레시피를 모읍니다.

- 실제 프로젝트에서는 `AGENTS.md`(repo rules) + 개별 기능 프롬프트 조합이 가장 안정적입니다.

## 예시(템플릿)

```text
Rails 8 앱이야.
- 프론트: Hotwire(Turbo/Stimulus)만 사용 (React/Next.js 금지)
- CSS: Tailwind
- 컨벤션: RESTful routes, skinny controllers, rich models

기능: [설명]
- 요구사항: ...
- 라우트: ...
- 화면: 모바일 우선
- 보안: strong params, authorization 고려

반드시 포함:
- migration / model / controller / view / routes
- partial로 쪼개기
- (가능하면) 최소 테스트
```
