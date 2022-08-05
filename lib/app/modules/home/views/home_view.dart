import 'package:debitapp/app/modules/home/views/widget/carousel_slider.dart';
import 'package:debitapp/app/modules/home/views/widget/debit_list.dart';
import 'package:debitapp/app/modules/home/views/widget/overlay_widget.dart';
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
            child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            radius: 14.r,
                            backgroundImage:
                                AssetImage("asset/images/avatar.jpeg")),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.notifications)
                      ]),
                ),
                Expanded(flex: 1, child: CarouselWidget()),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(flex: 2, child: DebitListWidget()),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 120.h, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      OverlayWidget(
                          iconUrl: "asset/images/plus.png", hText: "NEW"),
                      OverlayWidget(
                          iconUrl: "asset/images/topright-arrow.png",
                          hText: "PAY OFF"),
                      OverlayWidget(
                        iconUrl: "asset/images/bottomleft_arrow.png",
                        hText: "LEND",
                      ),
                      OverlayWidget(
                          iconUrl: "asset/images/grid.png", hText: "MORE"),
                    ],
                  )
                ],
              ),
            )
          ],
        )));
  }
}
