import 'package:flutter/material.dart';
import 'package:forex/pages/privacy_policy_page.dart';
import '../services/constants/colors.dart';
import '../services/constants/strings.dart';

class CustomNavigatePrivacy extends StatelessWidget {
  const CustomNavigatePrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyPage(),
                ),
              );
            },
            child: const Text(
              CustomStrings.termsAndPolicy,
              style: TextStyle(
                fontSize: 8,
                fontFamily: "Unbounded",
                color: CustomColors.terms,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 5),
          const Text(
            CustomStrings.and,
            style: TextStyle(
              fontSize: 8,
              fontFamily: "Unbounded",
              color: CustomColors.privacy,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyPage(),
                ),
              );
            },
            child: const Text(
              CustomStrings.privacyPolics,
              style: TextStyle(
                fontSize: 8,
                fontFamily: "Unbounded",
                color: CustomColors.terms,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
