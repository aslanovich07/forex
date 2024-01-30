import 'package:flutter/material.dart';
import 'package:forex/services/constants/images.dart';
import 'package:forex/services/constants/strings.dart';
import '../../services/constants/colors.dart';

class NewsDetailPage2 extends StatelessWidget {
  const NewsDetailPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.mainBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: CustomColors.privacy,
          ),
        ),
      ),
      backgroundColor: CustomColors.mainBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                CustomStrings.airplaneTitle,
                style: TextStyle(
                  color: CustomColors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Unbounded",
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                CustomStrings.time,
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Unbounded",
                    color: CustomColors.privacy),
              ),
              const SizedBox(height: 30),
              Image.asset(CustomImages.diagram),
              const SizedBox(height: 30),
              const Text(
                CustomStrings.lorem,
                style: TextStyle(
                    color: CustomColors.loremColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Unbounded",
                    height: 1.8
                ),
              ),
              const SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
