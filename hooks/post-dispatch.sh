#!/bin/bash
# Post-Dispatch Hook
# 작업 분배 후 실행

TASK_FILE=$1
AGENT=$2

echo "📋 Post-Dispatch Hook"
echo "   Task: $TASK_FILE"
echo "   Agent: $AGENT"
echo "   Time: $(date '+%Y-%m-%d %H:%M:%S')"

# 로그 파일에 기록
LOG_FILE=".orchestration/dispatch.log"
echo "$(date '+%Y-%m-%d %H:%M:%S') - Dispatched $TASK_FILE to $AGENT" >> "$LOG_FILE"

echo "✅ Task dispatched and logged"
