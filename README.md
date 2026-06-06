# lottery-analyzer

> 🎯 打开竞彩网计算器，选几场比赛，点「查看方案」——出来的那个格式，就是这个 Skill 的输出格式。不用自己算赔率，不用猜阵容，所有数据从官方实时抓取。

**竞彩/传统足彩全玩法分析 + 投注方案生成器** | 支持世界杯、欧洲杯、五大联赛、日职等任意赛事

## 能做什么

- 🏆 **冠军/冠亚军竞猜**：逐队深度评估（阵容+伤病+队内矛盾+外界因素）→ 推荐排名
- ⚽ **竞彩全玩法**：SPF、让球、总进球、半全场、比分、混合过关 → 每场精确到赔率×金额=输出
- 📋 **传统足彩**：14场胜负、任选9场、6场半全场、4场进球 → 复式投注结构+注数+倍数
- 📊 **盈亏分析**：10种场景，从绝对最坏到终极梦想 → 安全垫+保本线+净利润
- 🛒 **执行清单**：按日期分步，精确到每张票

## 铁律

```
❌ 绝不编造赔率数据
✅ 所有赔率从竞彩网官方计算器实时抓取
✅ 每场必须搜索5维度情报（球员+矛盾+外界+状态+盘口）
✅ 输出格式 = 官方计算器「查看方案」格式
```

## 一键安装

### Windows
```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/shimenghan6/lottery-analyzer/main/install.ps1 | iex"
```

### macOS / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/shimenghan6/lottery-analyzer/main/install.sh | bash
```

## 使用

在 Claude Code 中说：
- "帮我分析世界杯投注方案，预算1000元"
- "14场胜负预测"
- "竞彩单关推荐"
- "帮我看这场怎么买"

Skill 自动激活，按8步流程执行。

## 依赖

- Claude Code
- Chrome DevTools MCP（用于抓取竞彩网实时数据）
- 中国体育彩票实体店（唯一合法购买渠道）

## License

MIT
