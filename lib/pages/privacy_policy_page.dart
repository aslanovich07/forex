import 'package:flutter/material.dart';
import 'package:forex/components/custom_button.dart';
import 'package:forex/pages/home_page/home_page.dart';
import 'package:forex/services/constants/colors.dart';
import 'package:forex/services/constants/strings.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: CustomColors.mainBackgroundColor,
        title: const Text(
          CustomStrings.privacyPolics,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: CustomColors.white,
            fontFamily: "Unbounded",
          ),
        ),
      ),
      body: Stack(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Divider(
                      color: CustomColors.dividerColor,
                      thickness: 1.5,
                    ),
                    SizedBox(height: 40),
                    Text(
                      CustomStrings.privacyPolics,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.white,
                        fontFamily: "Unbounded",
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      CustomStrings.privacyPolicyText,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Unbounded",
                        color: CustomColors.privacyTextColor,
                        height: 2,
                        letterSpacing: 0.6,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      CustomStrings.informationCollect,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.white,
                        fontFamily: "Unbounded",
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      CustomStrings.infoCollectText,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Unbounded",
                        color: CustomColors.privacyTextColor,
                        height: 2,
                        letterSpacing: 0.6,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      CustomStrings.privacyPolics,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.white,
                        fontFamily: "Unbounded",
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      CustomStrings.privacyPolicyText,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Unbounded",
                        color: CustomColors.privacyTextColor,
                        height: 2,
                        letterSpacing: 0.6,
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                text: CustomStrings.accept,
                onpressed: () {
                  Future.delayed(
                    const Duration(seconds: 2),
                    () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
