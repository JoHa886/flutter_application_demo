import 'package:flutter/material.dart';

class User {
  String name;
  int age;
  bool selected;

  User(this.name, this.age, {this.selected = false});
}

class UserLIst extends StatefulWidget {
  const UserLIst({Key? key}) : super(key: key);

  @override
  _UserLIstState createState() => _UserLIstState();
}

class _UserLIstState extends State<UserLIst> {
  List<User> data = [
    User("sugon1", 18),
    User("sugon2", 18),
    User("sugon3", 18, selected: true),
    User("sugon4", 18),
    User("sugon5", 18),
  ];

  List _getUserRow() {
    List<DataRow> dataRows = [];
    for (int i = 0; i < data.length; i++) {
      dataRows.add(DataRow(
          selected: data[i].selected,
          onSelectChanged: (selected) => setState(() {
                data[i].selected = selected as bool;
              }),
          cells: [
            DataCell(Text(data[i].name)),
            DataCell(Text('${data[i].age}')),
            DataCell(Text('男')),
            DataCell(Text('哈哈哈哈')),
          ]));
    }
    return dataRows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
          left: BorderSide(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
          right: BorderSide(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
          bottom: BorderSide(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
        ),
        // border: Border.all(
        //     color: Colors.red, width: 2.0, style: BorderStyle.solid),
        // borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: SingleChildScrollView(
        child: DataTable(
          horizontalMargin: 6.0,
          columnSpacing: 6.0,
          headingRowHeight: 32.0,
          // border: TableBorder.all(
          //     color: Colors.black, width: 1.0, style: BorderStyle.solid),
          // dataRowHeight: 100.0,
          columns: const [
            DataColumn(label: Text("姓名")),
            DataColumn(label: Text("年龄")),
            DataColumn(label: Text("性别")),
            DataColumn(label: Text("简介")),
          ],
          rows: _getUserRow() as dynamic,
          // rows: [
          //   DataRow(cells: [
          //     DataCell(Text("PJH")),
          //     DataCell(Text("18")),
          //     DataCell(Text("男")),
          //     DataCell(Text("丑")),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text("PJH")),
          //     DataCell(Text("18")),
          //     DataCell(Text("男")),
          //     DataCell(Text("丑")),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text("PJH")),
          //     DataCell(Text("18")),
          //     DataCell(Text("男")),
          //     DataCell(Text("丑")),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text("PJH")),
          //     DataCell(Text("18")),
          //     DataCell(Text("男")),
          //     DataCell(Text("丑")),
          //   ]),
          // ],
        ),
      ),
    );
  }
}
