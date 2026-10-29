# Quick Ops Automation Platform

一个专为运维团队打造的智能运维自动化平台，基于 Amazon Quick 构建，集成监控告警、故障分析、自动化工作流和知识管理等功能。

## 🎯 核心功能

### 1. **日常巡检系统**
- 自动执行系统健康检查
- 实时监控 CPU、内存、磁盘、网络等关键指标
- 性能异常自动告警（CPU>80%、磁盘>90%等）
- 结构化巡检摘要报告生成

### 2. **告警分析与故障排查**
- 实时告警聚合与去重
- 告警分类和优先级排序
- 关联故障识别和根因分析
- 历史工单和 SOP 推荐

### 3. **Agent 运行监控**
- 监控各 Agent 的调用成功率和响应时间
- Token 消耗量统计与分析
- 异常调用自动预警
- 知识库命中率评估

### 4. **安全巡检与审计**
- 安全事件趋势分析
- Agent 操作记录审查和异常检测
- 合规性评估

### 5. **知识库与 SOP 管理**
- 故障现象自动匹配 SOP
- 标准化操作步骤指导
- 历史工单查询和复用
- 系统架构文档维护

## 📁 项目结构

```
quick-ops-automation/
├── docs/                    # 项目文档
│   ├── ARCHITECTURE.md      # 系统架构设计
│   ├── INSTALLATION.md      # 安装部署指南
│   ├── API_GUIDE.md         # API 使用指南
│   ├── SOP/                 # 标准操作规程
│   └── TROUBLESHOOTING.md   # 故障排查指南
├── src/                     # 源代码
│   ├── agents/              # 自定义 Agent 实现
│   ├── core/                # 核心模块
│   ├── integrations/        # 第三方集成
│   └── models/              # 数据模型
├── config/                  # 配置文件
├── scripts/                 # 辅助脚本
├── tests/                   # 测试用例
├── examples/                # 使用示例
├── requirements.txt         # Python 依赖
├── Makefile                 # Make 命令
├── CONTRIBUTING.md          # 贡献指南
├── LICENSE                  # MIT License
└── CHANGELOG.md             # 变更历史
```

## 🚀 快速开始

### 前置要求
- Python 3.8+
- Amazon Quick SDK
- Git

### 安装步骤

1. **克隆仓库**
   ```bash
   git clone https://github.com/gaoshanj/quick-ops-automation.git
   cd quick-ops-automation
   ```

2. **创建虚拟环境**
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   # or
   venv\\Scripts\\activate   # Windows
   ```

3. **安装依赖**
   ```bash
   pip install -r requirements.txt
   ```

4. **配置环境变量**
   ```bash
   cp config/default.yaml .env.yaml
   # 编辑 .env.yaml 填入你的 Quick API Key 等配置
   ```

5. **验证安装**
   ```bash
   make test
   ```

## 📚 使用示例

### 例子 1：执行日常巡检
```python
from src.agents.inspection_agent import InspectionAgent

agent = InspectionAgent()
report = agent.daily_inspection()
print(report.summary)
```

### 例子 2：分析告警
```python
from src.agents.alert_analyzer import AlertAnalyzer

analyzer = AlertAnalyzer()
alerts = analyzer.fetch_active_alerts()
prioritized = analyzer.prioritize_and_analyze(alerts)
```

### 例子 3：生成诊断报告
```python
from src.models.report import DiagnosisReport

report = DiagnosisReport()
report.add_alert_overview(alerts)
report.suggest_solutions()
report.export_to_pdf('diagnosis_report.pdf')
```

## 🛠️ 开发指南

### 开发流程

```bash
# 创建特性分支
git checkout -b feature/your-feature-name

# 安装开发依赖
make dev

# 运行测试
make test

# 代码检查
make lint

# 代码格式化
make format

# 提交并推送
git push origin feature/your-feature-name
```

### 代码规范
- Python 代码遵循 [PEP 8](https://www.python.org/dev/peps/pep-0008/)
- 使用 `black` 进行代码格式化
- 使用 `pylint` 进行代码检查
- 所有公共函数需要文档字符串

## 📖 文档

- [系统架构设计](docs/ARCHITECTURE.md)
- [API 使用指南](docs/API_GUIDE.md)
- [部署指南](docs/INSTALLATION.md)
- [SOP 文档库](docs/SOP/)
- [故障排查指南](docs/TROUBLESHOOTING.md)
- [贡献指南](CONTRIBUTING.md)

## 🤝 贡献

欢迎贡献代码、报告问题或提出改进建议！详见 [贡献指南](CONTRIBUTING.md)

### 报告问题

如遇到问题，请通过 [GitHub Issues](https://github.com/gaoshanj/quick-ops-automation/issues) 报告。

## 📄 许可

MIT License - 详见 [LICENSE](LICENSE) 文件

## 📞 联系与支持

- 📧 Email: support@example.com
- 💬 Slack: #ops-automation
- 📚 文档: https://quick-ops-automation.readthedocs.io

## 🗺️ 路线图

- [x] 基础架构设计
- [x] 日常巡检系统
- [ ] AI 驱动的故障诊断
- [ ] 自动修复引擎
- [ ] 多云支持（AWS/Azure/GCP）
- [ ] 成本优化建议
- [ ] 实时仪表板

## 📈 项目统计

![GitHub last commit](https://img.shields.io/github/last-commit/gaoshanj/quick-ops-automation)
![GitHub license](https://img.shields.io/github/license/gaoshanj/quick-ops-automation)
![Python](https://img.shields.io/badge/Python-3.8%2B-blue)

---

**Made with ❤️ for DevOps teams** | Powered by [Amazon Quick](https://quick.amazon.com)
