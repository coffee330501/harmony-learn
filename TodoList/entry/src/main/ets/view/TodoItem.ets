@Component
export default struct TodoItem {
  private content?: string;
  @State private done: boolean = false;

  build() {
    Row() {
      if (!this.done) {
        Image($r("app.media.ic_default")).size({ width: '28vp', height: '28vp' }).margin({left:15})
      } else {
        Image($r("app.media.ic_ok")).size({ width: '28vp', height: '28vp' }).margin({left:15})
      }
      Text(this.content)
        .fontSize("24fp")
        .margin({ left: '10vp' })
        .opacity(this.done ? 0.4 : 1)
        .decoration({ type: this.done ? TextDecorationType.LineThrough : TextDecorationType.None })
    }
    .borderRadius('24vp')
    .backgroundColor('#ffffff')
    .width('90%')
    .height('50vp')
    .margin({top:15})
    .onClick(() => this.done = !this.done);
  }
}