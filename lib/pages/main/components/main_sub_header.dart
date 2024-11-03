import 'package:flutter/material.dart';
import 'package:voluntarios_project/constants.dart';
import 'package:voluntarios_project/widgets/search_control.dart';
import 'package:voluntarios_project/widgets/search_tag.dart';

class MainSubHeader extends StatelessWidget {
  const MainSubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: SearchControl(),
              ),
              SizedBox(width: kSpacingUnit * 2),
              CircleAvatar(
                radius: kSpacingUnit * 2,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ],
          ),
          SizedBox(height: kSpacingUnit * 2),
          SearchTag(tag: 'Garibaldi'),
        ],
      ),
    );
  }
}
