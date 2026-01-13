# Testing Skill

> 테스팅 스킬

---

## Activation
```
@skills/testing.md
```

---

## Test Types

### 1. Unit Tests
- 개별 함수/컴포넌트 테스트
- 외부 의존성 모킹
- 빠른 실행

### 2. Integration Tests
- 여러 모듈 통합 테스트
- DB/API 연동 테스트

### 3. E2E Tests
- 전체 사용자 플로우
- 브라우저 자동화

---

## Test Structure (AAA Pattern)

```typescript
describe('[Feature]', () => {
  it('should [expected behavior]', () => {
    // Arrange - 준비
    const input = 'test';
    
    // Act - 실행
    const result = functionUnderTest(input);
    
    // Assert - 검증
    expect(result).toBe('expected');
  });
});
```

---

## Coverage Goals
- Statements: 80%
- Branches: 70%
- Functions: 80%
- Lines: 80%
