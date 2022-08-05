import 'package:debitapp/app/data/model/debit_model.dart';
import 'package:debitapp/app/data/model/service/api_service.dart';
import 'package:debitapp/app/modules/home/controllers/home_controller.dart';
import 'package:debitapp/app/modules/home/views/widget/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DebitListWidget extends StatelessWidget {
  DebitListWidget({Key? key}) : super(key: key);
  ApiService apiService = ApiService();
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 238, 238),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26.r), topRight: Radius.circular(26.r))),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Debits",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(Duration(seconds: 1));
                  homeController.update();
                },
                child: GetBuilder<HomeController>(builder: (context) {
                  return Container(
                    child: FutureBuilder(
                        future: apiService.getData(),
                        builder:
                            ((context, AsyncSnapshot<List<Datum>> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasData) {
                            List<Datum>? data = snapshot.data;
                            return ListView.builder(
                              itemBuilder: (context, index) {
                                return CustomListTile(
                                  data: data![index],
                                  index: index,
                                );
                              },
                              shrinkWrap: true,
                              itemCount: data!.length,
                              physics: ClampingScrollPhysics(),
                            );
                          }
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        })),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
