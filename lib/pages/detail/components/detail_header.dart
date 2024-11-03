import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voluntarios_project/constants.dart';
import 'package:voluntarios_project/model/vaga_model.dart';


class DetailHeader extends StatelessWidget {
  final VagaModel data;

  const DetailHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit * 2,
        vertical: kSpacingUnit * 3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              'assets/icons/chevron_left_icon.svg',
              height: 30.sp,
              width: 30.sp,
            ),
          ),
          Text(
            data.nomeInstituicao,
            style: kSubTitleTextStyle.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 30.sp),
        ],
      ),
    );
  }
}