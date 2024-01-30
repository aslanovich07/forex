import 'package:flutter/material.dart';
import 'package:forex/components/settings_container.dart';
import 'package:forex/services/constants/images.dart';
import '../../services/constants/colors.dart';
import '../../services/constants/strings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isConfirmed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: CustomColors.mainBackgroundColor,
        centerTitle: true,
        title: const Text(
          CustomStrings.settings,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: CustomColors.white,
            fontFamily: "Unbounded",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(height: 35),
            const Divider(
              color: CustomColors.dividerColor,
              thickness: 1.5,
            ),
            const SizedBox(height: 20),
            const SettingsContainer(
              title: CustomStrings.rate,
              subTitle: CustomStrings.rateSub,
            ),
            const SizedBox(height: 40),
            const SettingsContainer(
              title: CustomStrings.aboutApp,
              subTitle: CustomStrings.aboutAppSub,
            ),
            const SizedBox(height: 40),
            const SettingsContainer(
              title: CustomStrings.privacyPolics,
              subTitle: CustomStrings.privacySubtext,
            ),
            const SizedBox(height: 40),
            const SettingsContainer(
              title: CustomStrings.termCondition,
              subTitle: CustomStrings.termConditionSub,
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  const Text(
                    CustomStrings.moreAssets,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: CustomColors.white,
                      fontFamily: "Unbounded",
                    ),
                  ),
                  const Spacer(),
                  isConfirmed
                      ? GestureDetector(
                          child: Image.asset(
                            CustomImages.confirm,
                            width: 40,
                            height: 24,
                          ),
                          onTap: () {
                            isConfirmed = false;
                            setState(() {});
                          },
                        )
                      : GestureDetector(
                          child: Image.asset(
                            CustomImages.disprove,
                            width: 40,
                            height: 24,
                          ),
                          onTap: () {
                            isConfirmed = true;
                            setState(() {});
                          },
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
