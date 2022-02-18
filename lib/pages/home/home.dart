import 'package:flutter/material.dart';
import 'package:flutter_application_demo/components/search_bar.dart';

import 'item_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List itemList = [
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
    {"name": "pjh", "id": "123123", "addr": "四川成都"},
  ];
  List<Widget> itemListC() {
    List<Widget> itemListW = [];
    for (int i = 0; i < itemList.length; i++) {
      itemListW.add(ItemWrap(
        name: itemList[i]['name'] + i.toString(),
        id: itemList[i]["id"] + i.toString(),
        addr: itemList[i]["addr"] + i.toString(),
      ));
    }
    return itemListW;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: YmSearchBar(
                hint: "关键词",
                margin:
                    const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                width: MediaQuery.of(context).size.width - 40,
                onSubmitted: (text) {
                  print("搜索$text");
                  // _searchTextValue = text;
                  // _loadData();
                },
                clearCallback: () {
                  // _searchTextValue = "";
                  // _loadData();
                },
                onBackCallback: () {}),
          ),
          Container(
            width: double.infinity,
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: itemListC(),
            ),
          )
        ],
      )),
    );
  }
}
