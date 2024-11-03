import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:voluntarios_project/constants.dart';
import 'package:voluntarios_project/data/mocked_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voluntarios_project/widgets/postion_card.dart';

class MainPopularPositions extends StatefulWidget{
  const MainPopularPositions({super.key});

  @override
  State<MainPopularPositions> createState() => _MainPopularPositionsState();
}

class _MainPopularPositionsState extends State<MainPopularPositions> {
  int _cardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.w,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 130.w,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: _cardIndex,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _cardIndex = index;
            });
          },
        ),
        itemCount: popularPositions.length,
        itemBuilder: (context, index, realIndex) => Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: kSpacingUnit),
          child: PositionCard(data: popularPositions[index]),
        ),
      ),
    );
  }
}