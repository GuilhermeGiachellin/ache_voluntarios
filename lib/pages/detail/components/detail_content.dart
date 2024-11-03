import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voluntarios_project/constants.dart';
import 'package:voluntarios_project/model/vaga_model.dart';
import 'package:voluntarios_project/widgets/detail_item.dart';

class DetailContent extends StatelessWidget {
  final VagaModel data;

  const DetailContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: kSpacingUnit * 4,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kSpacingUnit * 5),
            topRight: Radius.circular(kSpacingUnit * 5),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: kSpacingUnit * 5),
              Center(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      data.imgUrl,
                      height: 50.sp,
                      width: 50.sp,
                    ),
                    SizedBox(height: kSpacingUnit * 2),
                    Text(
                      data.nomeInstituicao,
                      style: kTitleTextStyle,
                    ),
                    SizedBox(height: kSpacingUnit),
                    Text(
                      data.location,
                      style: kCaptionTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kSpacingUnit * 5),
              Text(
                'Responsabilidades',
                style: kSubTitleTextStyle,
              ),
              SizedBox(height: kSpacingUnit * 2),
              if (data.responsibilities != null && data.responsibilities.length > 0)
                ...data.responsibilities
                    .map((responsibility) => DetailItem(data: responsibility))
                    .toList(),
              SizedBox(height: kSpacingUnit),  
              SizedBox(height: kSpacingUnit * 15),
            ],
          ),
        ),
      ),
    );
  }

}