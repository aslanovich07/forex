import 'package:flutter/material.dart';
import 'package:forex/components/custom_button.dart';
import 'package:forex/services/constants/strings.dart';

import '../services/constants/colors.dart';

class IntroPageContainer extends StatelessWidget {
  const IntroPageContainer({super.key, required this.head, this.sub, required this.onpressed});
  final String head;
  final String? sub;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 229,
        decoration: const BoxDecoration(
          color: CustomColors.introContainer,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              head,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: CustomColors.white,
                  fontFamily: "Unbounded"),
            ),
            SizedBox(height: 10,),
            sub != null
                ? Text(
                    sub!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: CustomColors.privacy,
                        fontFamily: "Unbounded",
                      height: 1.5
                    ),
                  )
                : const Text(""),
            const SizedBox(height: 60),
            CustomButton(
              text: CustomStrings.continueButton,
              onpressed: onpressed,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
