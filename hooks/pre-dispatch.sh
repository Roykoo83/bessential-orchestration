#!/bin/bash
# Pre-Dispatch Hook
# 작업 분배 전 실행

TASK_FILE=$1
AGENT=$2

echo "📋 Pre-Dispatch Hook"
echo "   Task: $TASK_FILE"
echo "   Agent: $AGENT"

# 작업 파일 유효성 검사
if [ ! -f "$TASK_FILE" ]; then
    echo "❌ Task file not found: $TASK_FILE"
    exit 1
fi

# 에이전트 폴더 존재 확인
TASK_DIR=".orchestration/tasks/$AGENT"
if [ ! -d "$TASK_DIR" ]; then
    mkdir -p "$TASK_DIR"
    echo "✅ Created task directory: $TASK_DIR"
fi

echo "✅ Pre-dispatch checks passed"
