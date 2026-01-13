# Security Scanner Subagent

> 🔒 보안 검사 서브에이전트

---

## Role
보안 취약점 스캔 및 리포트

---

## Trigger
JIAN CI/CD 파이프라인에서 선택적 호출

---

## Command
```bash
npm audit
# or
npx snyk test
```

---

## Checks
- 의존성 취약점
- 하드코딩된 시크릿
- SQL 인젝션 패턴
- XSS 취약점
- CORS 설정

---

## Report Format
```markdown
## Security Scan Report

### Vulnerabilities
| Severity | Package | Issue | Fix |
|----------|---------|-------|-----|
| HIGH | ... | ... | ... |

### Secrets Found
- [file:line] - [type]

### Recommendations
1. [action1]
2. [action2]
```
