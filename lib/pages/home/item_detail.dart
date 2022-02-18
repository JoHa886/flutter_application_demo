import 'package:flutter/material.dart';

class ItemWrap extends StatelessWidget {
  final String name, id, addr;

  const ItemWrap(
      {Key? key, required this.name, required this.id, required this.addr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print(1);
        },
        child: Container(
          width: double.infinity,
          height: 150,
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 6),
          // color: Colors.amber,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
              // left: BorderSide(
              //     color: Colors.red, width: 2.0, style: BorderStyle.solid),
              // right: BorderSide(
              //     color: Colors.red, width: 2.0, style: BorderStyle.solid),
              bottom: BorderSide(
                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
            ),
            // border: Border.all(
            //     color: Colors.red, width: 2.0, style: BorderStyle.solid),
            // borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            children: [
              Image.asset("assets/images/mountain.png"),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("姓名：$name"),
                    Text("身份证：$id"),
                    Text("地址：$addr"),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
