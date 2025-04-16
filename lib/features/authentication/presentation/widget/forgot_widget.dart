import 'package:flutter/material.dart';
import 'package:learnig_app/core/textstyle/app_text_style.dart';
import '../../../../core/color/app_color.dart';
import '../../../../core/responsive/app_responsive.dart';

class ContactOptionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final bool isSelected;
  final VoidCallback onTap;

  const ContactOptionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(appWidth(4)), // 16 / 400 ~ 0.04 * screenWidth
        margin: EdgeInsets.symmetric(vertical: appHeight(1)), // 8 / 800 ~ 0.01 * screenHeight
        height: appHeight(13.75), // 110 / 800 ~ 0.1375 * screenHeight
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade50 : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(appWidth(4)), // 16 / 400 ~ 0.04 * screenWidth
          border: Border.all(
            color: isSelected ? AppColor.blue : AppColor.transparentBlue,
            width: appWidth(0.5), // 2 / 400 ~ 0.005 * screenWidth
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              radius: appWidth(5), // 20 / 400 ~ 0.05 * screenWidth (taxminan, default radius)
              child: Icon(icon, color: AppColor.white),
            ),
            SizedBox(width: appWidth(4)), // 16 / 400 ~ 0.04 * screenWidth
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: AppColor.greyScale500)),
                SizedBox(height: appHeight(0.5)), // 4 / 800 ~ 0.005 * screenHeight
                Text(
                  value,
                  style: AppTextStyles.bodyMediumRegular(color: AppColor.greyScale500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}