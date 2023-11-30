import TodoItem from "../view/TodoItem";

@Entry
@Component
struct Index {
  @State tasks: Array<string> = ["10点起床", "13点上班", "15点下班"]

  build() {
    Column() {
      Text('待办')
        .fontSize('30fp')
        .fontWeight(FontWeight.Bold)
        .width('80%')
        .margin({ bottom: '15vp', top: '44vp' })
        .textAlign(TextAlign.Start)
        .lineHeight('33vp')

      ForEach(this.tasks, (item: string) => {
        TodoItem({ content: item })
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
  }
}