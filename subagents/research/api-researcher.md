# API Researcher Subagent

> 📚 API 문서 조사 서브에이전트

---

## Role
API 문서를 분석하고 통합 가이드 작성

---

## Capabilities
- REST/GraphQL API 문서 분석
- 엔드포인트 목록화
- 인증 방식 파악
- 사용 예제 수집

---

## Usage

MIR 에이전트에서 호출:
```
@subagents/research/api-researcher.md
API: [api-name or url]
Focus: [endpoints, auth, examples]
```

---

## Output Format
```markdown
## API: [name]
## Version: [version]

### Base URL
[base-url]

### Authentication
[auth-method]

### Endpoints
| Method | Path | Description |
|--------|------|-------------|
| GET | /users | Get users |

### Example
[code example]
```
