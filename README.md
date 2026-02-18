# Rails Vibe Coding Wiki (KR)

Rails + Ruby + "vibe coding"(LLM-assisted dev) 관련 내용을 한국 맥락에서 계속 업데이트하는 지식 저장소입니다.

- 핵심 목표: 빠르게 만들고, 나중에 다시 봐도 유지보수 가능한 형태로 정리
- 원칙: 요약은 짧게, 근거(링크/날짜)는 명확하게, 추측은 라벨링

## 구조

- `docs/`: 문서 본문(깃헙에서 바로 읽기 + MkDocs로 웹 위키화 가능)
- `docs/case-studies/`: 케이스 스터디(사례, 타임라인, 무엇을 배웠나)
- `docs/videos/`: 영상 요약/노트
- `docs/prompts/`: 프롬프트 레시피(재사용 가능한 템플릿)
- `templates/`: 새 문서 템플릿
- `scripts/`: 문서 생성/정리 스크립트

## 빠른 시작(로컬 위키)

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
mkdocs serve
```

## 기여 방식

- 새 자료를 추가할 때는 템플릿을 복사해서 작성하세요.
- 출처 URL과 확인 날짜를 꼭 남기세요.
- 긴 원문 복붙 대신, 핵심만 요약하고 링크로 연결하세요.

자세한 규칙은 `AGENTS.md`와 `docs/STYLE.md` 참고.
