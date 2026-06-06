#!/bin/bash
# lottery-analyzer 一键安装脚本 (macOS/Linux)
# 用法: curl -fsSL <url> | bash

set -e

SKILL_NAME="lottery-analyzer"
SKILLS_DIR="$HOME/.claude/skills/$SKILL_NAME"
SKILL_URL="https://raw.githubusercontent.com/shimenghan6/lottery-analyzer/main/SKILL.md"

echo "========================================"
echo "  lottery-analyzer Skill 安装"
echo "========================================"
echo ""

# 检查 Claude Code skills 目录
if [ ! -d "$HOME/.claude/skills" ]; then
    echo "[错误] 未找到 ~/.claude/skills/ 目录"
    echo "请先安装 Claude Code"
    exit 1
fi

# 创建 skill 目录
mkdir -p "$SKILLS_DIR"
echo "[创建] $SKILLS_DIR"

# 下载 SKILL.md
echo "[下载] $SKILL_URL"
if command -v curl &> /dev/null; then
    curl -fsSL "$SKILL_URL" -o "$SKILLS_DIR/SKILL.md"
elif command -v wget &> /dev/null; then
    wget -q "$SKILL_URL" -O "$SKILLS_DIR/SKILL.md"
else
    echo "[错误] 需要 curl 或 wget"
    exit 1
fi

echo "[完成] SKILL.md 已保存到 $SKILLS_DIR/SKILL.md"
echo ""
echo "========================================"
echo "  安装完成！"
echo "========================================"
echo ""
echo "使用方法:"
echo "  在 Claude Code 中说: \"帮我分析世界杯投注方案，预算1000元\""
echo "  或说: \"竞彩分析\" \"14场预测\" \"买球方案\""
echo ""
