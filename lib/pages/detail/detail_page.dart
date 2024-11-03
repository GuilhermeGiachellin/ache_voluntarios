import 'package:flutter/material.dart';
import 'package:voluntarios_project/constants.dart';
import 'package:voluntarios_project/model/vaga_model.dart';
import 'package:voluntarios_project/pages/detail/components/detail_content.dart';
import 'package:voluntarios_project/pages/detail/components/detail_footer.dart';
import 'package:voluntarios_project/pages/detail/components/detail_header.dart';

class DetailPage extends StatelessWidget {
  final VagaModel data;

  const DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSilverColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                DetailHeader(data: data),
                DetailContent(data: data),
              ],
            ),
            DetailFooter(),
          ],
        ),
      ),
    );
  }
}