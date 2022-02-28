import 'package:flutter/material.dart';
import 'package:flutter_application_demo/utils/global.dart';

class ItemWrap extends StatelessWidget {
  const ItemWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      color: Colors.white,
      child: Wrap(
        direction: Axis.horizontal,
        runSpacing: 10.0,
        children: [
          GestureDetector(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('点击事件'),
                content: const Text('点击了闹钟'),
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
            child: SizedBox(
              width: 70.0,
              height: 80.0,
              child: Column(
                children: const [
                  Icon(
                    Icons.access_alarm_rounded,
                    color: Colors.blue,
                    size: 60,
                  ),
                  Text("闹钟")
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('点击事件'),
                content: const Text('点击了通讯录'),
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
            child: SizedBox(
              width: 70.0,
              height: 80.0,
              child: Column(
                children: const [
                  Icon(
                    Icons.account_box_rounded,
                    color: Colors.pink,
                    size: 60,
                  ),
                  Text("通讯录")
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('点击事件'),
                content: const Text('点击了图表'),
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
            child: SizedBox(
              width: 70.0,
              height: 80.0,
              child: Column(
                children: const [
                  Icon(
                    Icons.add_chart_rounded,
                    color: Colors.green,
                    size: 60,
                  ),
                  Text("图表")
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('点击事件'),
                content: const Text('点击了地址'),
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
            child: SizedBox(
              width: 70.0,
              height: 80.0,
              child: Column(
                children: const [
                  Icon(
                    Icons.add_location_alt_rounded,
                    color: Colors.blue,
                    size: 60,
                  ),
                  Text("地址")
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('点击事件'),
                content: const Text('点击了信息'),
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
            child: SizedBox(
              width: 70.0,
              height: 80.0,
              child: Column(
                children: const [
                  Icon(
                    Icons.wysiwyg_rounded,
                    color: Colors.pink,
                    size: 60,
                  ),
                  Text("信息")
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('点击事件'),
                content: const Text('点击了办公'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () =>
                        Global.router.navigateTo(context, "/login"),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: SizedBox(
              width: 70.0,
              height: 80.0,
              child: Column(
                children: const [
                  Icon(
                    Icons.work_rounded,
                    color: Colors.green,
                    size: 60,
                  ),
                  Text("办公")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
