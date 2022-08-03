import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {Key? key,
      required this.amountText,
      required this.iconUrl,
      required this.title,
      required this.cardColor})
      : super(key: key);
  final String amountText;
  final String iconUrl;
  final String title;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, right: 10),
      child: Container(
          width: 150.w,
          height: 200.h,
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(10.r)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Color.fromARGB(156, 255, 255, 255),
                            fontSize: 14.sp),
                      ),
                      Container(
                        height: 60.h,
                        width: 60.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    cardColor.withOpacity(0.5),
                                    BlendMode.dstATop),
                                image: AssetImage(iconUrl))),
                      )
                    ]),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Text(
                        "\$ $amountText",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "2 debits",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
