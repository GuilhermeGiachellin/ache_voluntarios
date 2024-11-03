import 'package:flutter/material.dart';
import 'package:voluntarios_project/constants.dart';
import 'package:voluntarios_project/data/mocked_data.dart';
import 'package:voluntarios_project/widgets/postion_card.dart';

class MainRecentPositions extends StatelessWidget {
  const MainRecentPositions({super.key});  
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: popularPositions
            .asMap()
            .entries
            .map(
              (item) => Container(
                margin: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3).copyWith(
                  top: item.key == 0 ? kSpacingUnit * 2 : 0,
                  bottom: kSpacingUnit * 2,
                ),
                child: PositionCard(data: item.value),
              ),
            )
            .toList(),
      ),
    );
  }
}