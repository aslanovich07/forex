import 'package:flutter/material.dart';
import 'package:forex/components/custom_container_intro.dart';
import 'package:forex/pages/home_page/home_page.dart';
import 'package:forex/services/constants/strings.dart';
import '../../components/custom_navigate_privacy_policy.dart';
import '../../services/constants/colors.dart';

class FourthIntro extends StatelessWidget {
  const FourthIntro({super.key});

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
              head: CustomStrings.readMore,
              onpressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
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
