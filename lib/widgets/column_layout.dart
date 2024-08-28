import 'package:flutter/material.dart';
import 'package:testflutter/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headLineStyle3.copyWith(color: Colors.white)
              : Styles.headLineStyle3,
        ),
        // Container(
        //   margin: const EdgeInsets.only(top: 5),
        // ),
        Text(
          secondText,
          style: isColor == null
              ? Styles.headLineStyle4
                  .copyWith(color: Colors.white, fontSize: 12)
              : Styles.headLineStyle4.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
