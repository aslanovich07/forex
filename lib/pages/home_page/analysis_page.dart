import 'package:flutter/material.dart';
import 'package:forex/components/analysis_container.dart';
import 'package:forex/services/constants/images.dart';
import 'package:forex/services/constants/strings.dart';

import '../../services/constants/colors.dart';
import '../detail_pages/webview_page.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

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
          CustomStrings.analysis,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: CustomColors.white,
            fontFamily: "Unbounded",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
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
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
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
              Row(
                children: [
                  AnalysisContainer(
                    flag1: CustomImages.flag1,
                    flag2: CustomImages.flag4,
                    text: CustomStrings.gbpjpy,
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  AnalysisContainer(
                    flag1: CustomImages.flag7,
                    flag2: CustomImages.flag3,
                    text: CustomStrings.nzdusd,
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
              Row(
                children: [
                  AnalysisContainer(
                    flag1: CustomImages.flag1,
                    flag2: CustomImages.flag3,
                    text: CustomStrings.gbpusd,
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  AnalysisContainer(
                    flag1: CustomImages.flag8,
                    flag2: CustomImages.flag4,
                    text: CustomStrings.eurjpy,
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
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
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
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
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
              Row(
                children: [
                  AnalysisContainer(
                    flag1: CustomImages.flag1,
                    flag2: CustomImages.flag4,
                    text: CustomStrings.gbpjpy,
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  AnalysisContainer(
                    flag1: CustomImages.flag7,
                    flag2: CustomImages.flag3,
                    text: CustomStrings.nzdusd,
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
              Row(
                children: [
                  AnalysisContainer(
                    flag1: CustomImages.flag1,
                    flag2: CustomImages.flag3,
                    text: CustomStrings.gbpusd,
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebviewPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  AnalysisContainer(
                    flag1: CustomImages.flag8,
                    flag2: CustomImages.flag4,
                    text: CustomStrings.eurjpy,
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
      ),
    );
  }
}
