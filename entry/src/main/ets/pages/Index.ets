import util from '@ohos.util';

@Entry
@Component
struct Index {
  @State totalQuestions: number = 0
  @State subject1Count: number = 0
  @State subject4Count: number = 0
  @State loading: boolean = true

  aboutToAppear(): void {
    this.loadQuestionStats()
  }

  async loadQuestionStats(): Promise<void> {
    try {
      // 从 rawfile 加载题库 JSON
      const context = getContext(this)
      const mgr = context.resourceManager
      const rawFile = await mgr.getRawFileContent('questions.json')
      const decoder = util.TextDecoder.create('utf-8')
      const text = decoder.decodeWithStream(rawFile.buffer)
      const data = JSON.parse(text)

      const questions: QuestionData[] = data.questions || data
      this.totalQuestions = questions.length
      this.subject1Count = questions.filter((q: QuestionData) => q.subject === 1).length
      this.subject4Count = questions.filter((q: QuestionData) => q.subject === 4).length
    } catch (e) {
      console.error('加载题库失败:', JSON.stringify(e))
    } finally {
      this.loading = false
    }
  }

  build() {
    Column() {
      // 标题区
      Column() {
        Text('DriverEasy')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#ff007aff')
        Text('驾考理论刷题')
          .fontSize(14)
          .fontColor('#ff666666')
          .margin({ top: 4 })
      }
      .alignItems(HorizontalAlign.Center)
      .width('100%')
      .margin({ top: 48 })

      // 统计卡片
      if (this.loading) {
        LoadingProgress()
          .width(32).height(32)
          .color('#ff007aff')
          .margin({ top: 48 })
      } else {
        Column() {
          // 总题数
          StatsCard({
            icon: '📚',
            label: '题库总量',
            value: `${this.totalQuestions}`,
            sub: '科目一 + 科目四'
          })

          Row() {
            // 科目一
            StatsCard({
              icon: '🛣️',
              label: '科目一',
              value: `${this.subject1Count}`,
              sub: '道路交通安全法律'
            })
              .layoutWeight(1)

            // 科目四
            StatsCard({
              icon: '🚦',
              label: '科目四',
              value: `${this.subject4Count}`,
              sub: '安全文明驾驶'
            })
              .layoutWeight(1)
          }
          .margin({ top: 12 })
        }
        .width('100%')
        .padding(16)
        .margin({ top: 24 })
      }

      // 操作按钮
      Column() {
        Button('开始练习')
          .width('100%')
          .height(48)
          .backgroundColor('#ff007aff')
          .fontColor(Color.White)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .borderRadius(12)
          .margin({ top: 32 })
          .onClick(() => {
            // TODO: 跳转到练习页
          })

        Button('模拟考试')
          .width('100%')
          .height(48)
          .backgroundColor(Color.White)
          .fontColor('#ff007aff')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .borderRadius(12)
          .border({ width: 1, color: '#ff007aff' })
          .margin({ top: 12 })
          .onClick(() => {
            // TODO: 跳转到模拟考试
          })

        Button('错题本')
          .width('100%')
          .height(48)
          .backgroundColor(Color.White)
          .fontColor('#ff333333')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .borderRadius(12)
          .border({ width: 1, color: '#ffdddddd' })
          .margin({ top: 12 })
          .onClick(() => {
            // TODO: 跳转到错题本
          })
      }
      .width('100%')
      .padding(16)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff5f5f5')
  }
}

@Component
struct StatsCard {
  @Prop icon: string = ''
  @Prop label: string = ''
  @Prop value: string = '0'
  @Prop sub: string = ''

  build() {
    Column() {
      Text(this.icon)
        .fontSize(24)
      Text(this.value)
        .fontSize(32)
        .fontWeight(FontWeight.Bold)
        .fontColor('#ff333333')
        .margin({ top: 4 })
      Text(this.label)
        .fontSize(14)
        .fontWeight(FontWeight.Medium)
        .fontColor('#ff007aff')
        .margin({ top: 2 })
      Text(this.sub)
        .fontSize(11)
        .fontColor('#ff999999')
        .margin({ top: 2 })
    }
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .padding(16)
    .backgroundColor(Color.White)
    .borderRadius(12)
    .shadow({ radius: 4, color: '#0d000000', offsetX: 0, offsetY: 2 })
  }
}

// 题库数据类型
interface QuestionData {
  subject: number
  id: number
  type: number
  question: string
  options: string[]
  answer: string
  explanation: string
}
