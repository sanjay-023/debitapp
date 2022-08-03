import 'package:debitapp/app/modules/home/views/widget/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 217, 248),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CircleAvatar(
                  radius: 14.r,
                ),
                Text(
                  "Home",
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.notifications)
              ]),
              CarouselWidget()
            ],
          ),
        )));
  }
}
