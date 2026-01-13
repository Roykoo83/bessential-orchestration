# Code Review Skill

> 코드 리뷰 스킬

---

## Activation
```
@skills/code-review.md
```

---

## Checklist

### 1. 코드 품질
- [ ] 네이밍 컨벤션 준수
- [ ] 중복 코드 없음
- [ ] 함수 길이 적절 (< 50줄)
- [ ] 복잡도 낮음 (< 10)

### 2. 보안
- [ ] 입력 검증
- [ ] SQL 인젝션 방지
- [ ] XSS 방지
- [ ] 시크릿 하드코딩 없음

### 3. 성능
- [ ] 불필요한 루프 없음
- [ ] 메모리 누수 없음
- [ ] N+1 쿼리 없음

### 4. 테스트
- [ ] 유닛 테스트 작성
- [ ] 엣지 케이스 커버
- [ ] 테스트 통과

---

## Output Format
```markdown
## Code Review: [PR/File]

### Summary
[overall assessment]

### Approved: ✅/❌

### Issues
- [issue1]
- [issue2]

### Suggestions
- [suggestion1]
```
