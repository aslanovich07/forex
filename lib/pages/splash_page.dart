import 'package:flutter/material.dart';
import 'package:forex/pages/intro_pages/first_intro_page.dart';
import '../services/constants/colors.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor,
      body: FutureBuilder(
        builder: (context, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(CustomImages.forex),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  CustomStrings.forexTrading,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: CustomColors.white,
                    fontFamily: "SF pro",
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          );
        },
        future: Future.delayed(
          const Duration(seconds: 2),
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  const FirstIntro(),
            ),
          ),
        ),
      ),
    );
  }
}
