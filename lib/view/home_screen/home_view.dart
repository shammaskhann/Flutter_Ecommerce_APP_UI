import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/AppColor.dart';
import 'package:flutter_assignment/constants/AppFont.dart';
import 'package:flutter_assignment/view/home_screen/widget/carousel_view.dart';

import '../../models/logout_services/logout_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LogoutServices logoutService = LogoutServices();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Location tag
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_pin, color: AppColor.greyColor),
                      Text("Baku, Azerbaijan", style: AppFont.textbutton),
                    ],
                  ),
                  //Logout
                  Container(
                    height: 50,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      //backgroundBlendMode: BlendMode.color,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          logoutService.logout(context);
                        },
                        icon: Icon(Icons.logout_outlined,
                            color: AppColor.greyColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //TagLine
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'GiGi Find out the best deals for you!',
                style: AppFont.heading2,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppFont.textFieldHintText,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            //Carousel
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: const CarouselWidget(),
              ),
            )
            //const CarouselWidget(),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
    );
  }
}
