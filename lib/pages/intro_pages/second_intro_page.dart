import 'package:flutter/material.dart';
import 'package:forex/components/custom_container_intro.dart';
import 'package:forex/components/custom_navigate_privacy_policy.dart';
import 'package:forex/pages/intro_pages/third_intro_page.dart';
import 'package:forex/services/constants/strings.dart';

import '../../services/constants/colors.dart';

class SecondIntro extends StatelessWidget {
  const SecondIntro({super.key});

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
              head: CustomStrings.weValue,
              sub: CustomStrings.sub,
              onpressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdIntro(),
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
