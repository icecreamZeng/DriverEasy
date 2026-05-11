# DriverEasy — 鸿蒙驾考理论 App

## 项目信息

- **名称**: DriverEasy
- **技术栈**: ArkTS + ArkUI（鸿蒙原生）
- **IDE**: DevEco Studio
- **GitHub**: https://github.com/icecreamZeng/DriverEasy
- **目标 API**: HarmonyOS API 12+

## 题库数据

```typescript
interface Question {
  subject: 1 | 4            // 科目一(1) 或 科目四(4)
  id: number
  type: 'judge' | 'single' | 'multi'
  question: string
  options: string[]
  answer: string            // 正确答案（字符串表示）
  explanation: string       // 解析
  chapter: string
  difficulty: 'easy' | 'medium' | 'hard'
  hasImage: boolean
  imageUrl: string
  errorRate: number
}
```

- 题库文件：`questions.json`（项目根目录，~2.6MB，4378 题）
- 数据来源：[doupoa/DrivingTestSubjectOne](https://github.com/doupoa/DrivingTestSubjectOne)，最后更新 2022 年
- 注意：部分题目涉及记分规则的可能已过时

## 项目结构

```
entry/src/main/ets/
├── pages/          # 页面
├── components/     # 可复用组件
├── model/          # 数据模型
├── service/        # 业务逻辑
└── util/           # 工具函数
```

## 功能规划

- [x] 科目一 + 科目四双科题库
- [ ] 刷题模式（顺序/随机/章节）
- [ ] 模拟考试（计时 + 计分）
- [ ] 错题本（本地持久化）
- [ ] 答题统计（正确率曲线）
- [ ] AI 答疑接入

## ArkTS 语法参考

完整 ArkTS + HarmonyOS 语法手册请参阅：

`~/hermes-workspace/arkts-reference.md`

包括：所有 ArkUI 组件、状态管理（@State/@Prop/@Link/@Provide/@Consume）、弹窗（@CustomDialog）、路由、网络请求、数据持久化、15 条避坑指南等。
