import 'package:carousel_slider/carousel_slider.dart';
import 'package:debitapp/app/modules/home/views/card.dart';
import 'package:debitapp/app/modules/home/views/widget/colors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          CardWidget(
            cardColor: CustomColors().firstCard,
            amountText: "1250",
            iconUrl: "asset/images/bottom_left_arrow.png",
            title: "Owe me",
          ),
          CardWidget(
            cardColor: CustomColors().secondCard,
            amountText: "1130",
            iconUrl: "asset/images/top_right_arrow.png",
            title: "I owe",
          ),
          CardWidget(
            cardColor: CustomColors().firstCard,
            amountText: "2930",
            iconUrl: "asset/images/bottom_left_arrow.png",
            title: "I owe",
          ),
          CardWidget(
            cardColor: CustomColors().secondCard,
            amountText: "2930",
            iconUrl: "asset/images/top_right_arrow.png",
            title: "I owe",
          )
        ],
        options: CarouselOptions(
            enableInfiniteScroll: false,
            initialPage: 0,
            enlargeCenterPage: true,
            height: 220.h,
            disableCenter: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.42,
            autoPlay: false));
  }
}
