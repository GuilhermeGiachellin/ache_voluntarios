import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voluntarios_project/constants.dart';

class SearchControl extends StatelessWidget {
  const SearchControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit * 4,
      decoration: BoxDecoration(
        color: kSilverColor,
        borderRadius: BorderRadius.circular(kSpacingUnit * 3),
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(width: kSpacingUnit * 2),
            SvgPicture.asset(
              'assets/icons/search.svg',
              height: 15.sp,
              width: 15.sp,
            ),
            SizedBox(width: kSpacingUnit),
            Text(
              'Procure vagas',
              style: kBodyTextStyle.copyWith(
                color: kSecondaryTextColor,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/icons/slider_icon.svg',
              height: 15.sp,
              width: 15.sp,
            ),
            SizedBox(width: kSpacingUnit * 2),
          ],
        ),
      ),
    );
  }
}
