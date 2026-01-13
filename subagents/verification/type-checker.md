# Type Checker Subagent

> 📝 타입 검증 서브에이전트

---

## Role
TypeScript 타입 오류 분석 및 수정

---

## Trigger
JIAN CI/CD 파이프라인에서 자동 호출

---

## Command
```bash
npm run type-check
# or
npx tsc --noEmit
```

---

## Error Analysis
```markdown
## Type Error Report

### Errors Found: [count]

### Error 1
- File: [path]
- Line: [number]
- Message: [error message]
- Fix: [suggested fix]
```
