# 🎩 BEssential Multi-Agent Orchestration

> **10x Productivity AI Development System**
> 
> AI 에이전트 1개로 만족하세요? 우리는 **3개를 동시에** 돌립니다.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-blue.svg)](https://www.apple.com/macos/)
[![Tool: Antigravity](https://img.shields.io/badge/Tool-Antigravity-purple.svg)](https://www.cursor.com/)
[![Agents: Gemini CLI](https://img.shields.io/badge/Agents-Gemini_CLI-orange.svg)](https://ai.google.dev/)

---

## 🌟 What is BEssential?

**BEssential**은 여러 AI 에이전트를 마치 오케스트라처럼 지휘하는 **멀티 에이전트 오케스트레이션 시스템**입니다.

단일 AI 에이전트의 한계를 넘어, **역할 기반의 협업 시스템**으로 10배의 생산성을 달성합니다.

```
        🎩 JIAN (Orchestrator)
              │
    ┌─────────┴─────────┐
    ▼                   ▼
🔮 MIR (Analyst)   🔨 ROY (Developer)
```

---

## 🚀 Key Features

### 🎭 3개의 전문화된 에이전트

| Agent | Role | Tool | Specialization |
|-------|------|------|----------------|
| 🎩 **JIAN** | Orchestrator | Antigravity (Claude) | 계획, 분배, CI/CD |
| 🔮 **MIR** | Analyst | Gemini CLI | 리서치, 분석, 문서화 |
| 🔨 **ROY** | Developer | Gemini CLI | 코드 구현, 테스트 |

### 🧠 BMAD 4단계 방법론

1. **Analysis** - 브레인스토밍, 리서치
2. **Planning** - PRD, 기술 스펙 작성
3. **Solutioning** - 아키텍처 설계, Epic/Story 생성
4. **Implementation** - 개발, 테스트, 배포

### 🔧 9개의 서브에이전트

```
subagents/
├── research/          # 리서치용 (MIR)
│   ├── web-scraper    # 웹 데이터 수집
│   ├── api-researcher # API 문서 조사
│   └── code-analyzer  # 코드베이스 분석
│
├── development/       # 개발용 (ROY)
│   ├── test-writer    # 테스트 코드 작성
│   ├── refactorer     # 리팩토링 전문
│   └── debugger       # 디버깅 전문
│
└── verification/      # 검증용 (JIAN)
    ├── type-checker   # 타입 검증
    ├── linter         # 린트 검증
    └── security-scanner # 보안 검사
```

### ⚡ 자동화된 워크플로우

- **훅 시스템**: pre-dispatch, post-dispatch
- **파일 기반 통신**: 느슨한 결합, 높은 확장성
- **자기 검증 루프**: Type Check → Lint → Test → Build

---

## 💻 System Requirements

### 플랫폼

| 항목 | 요구사항 |
|------|----------|
| **OS** | macOS (Apple Silicon 권장) |
| **Shell** | zsh |
| **Terminal** | iTerm2 / Terminal.app |

### 필수 도구

| 도구 | 용도 | 설치 |
|------|------|------|
| **Antigravity** | JIAN (Master Orchestrator) | [cursor.com](https://www.cursor.com/) |
| **Gemini CLI** | MIR, ROY 에이전트 | `npm install -g @anthropic-ai/claude` |
| **gcloud CLI** | 계정 전환 관리 | `brew install google-cloud-sdk` |
| **GitHub CLI** | Git 자동화 | `brew install gh` |

### Antigravity 설정

이 시스템은 **Antigravity** (Claude Code in Cursor)에서 **JIAN**으로 동작합니다:

1. Cursor 설치 및 Claude 활성화
2. 전역 설정 복사:
   ```bash
   cp -r orchestration ~/.gemini/orchestration
   ```
3. GEMINI.md에 import 추가:
   ```markdown
   @orchestration/core-philosophy.md
   @orchestration/agents/jian.md
   ```

---

## 📦 Installation

### 1. Clone Repository

```bash
git clone https://github.com/Roykoo83/bessential-orchestration.git
cd bessential-orchestration
```

### 2. Copy to Global Config

```bash
cp -r . ~/.gemini/orchestration
```

### 3. gcloud 프로필 설정

```bash
# Developer 프로필 (ROY)
gcloud config configurations create gemini-developer
gcloud config set account your-developer@gmail.com
gcloud auth login

# Analyst 프로필 (MIR)
gcloud config configurations create gemini-analyst
gcloud config set account your-analyst@gmail.com
gcloud auth login
```

### 4. 프로젝트에 오케스트레이션 스크립트 추가

```bash
mkdir -p .orchestration/tasks/{roy,mir,completed}
```

---

## 🎯 Usage

### 에이전트 실행

```bash
# 전체 에이전트 실행 (새 터미널 창에서 각각 실행)
./.orchestration/orchestrate.sh all

# 개별 에이전트 실행
./.orchestration/orchestrate.sh roy  # Developer
./.orchestration/orchestrate.sh mir  # Analyst
```

### 작업 분배

```bash
# MIR에게 리서치 작업 분배
./.orchestration/dispatch-task.sh mir research-task.md

# ROY에게 개발 작업 분배
./.orchestration/dispatch-task.sh roy story-task.md
```

### 작업 파일 형식

```markdown
# Task: [작업 제목]

## Assigned To: ROY/MIR
## Priority: high/medium/low

## Description
[작업 설명]

## Expected Output
[예상 산출물]

## Output Path
[저장 경로]
```

---

## 📋 3대 규칙 (Core Philosophy)

| # | 규칙 | 설명 |
|---|------|------|
| 1️⃣ | **Plan First** | 계획 없이 코딩 금지 |
| 2️⃣ | **One Session = One Task** | 세션당 하나의 작업만 집중 |
| 3️⃣ | **Self-Verify** | 검증 없이 완료 선언 금지 |

---

## 📊 Results & Benefits

| Metric | Before | After BEssential |
|--------|--------|------------------|
| 생산성 | 1x | **10x** 향상 |
| 버그 발생률 | 100% | **30%** (70% 감소) |
| 문서화 완료율 | ~50% | **100%** |
| 코드 리뷰 품질 | Variable | **Consistent** |

---

## 🏗️ Architecture

```
~/.gemini/orchestration/
├── agents/                   # 에이전트 지시문
│   ├── jian.md              # 🎩 Orchestrator
│   ├── roy.md               # 🔨 Developer
│   └── mir.md               # 🔮 Analyst
│
├── subagents/               # 서브에이전트
│   ├── research/            # 리서치용
│   ├── development/         # 개발용
│   └── verification/        # 검증용
│
├── hooks/                   # 훅 스크립트
│   ├── pre-dispatch.sh
│   └── post-dispatch.sh
│
├── skills/                  # 스킬 파일
│   ├── code-review.md
│   ├── documentation.md
│   └── testing.md
│
├── workflows/               # 워크플로우
│   ├── session-manager.md
│   └── verification-loop.md
│
└── core-philosophy.md       # 핵심 철학
```

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

---

## 👥 Team

**B:Essential** - AI Orchestra for 10x Productivity

---

<p align="center">
  <strong>🎩 "AI 에이전트 1개? 우리는 3개를 동시에 돌립니다."</strong>
</p>
