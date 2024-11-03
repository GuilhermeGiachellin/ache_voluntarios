import 'package:flutter/material.dart';
import 'package:voluntarios_project/constants.dart';

class DetailItem extends StatelessWidget {
  final String data;

  const DetailItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kSpacingUnit * 2),
      child: Text(
        data,
        style: kCaptionTextStyle.copyWith(
          color: kPrimaryTextColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
