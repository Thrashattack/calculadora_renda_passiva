import 'package:flutter/material.dart';
import 'package:passive_income_calculator/components/container.dart';

class PreviewPage extends DefaultContainer {
  PreviewPage(
      {required List<Map<String, double>> yearsToBigGoal,
      required BuildContext context})
      : super(
          child: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Table(
                  border: TableBorder.all(width: 1.0, color: Colors.black),
                  children: [
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    width: 2.0,
                                    color: Colors.green,
                                    style: BorderStyle.solid),
                                left: BorderSide(
                                    width: 2.0,
                                    color: Colors.green,
                                    style: BorderStyle.solid),
                                top: BorderSide(
                                    width: 2.0,
                                    color: Colors.green,
                                    style: BorderStyle.solid),
                                bottom: BorderSide(
                                    width: 2.0,
                                    color: Colors.green,
                                    style: BorderStyle.solid))),
                        children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Text("Ano", style: TextStyle(fontSize: 16)),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Text("Aporte Anual",
                                style: TextStyle(fontSize: 16)),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Text("Rendimento Anual",
                                style: TextStyle(fontSize: 16)),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Text("Valor Final",
                                style: TextStyle(fontSize: 16)),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Text("Renda Passiva Anual",
                                style: TextStyle(fontSize: 16)),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Text("Renda Passiva Mensal",
                                style: TextStyle(fontSize: 16)),
                          ),
                        ]),
                    ...yearsToBigGoal.map((year) {
                      return TableRow(children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "${yearsToBigGoal.indexOf(year) + 1}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "R\$ ${year['anualContrib']?.toStringAsFixed(2)}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "${year['anualYield']?.toStringAsFixed(2)} %",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "R\$ ${year['finalSavesAmount']?.toStringAsFixed(2)}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "R\$ ${year['currentlyPassiveIncomeYear']?.toStringAsFixed(2)}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "R\$ ${year['currentlyPassiveIncomeMonth']?.toStringAsFixed(2)}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]);
                    }).toList()
                  ]),
            ),
            SizedBox(
              height: 36,
            ),
            ElevatedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          title: 'Previsão',
        );
}
