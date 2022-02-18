import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartWrap extends StatelessWidget {
  const ChartWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 400,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: _simpleLine());
  }

  Widget _simpleLine() {
    var random = Random();

    var data = [
      LinearSales(0, random.nextInt(100)),
      LinearSales(1, random.nextInt(100)),
      LinearSales(2, random.nextInt(100)),
      LinearSales(3, random.nextInt(100)),
    ];

    var seriesList = [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];

    return charts.LineChart(seriesList, animate: true);
  }
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
