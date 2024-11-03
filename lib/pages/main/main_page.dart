import 'package:flutter/material.dart';
import 'package:voluntarios_project/constants.dart';
import 'package:voluntarios_project/pages/main/components/main_content.dart';
import 'package:voluntarios_project/pages/main/components/main_header.dart';
import 'package:voluntarios_project/pages/main/components/main_sub_header.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kSpacingUnit * 6),
            MainHeader(),
            SizedBox(height: kSpacingUnit * 3),
            MainSubHeader(),
            SizedBox(height: kSpacingUnit * 3),
            MainContent(),
          ],
        ),
      ),
    );
  }
}
