<p align="center">
  <img src="https://img.shields.io/badge/HarmonyOS_Next-000000?style=for-the-badge" alt="HarmonyOS Next"/>
  <img src="https://img.shields.io/badge/ArkTS-3178C6?style=for-the-badge&logo=typescript&logoColor=white" alt="ArkTS"/>
  <img src="https://img.shields.io/github/license/icecreamZeng/DriverEasy?style=for-the-badge" alt="License"/>
  <img src="https://img.shields.io/github/last-commit/icecreamZeng/DriverEasy?style=for-the-badge" alt="Last Commit"/>
</p>

<h1 align="center">🚗 DriverEasy</h1>
<p align="center"><b>鸿蒙原生 · 驾照理论 · AI 智能刷题</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/API-12%2B-00B96B?style=flat-square"/>
  <img src="https://img.shields.io/badge/题库-4378%20题-FF6B6B?style=flat-square"/>
  <img src="https://img.shields.io/badge/鸿蒙-纯血版-000000?style=flat-square"/>
  <img src="https://img.shields.io/badge/PRs-Welcome-brightgreen?style=flat-square"/>
</p>

---

## 📖 简介

**DriverEasy** 是一款基于 HarmonyOS Next（纯血鸿蒙）开发的驾照理论考试辅助学习 App。覆盖科目一（2,545 题）和科目四（1,833 题）共计 4,378 道题库，结合 AI 能力实现个性化错题突破，让备考更高效。

> 还在用纸质书刷题？该换种方式了 🎯

## ✨ 功能一览

| 功能 | 说明 |
|------|------|
| 📚 **全题库** | 4,378 题覆盖科目一 + 科目四全部考点（判断 / 单选 / 多选） |
| 🎯 **智能刷题** | 按科目、章节、难度、错题率自由筛选 |
| 🤖 **AI 重点突破** | 自动分析薄弱知识点，针对性强化训练 |
| 📕 **错题本** | 自动收录错题，反复练习直到掌握 |
| 📝 **模拟考试** | 科目一 / 科目四分模式模拟，随机组卷 100 题 |
| 🔄 **在线更新** | 题库云端同步，新增题目自动拉取 |
| 📊 **学习统计** | 正确率曲线、薄弱章节、错题分布一目了然 |

## 🚀 快速开始

### 环境要求

- DevEco Studio 5.0+
- HarmonyOS SDK API 12+
- 鸿蒙真机或模拟器

### 构建

```bash
# 克隆项目
git clone https://github.com/icecreamZeng/DriverEasy.git

# 用 DevEco Studio 打开项目根目录
# 同步依赖 → 运行
```

> 首次运行会自动从 GitHub 拉取最新题库数据。

## 🧩 技术栈

| 层 | 技术 |
|------|------|
| 编程语言 | ArkTS |
| 系统框架 | HarmonyOS Next |
| 开发工具 | DevEco Studio |
| AI 引擎 | 大模型 API |
| 数据存储 | GitHub 在线 JSON |
| 设计体系 | HarmonyOS Design |

## 📦 题库说明

### 数据格式

```json
{
  "id": "201904101025192...",
  "question": "驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？",
  "options": ["违章行为", "违法行为", "过失行为", "违规行为"],
  "answer": "B",
  "type": 1,
  "subject": 1,
  "chapter": "15",
  "difficulty": 3,
  "errorRate": "6",
  "explanation": "违反道路交通安全法就是违法行为。",
  "hasImage": false
}
```

### 题型分布

| 类型 | 数量 | 占比 |
|------|-----|------|
| 判断题 | 2,245 | 51% |
| 单选题 | 1,854 | 42% |
| 多选题 | 279 | 7% |

### 科目分布

| 科目 | 数量 | 占比 | 题型 |
|------|-----|------|------|
| 🟢 科目一 | 2,545 | 58% | 判断 + 单选 |
| 🔵 科目四 | 1,833 | 42% | 判断 + 单选 + 多选 |

### 数据来源

题库整理自 [doupoa/DrivingTestSubjectOne](https://github.com/doupoa/DrivingTestSubjectOne)，在此感谢原作者的整理工作。

> ⚠️ **免责声明**：题库数据来源于互联网公开资源，仅供个人学习与交流使用。如涉及侵权，请联系删除（提 Issue 或 PR 即可），我们会在收到通知后第一时间处理。

## 🤝 贡献

欢迎 PR！如有新增题目或发现错误，请直接提 Issue 或 PR。

## 📄 License

MIT © icecreamZeng
