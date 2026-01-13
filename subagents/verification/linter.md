# Linter Subagent

> 🔎 린트 검증 서브에이전트

---

## Role
코드 스타일 및 품질 검사

---

## Trigger
JIAN CI/CD 파이프라인에서 자동 호출

---

## Command
```bash
npm run lint
# or
npx eslint . --ext .ts,.tsx
```

---

## Error Analysis
```markdown
## Lint Report

### Errors: [count]
### Warnings: [count]

### Issues
| File | Line | Rule | Message |
|------|------|------|---------|
| ... | ... | ... | ... |

### Auto-fixable
```bash
npm run lint -- --fix
```
```
