@Observed
export class WorkoutTimerModel {
  isActive: boolean = false
  isWorkPhase: boolean = true
  currentRound: number = 1
  secondsRemaining: number

  private readonly workDuration: number
  private readonly restDuration: number
  private readonly totalRounds: number
  private timerID: number = 0

  constructor(
    workDuration: number = 30,
    restDuration: number = 10,
    totalRounds: number = 5
  ) {
    this.workDuration = workDuration
    this.restDuration = restDuration
    this.totalRounds = totalRounds
    this.secondsRemaining = workDuration
  }

  formatTime(
    seconds: number
  ): string {
    const mins: number = Math.floor(
      seconds / 60
    )
    const secs: number = seconds % 60
    return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`
  }

  toggleTimer(
    onTick: () => void
  ): void {
    if (this.isActive) {
      clearInterval(
        this.timerID
      )
    } else {
      this.timerID = setInterval(
        () => {
          this.secondsRemaining -= 1
          if (this.secondsRemaining <= 0) {
            this.nextPhase()
          }
          onTick()
        },
        1000
      ) as number
    }
    this.isActive = !this.isActive
  }

  nextPhase(): void {
    if (this.isWorkPhase) {
      this.isWorkPhase = false
      this.secondsRemaining = this.restDuration
    } else {
      this.isWorkPhase = true
      this.secondsRemaining = this.workDuration
      this.currentRound += 1
      if (this.currentRound > this.totalRounds) {
        clearInterval(
          this.timerID
        )
        this.isActive = false
        this.currentRound = this.totalRounds
      }
    }
  }

  resetWorkout(): void {
    clearInterval(
      this.timerID
    )
    this.isActive = false
    this.isWorkPhase = true
    this.currentRound = 1
    this.secondsRemaining = this.workDuration
  }

  getRounds(): number[] {
    const out: number[] = []
    for (
      let i = 1;
      i <= this.totalRounds;
      i++
    ) {
      out.push(
        i
      )
    }
    return out
  }

  getTotalRounds(): number {
    return this.totalRounds
  }
}
