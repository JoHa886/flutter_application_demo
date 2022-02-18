import 'package:flutter/material.dart';

import 'chart_wrap.dart';
import 'data_table.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.all(10.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: UserLIst()),
        ChartWrap()
      ]),
    ));
  }
}
