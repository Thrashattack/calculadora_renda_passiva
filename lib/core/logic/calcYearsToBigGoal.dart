List<Map<String, double>> calcYearsToBigGoal(
    double bigGoal, double passiveIncomeYield, double currentlyMonthSaves) {
  List<Map<String, double>> yearsToBigGoal = [];
  double anualContrib = 0.0;
  double finalSavesAmount = 0.0;

  while (anualContrib < bigGoal) {
    anualContrib = finalSavesAmount + (currentlyMonthSaves * 12);
    finalSavesAmount =
        anualContrib + (anualContrib * (passiveIncomeYield / 100));
    double currentlyPassiveIncomeYear =
        finalSavesAmount * (passiveIncomeYield / 100);
    double currentlyPassiveIncomeMonth = currentlyPassiveIncomeYear / 12;

    yearsToBigGoal.add({
      "anualContrib": anualContrib,
      "anualYield": passiveIncomeYield,
      "finalSavesAmount": finalSavesAmount,
      "currentlyPassiveIncomeYear": currentlyPassiveIncomeYear,
      "currentlyPassiveIncomeMonth": currentlyPassiveIncomeMonth
    });
  }

  return yearsToBigGoal;
}
