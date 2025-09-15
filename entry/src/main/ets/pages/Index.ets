import { WorkoutTimerModel } from '../models/WorkoutTimerModel'

@Entry
@Component
struct Index {
  @State model: WorkoutTimerModel = new WorkoutTimerModel()

  build() {
    Column() {
      Text(
        `Round ${this.model.currentRound} / ${this.model.getTotalRounds()}`
      )
        .fontSize(
          18
        )
        .fontColor(
          '#57606F'
        )
        .margin(
          { bottom: 10 }
        )

      Column() {
        Text(
          this.model.formatTime(
            this.model.secondsRemaining
          )
        )
          .fontSize(
            18
          )
          .fontWeight(
            FontWeight.Bold
          )
          .fontColor(
            '#2F3542'
          )
      }
      .margin(
        { bottom: 10 }
      )

      Row() {
        ForEach(
          this.model.getRounds(),
          (
            round: number
          ) => {
            Circle()
              .width(
                20
              )
              .height(
                20
              )
              .fill(
                round <= this.model.currentRound
                  ? (
                  this.model.isWorkPhase
                    ? '#FF4757'
                    : '#2ED573'
                )
                  : '#DFE4EA'
              )
              .margin(
                6
              )
          }
        )
      }
      .margin(
        { bottom: 10 }
      )

      Column() {
        Text(
          this.model.isWorkPhase
            ? 'WORK'
            : 'REST'
        )
          .fontSize(
            12
          )
          .fontWeight(
            FontWeight.Bold
          )
          .fontColor(
            Color.White
          )
      }
      .width(
        '90%'
      )
      .height(
        24
      )
      .justifyContent(
        FlexAlign.Center
      )
      .alignItems(
        HorizontalAlign.Center
      )
      .backgroundColor(
        this.model.isWorkPhase
          ? '#FF4757'
          : '#2ED573'
      )
      .borderRadius(
        16
      )
      .shadow(
        {
          radius: 8,
          color: '#00000020',
          offsetX: 2,
          offsetY: 2
        }
      )

      Row() {
        Button(
          this.model.isActive
            ? 'PAUSE'
            : 'START'
        )
          .onClick(
            () => this.model.toggleTimer(
              () => { }
            )
          )
          .width(
            '35%'
          )
          .height(
            30
          )
          .fontSize(
            8
          )
          .fontColor(
            Color.White
          )
          .backgroundColor(
            this.model.isActive
              ? '#FFA502'
              : '#1E90FF'
          )
          .borderRadius(
            12
          )
          .opacity(
            0.9
          )

        Button(
          'RESET'
        )
          .onClick(
            () => this.model.resetWorkout()
          )
          .width(
            '35%'
          )
          .height(
            30
          )
          .margin(
            { left: 20 }
          )
          .fontSize(
            8
          )
          .fontColor(
            Color.White
          )
          .backgroundColor(
            '#57606F'
          )
          .borderRadius(
            12
          )
          .opacity(
            0.9
          )
      }
      .justifyContent(
        FlexAlign.Center
      )
      .width(
        '100%'
      )
      .margin(
        { top: 20 }
      )
    }
    .width(
      '100%'
    )
    .height(
      '100%'
    )
    .justifyContent(
      FlexAlign.Center
    )
    .alignItems(
      HorizontalAlign.Center
    )
    .backgroundColor(
      '#F1F2F6'
    )
    .padding(
      20
    )
  }
}
