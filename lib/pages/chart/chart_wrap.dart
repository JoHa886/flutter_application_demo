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
        // padding: const EdgeInsets.all(4.0),
        margin: const EdgeInsets.only(top: 10.0),
        alignment: Alignment.center,
        child: _simpleLine());
  }

  Widget _simpleLine() {
    var random = Random();

    var data1 = [
      LinearSales(0, random.nextInt(100)),
      LinearSales(1, random.nextInt(100)),
      LinearSales(2, random.nextInt(100)),
      LinearSales(3, random.nextInt(100)),
      LinearSales(4, random.nextInt(100)),
      // LinearSales(5, random.nextInt(100)),
      // LinearSales(6, random.nextInt(100)),
      // LinearSales(7, random.nextInt(100)),
    ];
    var data2 = [
      LinearSales(0, random.nextInt(100)),
      LinearSales(1, random.nextInt(100)),
      LinearSales(2, random.nextInt(100)),
      LinearSales(3, random.nextInt(100)),
      LinearSales(4, random.nextInt(100)),
      // LinearSales(5, random.nextInt(100)),
      // LinearSales(6, random.nextInt(100)),
      // LinearSales(7, random.nextInt(100)),
    ];
    var data3 = [
      LinearSales(0, random.nextInt(100)),
      LinearSales(1, random.nextInt(100)),
      LinearSales(2, random.nextInt(100)),
      LinearSales(3, random.nextInt(100)),
      LinearSales(4, random.nextInt(100)),
      // LinearSales(5, random.nextInt(100)),
      // LinearSales(6, random.nextInt(100)),
      // LinearSales(7, random.nextInt(100)),
    ];

    var seriesList = [
      charts.Series<LinearSales, int>(
        id: 'Sales1',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data1,
      ),
      charts.Series<LinearSales, int>(
        id: 'Sales2',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data2,
      ),
      charts.Series<LinearSales, int>(
        id: 'Sales3',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data3,
      )
    ];

    return charts.LineChart(
      seriesList,
      animate: true,
      defaultRenderer:
          charts.LineRendererConfig(includeArea: true, stacked: true),
    );
  }
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
