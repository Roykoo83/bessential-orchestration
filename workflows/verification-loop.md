# 🔄 Self-Verification Loop

> "클로드에게 자기 검증 수단을 줘라 - 품질이 2~3배 상승한다"
> - Boris Cherny

---

## Loop Architecture

```
[Code] → [Static Analysis] → [Unit Test] → [Self-Review]
                    │              │              │
                    └──────────────┴──────────────┘
                              Decision Gate
                    All Pass? → ✅ Continue
                    Any Fail? → 🔄 Fix & Retry (max 3)
                    3x Fail?  → 🚨 Escalate to Jian
```

---

## Verification Steps

### 1. Static Analysis
```bash
npm run type-check   # 타입 체크
npm run lint         # 린트
```
**통과**: 에러 0개

### 2. Unit Testing
```bash
npm test -- --coverage
```
**통과**: 모든 테스트 통과, 커버리지 80%+

### 3. Build Test
```bash
npm run build
```
**통과**: 빌드 성공

### 4. Self-Review Checklist
- [ ] SQL Injection 취약점 없음
- [ ] XSS 취약점 없음
- [ ] 엣지 케이스 처리
- [ ] 에러 핸들링 충분
- [ ] N+1 쿼리 없음
- [ ] 불필요한 복잡성 없음

---

## Retry Policy

| Attempt | Action |
|---------|--------|
| 1 | 자동 수정 시도 (lint --fix) |
| 2 | 분석 후 수동 수정 |
| 3 | 다른 접근법 시도 |
| Fail | Jian에게 에스컬레이션 |

---

## Verification Report Template

```markdown
# ✅ Verification Report

| Check | Status | Details |
|-------|--------|---------|
| Types | ✅/❌ | ... |
| Lint | ✅/❌ | ... |
| Tests | ✅/❌ | Coverage: X% |
| Build | ✅/❌ | ... |

**Result**: ✅ ALL PASSED / ❌ FAILED
```

---

## Quality Improvement

| Metric | Without Loop | With Loop |
|--------|--------------|-----------|
| 버그 발생률 | 100% | 30-40% |
| 코드 품질 | 기준 | 2-3x 향상 |
