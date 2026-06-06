# lottery-analyzer 一键安装脚本 (Windows)
# 用法: powershell -ExecutionPolicy Bypass -File install.ps1

$ErrorActionPreference = "Stop"
$SkillName = "lottery-analyzer"
$SkillsDir = "$env:USERPROFILE\.claude\skills\$SkillName"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  lottery-analyzer Skill 安装" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 检查 Claude Code skills 目录
if (-not (Test-Path "$env:USERPROFILE\.claude\skills")) {
    Write-Host "[错误] 未找到 ~/.claude/skills/ 目录" -ForegroundColor Red
    Write-Host "请先安装 Claude Code" -ForegroundColor Yellow
    exit 1
}

# 创建 skill 目录
if (-not (Test-Path $SkillsDir)) {
    New-Item -ItemType Directory -Path $SkillsDir -Force | Out-Null
    Write-Host "[创建] $SkillsDir" -ForegroundColor Green
}

# 下载 SKILL.md
$SkillUrl = "https://raw.githubusercontent.com/shimenghan6/lottery-analyzer/main/SKILL.md"
$SkillPath = "$SkillsDir\SKILL.md"

Write-Host "[下载] $SkillUrl" -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri $SkillUrl -OutFile $SkillPath -UseBasicParsing
    Write-Host "[完成] SKILL.md 已保存到 $SkillPath" -ForegroundColor Green
} catch {
    Write-Host "[错误] 下载失败: $_" -ForegroundColor Red
    Write-Host "请检查网络连接或手动下载" -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  安装完成！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "使用方法:" -ForegroundColor Yellow
Write-Host "  在 Claude Code 中说: " -NoNewline
Write-Host '"帮我分析世界杯投注方案，预算1000元"' -ForegroundColor White
Write-Host "  或说: " -NoNewline
Write-Host '"竞彩分析" "14场预测" "买球方案"' -ForegroundColor White
Write-Host ""
