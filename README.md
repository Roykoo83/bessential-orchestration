# BEssential Multi-Agent Orchestration

> 🎩 AI 에이전트 오케스트레이션 시스템 설정

## 개요

BEssential 멀티 에이전트 시스템의 전역 설정 파일입니다.

## 구조

```
orchestration/
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
├── skills/                  # 스킬 파일
├── workflows/               # 워크플로우
└── core-philosophy.md       # 핵심 철학
```

## 사용법

### 1. 설치

```bash
cp -r orchestration ~/.gemini/orchestration
```

### 2. gcloud 프로필 설정

```bash
# Developer 프로필
gcloud config configurations create gemini-developer
gcloud auth login

# Analyst 프로필
gcloud config configurations create gemini-analyst
gcloud auth login
```

### 3. 에이전트 실행

```bash
# 개발자 에이전트
gcloud config configurations activate gemini-developer && gemini

# 분석가 에이전트
gcloud config configurations activate gemini-analyst && gemini
```

## 3대 규칙

1. **Plan First** — 계획 없이 코딩 금지
2. **One Session = One Task** — 세션당 하나의 작업
3. **Self-Verify** — 검증 없이 완료 선언 금지

## 라이선스

MIT License

## 작성자

B:Essential Team
