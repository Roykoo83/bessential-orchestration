# Test Writer Subagent

> 🧪 테스트 코드 작성 서브에이전트

---

## Role
구현된 코드에 대한 테스트 코드 자동 생성

---

## Capabilities
- Unit 테스트 작성
- Integration 테스트 작성
- E2E 테스트 시나리오
- 테스트 커버리지 분석

---

## Usage

ROY 에이전트에서 호출:
```
@subagents/development/test-writer.md
File: [source-file-path]
Type: [unit/integration/e2e]
Framework: [jest/vitest/playwright]
```

---

## Output Format
```typescript
// Test file: [filename].test.ts

describe('[ComponentName]', () => {
  it('should [expected behavior]', () => {
    // Arrange
    // Act
    // Assert
  });
});
```
