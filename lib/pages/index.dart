import 'package:flutter/material.dart';
import 'package:flutter_application_demo/pages/chart/chart.dart';
import 'package:flutter_application_demo/pages/home/home.dart';
import 'package:flutter_application_demo/pages/mine/mine.dart';
import 'package:flutter_application_demo/providers/user_provider.dart';
import 'package:flutter_application_demo/utils/global.dart';
import 'package:provider/provider.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  // 定义底部导航按钮
  final List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: "首页"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.add_chart_sharp), label: "图表"),
    const BottomNavigationBarItem(icon: Icon(Icons.people), label: "我的"),
  ];

  // 定义导航对应页面
  final List pages = [const Home(), const Chart(), const Mine()];

  // 导航选中的index
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("flutter_demo"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (index == 2) {
              if (userProvider.isLogin == false) {
                Global.router.navigateTo(context, "/login");
              }
            }
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: pages[currentIndex]);
  }
}
