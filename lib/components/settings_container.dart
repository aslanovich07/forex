import 'package:flutter/material.dart';
import '../services/constants/colors.dart';


class SettingsContainer extends StatelessWidget {
  const SettingsContainer({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: CustomColors.white,
              fontFamily: "Unbounded",
            ),
          ),
          const Spacer(),
          Text(
            subTitle,
            style: const TextStyle(
              color: CustomColors.privacy,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontFamily: "Unbounded",
            ),
          ),
        ],
      ),
    );
  }
}
