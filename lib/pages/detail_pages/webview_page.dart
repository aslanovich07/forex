import 'package:flutter/material.dart';
import 'package:forex/pages/detail_pages/analysis_detail_page.dart';
import 'package:forex/services/constants/colors.dart';
import 'package:forex/services/constants/images.dart';
import 'package:forex/services/constants/strings.dart';

import '../../components/analysis_container.dart';

class WebviewPage extends StatelessWidget {
  const WebviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.mainBackgroundColor,
      appBar: AppBar(
        title: const Text(
          CustomStrings.gbpcad,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: CustomColors.white,
            fontFamily: "Unbounded",
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: CustomColors.privacy,
          ),
        ),
        backgroundColor: CustomColors.mainBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                height: 500,
                child: Image.asset(
                  CustomImages.trading,
                  height: 500,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                AnalysisContainer(
                  flag1: CustomImages.flag1,
                  flag2: CustomImages.flag2,
                  text: CustomStrings.gbpcad,
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnalysisDetailPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                AnalysisContainer(
                  flag1: CustomImages.flag3,
                  flag2: CustomImages.flag4,
                  text: CustomStrings.usdjpy,
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnalysisDetailPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                AnalysisContainer(
                  flag1: CustomImages.flag1,
                  flag2: CustomImages.flag6,
                  text: CustomStrings.gbpaud,
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnalysisDetailPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                AnalysisContainer(
                  flag1: CustomImages.flag6,
                  flag2: CustomImages.flag2,
                  text: CustomStrings.audcad,
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WebviewPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
