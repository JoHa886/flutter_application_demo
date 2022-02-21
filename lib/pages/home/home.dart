import 'package:flutter/material.dart';
import 'package:flutter_application_demo/components/search_bar.dart';

import 'item_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List itemList = [
  //   {"name": "sugon", "id": "123123", "addr": "四川成都"},
  //   {"name": "sugon", "id": "123123", "addr": "四川成都"},
  //   {"name": "sugon", "id": "123123", "addr": "四川成都"},
  //   {"name": "sugon", "id": "123123", "addr": "四川成都"},
  //   {"name": "sugon", "id": "123123", "addr": "四川成都"},
  // ];

  List<Widget> itemListC() {
    List<Widget> itemListW = [];
    for (int i = 0; i < 20; i++) {
      itemListW.add(ItemWrap(
        name: "sugon" + i.toString(),
        id: "id$i",
        addr: "四川成都" + i.toString(),
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
                onSubmitted: (text) => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('搜索事件'),
                        content: Text('搜索内容：$text'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
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
