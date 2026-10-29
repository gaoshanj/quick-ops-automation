# 贡献指南

感谢你对 Quick Ops Automation 项目的兴趣！我们欢迎来自社区的贡献。

## 开发流程

### 1. Fork 和 Clone

```bash
git clone https://github.com/YOUR_USERNAME/quick-ops-automation.git
cd quick-ops-automation
git remote add upstream https://github.com/gaoshanj/quick-ops-automation.git
```

### 2. 创建特性分支

```bash
git checkout -b feature/your-feature-name
```

分支命名规范：
- `feature/` - 新功能
- `bugfix/` - 错误修复
- `docs/` - 文档更新
- `refactor/` - 代码重构
- `chore/` - 维护任务

### 3. 开发和测试

```bash
# 安装开发依赖
make dev

# 编写代码后运行测试
make test

# 代码检查
make lint

# 代码格式化
make format
```

### 4. 提交代码

遵循 [Conventional Commits](https://www.conventionalcommits.org/zh-hans/) 格式：

```
<type>(<scope>): <subject>

<body>

<footer>
```

**例子**：
```
feat(alert): add alert deduplication algorithm

Implement a new deduplication mechanism that groups similar alerts
into a single aggregated alert to reduce notification noise.

Closes #123
```

**Type 列表**：
- `feat` - 新功能
- `fix` - 错误修复
- `docs` - 文档更新
- `style` - 代码风格（无功能变化）
- `refactor` - 代码重构
- `perf` - 性能优化
- `test` - 测试更新
- `chore` - 维护任务

### 5. 提交 Pull Request

```bash
git push origin feature/your-feature-name
```

然后在 GitHub 上创建 Pull Request，填写以下内容：

```markdown
## 描述

[简述你的变更]

## 修复的问题

Closes #(issue)

## 变更类型

- [ ] Bug fix (non-breaking change that fixes an issue)
- [ ] New feature (non-breaking change that adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to change)
- [ ] Documentation update

## 测试

- [ ] 已添加测试用例
- [ ] 所有测试通过
- [ ] 代码覆盖率 > 80%

## 检查清单

- [ ] 代码遵循项目风格指南
- [ ] 自我审查了更改代码
- [ ] 添加了适当的注释
- [ ] 更新了相关文档
- [ ] 没有生成新警告
```

## 代码规范

### Python 代码风格

- 遵循 [PEP 8](https://www.python.org/dev/peps/pep-0008/)
- 使用 `black` 进行格式化
- 使用 `pylint` 和 `flake8` 检查
- 使用类型注解

### 文件结构

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Module docstring describing the module's purpose.

Author: Your Name
Date: 2026-01-01
"""

import logging
from typing import Optional, Dict, List

logger = logging.getLogger(__name__)


class YourClass:
    """Class docstring."""

    def your_method(self, param: str) -> Optional[Dict]:
        """
        Method docstring.

        Args:
            param: Parameter description

        Returns:
            Return value description

        Raises:
            ValueError: When something is invalid
        """
        pass
```

### 函数文档

所有公共函数必须包含文档字符串：

```python
def function_name(arg1: str, arg2: int) -> bool:
    """
    Short description.

    Long description if needed.

    Args:
        arg1: First argument description
        arg2: Second argument description

    Returns:
        Description of return value

    Raises:
        ValueError: When validation fails
        RuntimeError: When operation fails

    Example:
        >>> function_name('test', 42)
        True
    """
```

## 测试要求

### 单元测试

```bash
pytest tests/unit/ -v
```

### 集成测试

```bash
pytest tests/integration/ -v
```

### 代码覆盖率

```bash
pytest tests/ --cov=src --cov-report=html
```

**覆盖率目标**：
- 总体：> 80%
- 关键路径：> 90%

## 文档要求

### 更新 README.md

如果添加新功能，请更新 README.md：

```markdown
## 新功能说明

简短描述你的功能。

### 使用示例

```python
# 代码示例
```
```

### 添加新的 SOP 文档

如果添加新的故障处理流程，请在 `docs/SOP/` 目录下创建对应的 Markdown 文件。

## 提交前检查清单

- [ ] 代码遵循风格指南
- [ ] 通过了所有测试
- [ ] 代码覆盖率 > 80%
- [ ] 没有 linting 错误
- [ ] 更新了相关文档
- [ ] 提交消息清晰准确
- [ ] 没有包含不必要的文件更改

## 报告问题

如发现 bug 或有改进建议，请通过 [GitHub Issues](https://github.com/gaoshanj/quick-ops-automation/issues) 报告。

### Issue 模板

```markdown
## 问题描述

清晰简洁地描述问题。

## 复现步骤

1. 步骤 1
2. 步骤 2
3. ...

## 期望行为

描述应该发生什么。

## 实际行为

描述实际发生了什么。

## 环境信息

- OS: [e.g. Ubuntu 20.04]
- Python: [e.g. 3.10]
- Quick SDK: [version]

## 附加信息

任何其他相关的信息，如错误日志、截图等。
```

## 行为准则

### 我们的承诺

在开放和欢迎的环境中，我们致力于使所有贡献者的参与成为骚扰、歧视、羞辱、虐待或其他不尊重的经历。

### 我们的标准

有助于创建积极环境的行为包括：

- 使用欢迎和包容的语言
- 尊重不同的观点和经历
- 接受建设性批评
- 关注最适合社区的内容
- 对其他社区成员表现同情

不可接受的行为包括：

- 骚扰性或贬低性的言论或图像
- 针对个人或群体的攻击
- 不受欢迎的性骚扰
- 发布他人私人信息
- 其他被认为不专业或不受欢迎的行为

## 获取帮助

- 📚 [文档](docs/)
- 💬 [讨论区](https://github.com/gaoshanj/quick-ops-automation/discussions)
- 📧 邮件：support@example.com

---

感谢你的贡献！🙏
