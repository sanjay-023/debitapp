import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  final bottomController = Get.put(BottombarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottombarController>(builder: (controller) {
        return bottomController.pages[bottomController.currentSelectedIntex];
      }),
      bottomNavigationBar:
          GetBuilder<BottombarController>(builder: (controller) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: bottomController.currentSelectedIntex,
            selectedItemColor: Colors.black,
            onTap: (index) {
              bottomController.chnageIndex(index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.light), label: "Articles"),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 30.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 157, 243, 28),
                        borderRadius: BorderRadius.circular(14)),
                    child: Icon(Icons.add),
                  ),
                  label: ""),
            ]);
      }),
    );
  }
}
