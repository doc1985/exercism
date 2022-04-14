func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let percentDiscount = discount/100
  let amountToDiscount = (dailyRateFrom(hourlyRate: hourlyRate) * 22) * percentDiscount
  var amount = (dailyRateFrom(hourlyRate: hourlyRate) * 22) - amountToDiscount
  amount.round()
  return amount
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let percentDiscount = discount/100
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let amountToDiscount = dailyRate * percentDiscount
  var days =  budget / (dailyRate - amountToDiscount)
  days.round(.down)
  return days
}
