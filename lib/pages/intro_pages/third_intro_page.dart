import 'package:flutter/material.dart';
import 'package:forex/components/custom_container_intro.dart';
import 'package:forex/pages/intro_pages/fourth_intro.dart';
import 'package:forex/pages/intro_pages/second_intro_page.dart';
import 'package:forex/services/constants/strings.dart';
import '../../components/custom_navigate_privacy_policy.dart';
import '../../services/constants/colors.dart';

class ThirdIntro extends StatelessWidget {
  const ThirdIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IntroPageContainer(
              head: CustomStrings.freeAssets,
              onpressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FourthIntro(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                CustomStrings.privacyButton,
                style: TextStyle(
                  fontSize: 8,
                  fontFamily: "Unbounded",
                  color: CustomColors.privacy,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomNavigatePrivacy(),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
