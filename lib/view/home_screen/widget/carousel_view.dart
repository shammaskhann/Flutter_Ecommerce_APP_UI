import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/AppColor.dart';

import 'banner_view.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return BannerView();
      },
      viewportFraction: 0.8,
      scale: 0.9,
      itemCount: 3,
      autoplay: true,
      autoplayDelay: 2000,
      pagination: const SwiperPagination(
        builder: DotSwiperPaginationBuilder(
          color: Colors.grey,
          activeColor: Colors.white,
        ),
      ),
    );
  }
}
