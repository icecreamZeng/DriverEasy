# DriverEasy 🚗

> 鸿蒙（HarmonyOS）科目一 AI 刷题 App

## 概述

DriverEasy 是一款基于 **HarmonyOS Next** 开发的驾照科目一考试辅助学习 App。利用 AI（DeepSeek API）实现个性化错题突破，帮助考生高效备考。

## 功能

- **全题库覆盖** — 4378 道科目一试题，含判断题、单选题、多选题
- **随机刷题** — 按章节、难度、错题率筛选练习
- **智能重点突破** — AI 分析薄弱知识点，针对性出题
- **错题本** — 自动记录错题，支持反复练习
- **模拟考试** — 随机组卷，模拟真实考试环境
- **自动更新题库** — 题库从 GitHub 在线拉取，无需手动更新

## 题库数据

每道题包含：
| 字段 | 说明 |
|------|------|
| question | 题目文本 |
| options | 选项列表（A/B/C/D） |
| answer | 正确答案 |
| type | 题型（1=单选, 2=多选, 3=判断） |
| chapter | 章节分类 |
| difficulty | 难度等级（1-5） |
| errorRate | 历史错题率 |
| explanation | 答案解析 |
| hasImage | 是否包含图片 |

数据来源：[doupoa/DrivingTestSubjectOne](https://github.com/doupoa/DrivingTestSubjectOne)

## 技术栈

- **语言**：ArkTS（HarmonyOS）
- **IDE**：DevEco Studio
- **AI 辅助**：OpenCode + DeepSeek API
- **题库存储**：GitHub 在线 JSON

## 开发环境

- macOS (M1) + DevEco Studio
- 真机调试：鸿蒙手机 + 开发者账号

## 许可证

MIT
