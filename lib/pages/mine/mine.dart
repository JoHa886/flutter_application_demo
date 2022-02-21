import 'package:flutter/material.dart';
import 'package:flutter_application_demo/pages/mine/item_wrap.dart';

import 'swiper.dart';

class Mine extends StatefulWidget {
  const Mine({Key? key}) : super(key: key);

  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        // height: double.infinity,
        // color: Colors.amber,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              height: 80,
              child: const ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 80,
                ),
                title: Text(
                  "sugon",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "sugon@sugon.com",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 0),
                    blurRadius: 12,
                    spreadRadius: -3.0)
              ]),
              child: Column(children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: const Text(
                    "浏览历史：",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SwiperWrap()
              ]),
              alignment: Alignment.centerLeft,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 0),
                    blurRadius: 12,
                    spreadRadius: -3.0)
              ]),
              child: Column(children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: const Text(
                    "常用功能：",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // SwiperWrap()
                const ItemWrap()
              ]),
              alignment: Alignment.centerLeft,
            )
          ],
        ),
      ),
    );
  }
}
