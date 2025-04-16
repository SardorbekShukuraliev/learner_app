import 'package:flutter/material.dart';
import 'package:learnig_app/core/color/app_color.dart';
import 'package:learnig_app/core/textstyle/app_text_style.dart';
import '../../../../core/responsive/app_responsive.dart';

class OnBoardingWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  const OnBoardingWidget({
    required this.title,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appWidth(5)), // 20 / 400 ~ 0.05 * screenWidth
      child: Column(
        children: [
          Container(
            height: appHeight(37.5), // 300 / 800 ~ 0.375 * screenHeight
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(appWidth(5)), // 20 / 400 ~ 0.05 * screenWidth
              border: Border.all(
                color: _getBorderColor(),
                width: appWidth(0.5), // 2 / 400 ~ 0.005 * screenWidth
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(appWidth(4.5)), // 18 / 400 ~ 0.045 * screenWidth
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: appHeight(18.75)), // 150 / 800 ~ 0.1875 * screenHeight
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.heading4(color: AppColor.black),
          ),
        ],
      ),
    );
  }

  Color _getBorderColor() {
    if (imagePath.contains('illustration1')) {
      return Colors.pink;
    } else if (imagePath.contains('illustration2')) {
      return Colors.transparent;
    } else {
      return Colors.white;
    }
  }
}