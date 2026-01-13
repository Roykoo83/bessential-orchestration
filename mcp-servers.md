# 🔌 MCP Servers Configuration

> Model Context Protocol - 외부 서비스 직접 접근
> 프로젝트 루트에 `.mcp.json` 파일로 설정

---

## Available Servers

| Server | Description | Default |
|--------|-------------|---------|
| filesystem | 로컬 파일 시스템 접근 | ✅ Enabled |
| supabase | Supabase DB 접근 | ✅ Enabled |
| github | GitHub 저장소 관리 | ✅ Enabled |
| memory | 장기 메모리 저장소 | ✅ Enabled |
| slack | Slack 메시지 | ❌ Disabled |
| notion | Notion 문서 | ❌ Disabled |
| google-drive | Google Drive | ❌ Disabled |
| web-search | 웹 검색 | ❌ Disabled |
| bigquery | BigQuery 분석 | ❌ Disabled |
| sentry | 에러 모니터링 | ❌ Disabled |

---

## Setup Instructions

### 1. 프로젝트 루트에 `.mcp.json` 생성

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@anthropics/mcp-filesystem", "."],
      "env": {
        "ALLOWED_PATHS": "./src,./tests,./docs"
      }
    },
    "supabase": {
      "command": "npx",
      "args": ["-y", "@anthropics/mcp-supabase"],
      "env": {
        "SUPABASE_URL": "${SUPABASE_URL}",
        "SUPABASE_SERVICE_KEY": "${SUPABASE_SERVICE_KEY}"
      }
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@anthropics/mcp-github"],
      "env": {
        "GITHUB_TOKEN": "${GITHUB_TOKEN}"
      }
    },
    "memory": {
      "command": "npx",
      "args": ["-y", "@anthropics/mcp-memory"],
      "env": {
        "MEMORY_STORE_PATH": "./.orchestration/memory"
      }
    }
  }
}
```

### 2. 환경변수 설정 (.env)

```bash
SUPABASE_URL=https://xxx.supabase.co
SUPABASE_SERVICE_KEY=eyJ...
GITHUB_TOKEN=ghp_...
```

### 3. 보안 주의사항

- `.mcp.json`은 Git에 커밋 (팀 공유)
- `.env`는 Git에서 제외 (민감 정보)
- 환경변수로 실제 값 관리
