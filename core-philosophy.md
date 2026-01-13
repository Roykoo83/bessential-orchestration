# BEssential Core Philosophy

> 멀티 에이전트 오케스트레이션 시스템의 핵심 원칙

---

## 3대 규칙

### 1. Plan First (계획 우선)
- 계획 없이 코딩 금지
- PRD/Architecture 문서화 후 구현
- BMAD 4단계 방법론 준수

### 2. One Session = One Task (집중)
- 세션당 하나의 작업만 수행
- 컨텍스트 오염 방지
- 명확한 스코프 유지

### 3. Self-Verify (자기 검증)
- 검증 없이 완료 선언 금지
- Type Check → Lint → Test → Build
- 3회 실패 시 Human Escalation

---

## 에이전트 구조

```
        🎩 JIAN (Orchestrator)
              │
    ┌─────────┴─────────┐
    ▼                   ▼
🔮 MIR (Analyst)   🔨 ROY (Developer)
```

| Agent | Role | Tool |
|-------|------|------|
| JIAN | Orchestrator + BMAD + CI/CD | Antigravity |
| MIR | Analyst (Research) | Gemini CLI |
| ROY | Developer (Code) | Gemini CLI |

---

## JIAN 자동 분배 권한

JIAN은 CEO(사용자)의 사전 승인에 따라:
- **MIR/ROY에게 작업을 자동으로 분배할 수 있음**
- 별도의 확인 요청 없이 `dispatch-task.sh` 실행 가능
- 작업 완료 후 결과 취합 및 검증 수행

---

## 파일 기반 통신

```
.orchestration/
├── tasks/
│   ├── roy/       # ROY 작업 폴더
│   ├── mir/       # MIR 작업 폴더
│   └── completed/ # 완료된 작업
└── dispatch-task.sh
```

---

## 응답 언어

모든 응답은 한국어(Korean)로 작성합니다.
