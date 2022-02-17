import 'package:flutter/material.dart';
import 'package:flutter_application_demo/components/search_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            child: YmSearchBar(
                hint: "关键词",
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
              children: [
                GestureDetector(
                  onTap: () {
                    print(1);
                  },
                  child: Container(
                      width: double.infinity,
                      height: 150,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.amber,
                      child: Text("hahahaha")),
                ),
                GestureDetector(
                  onTap: () {
                    print(1);
                  },
                  child: Container(
                      width: double.infinity,
                      height: 150,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.amber,
                      child: Text("hahahaha")),
                ),
                GestureDetector(
                  onTap: () {
                    print(1);
                  },
                  child: Container(
                      width: double.infinity,
                      height: 150,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.amber,
                      child: Text("hahahaha")),
                ),
                GestureDetector(
                  onTap: () {
                    print(1);
                  },
                  child: Container(
                      width: double.infinity,
                      height: 150,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.amber,
                      child: Text("hahahaha")),
                ),
                GestureDetector(
                  onTap: () {
                    print(1);
                  },
                  child: Container(
                      width: double.infinity,
                      height: 150,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.amber,
                      child: Text("hahahaha")),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
