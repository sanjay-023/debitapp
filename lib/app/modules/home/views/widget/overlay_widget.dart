import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverlayWidget extends StatelessWidget {
  OverlayWidget({Key? key, required this.iconUrl, required this.hText})
      : super(key: key);
  final String iconUrl;
  final String hText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(118, 255, 255, 255),
          radius: 45.r,
          child: CircleAvatar(
            radius: 34.r,
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            child: Image(width: 20.w, height: 20.h, image: AssetImage(iconUrl)),
          ),
        ),
        Text(
          hText,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
