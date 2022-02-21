import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperWrap extends StatelessWidget {
  SwiperWrap({Key? key}) : super(key: key);

  final List<String> imgs = [
    "assets/images/mountain.png",
    "assets/images/01.jpeg",
    "assets/images/02.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.deepOrange[50],
      width: double.infinity,
      height: 200,
      child: Swiper(
        itemCount: imgs.length,
        itemBuilder: (context, index) {
          return Image.asset(
            imgs[index],
            fit: BoxFit.cover,
          );
        },
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}
