import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/icon_and_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

import '../widgets/big_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController =
      PageController(initialPage: 1, viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image1.jpg'),
            ),
            color: index.isEven ? Colors.purple[100] : Colors.yellow,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'Bitter Orange',
                    color: Colors.black87,
                    size: 25.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star_rate,
                                  size: 15,
                                  color: Colors.deepOrange,
                                )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '4.5'),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '1250 comments'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      IconAndTextWidget(
                          icon: Icons.circle,
                          iconColor: Colors.yellow,
                          text: 'Medium',
                          textColor: Colors.black),
                      SizedBox(
                        width: 15,
                      ),
                      IconAndTextWidget(
                          icon: Icons.location_on_outlined,
                          iconColor: Colors.blueGrey,
                          text: '1.2 km',
                          textColor: Colors.black),
                      SizedBox(
                        width: 15,
                      ),
                      IconAndTextWidget(
                          icon: Icons.access_time_outlined,
                          iconColor: Colors.green,
                          text: '32 mins',
                          textColor: Colors.black),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
