import 'package:flutter/material.dart';
import 'package:forex/pages/home_page/analysis_page.dart';
import 'package:forex/pages/home_page/community_page.dart';
import 'package:forex/pages/home_page/news_page.dart';
import 'package:forex/pages/home_page/settings_page.dart';
import 'package:forex/services/constants/colors.dart';
import 'package:forex/services/constants/images.dart';
import '../../services/constants/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  int selectedIndex = 0;

  void navigatePage(int page) {
    controller.jumpToPage(page);
    onPageChange(page);
  }

  void onPageChange(int page) {
    selectedIndex = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: CustomColors.mainBackgroundColor,
        fixedColor: CustomColors.mainBackgroundColor,
        onTap: navigatePage,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                selectedIndex == 0
                    ? Image.asset(
                        CustomImages.messageFilled,
                        height: 24,
                        width: 24,
                      )
                    : Image.asset(
                        CustomImages.message,
                        height: 24,
                        width: 24,
                        color: CustomColors.privacy,
                      ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  CustomStrings.news,
                  style: TextStyle(
                    fontFamily: "Unbounded",
                    fontSize: 9,
                    color: selectedIndex == 0
                        ? CustomColors.terms
                        : CustomColors.privacy,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            label: "",
            backgroundColor: CustomColors.mainBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                selectedIndex == 1
                    ? Image.asset(
                  CustomImages.profileFilled,
                  height: 24,
                  width: 24,
                )
                    : Image.asset(
                  CustomImages.profile,
                  height: 24,
                  width: 24,
                  color: CustomColors.privacy,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  CustomStrings.community,
                  style: TextStyle(
                    fontFamily: "Unbounded",
                    fontSize: 9,
                    color: selectedIndex == 1
                        ? CustomColors.terms
                        : CustomColors.privacy,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            label: "",
            backgroundColor: CustomColors.mainBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                selectedIndex == 2
                    ? Image.asset(
                  CustomImages.analysisFilled,
                  height: 24,
                  width: 24,
                )
                    : Image.asset(
                  CustomImages.analysis,
                  height: 24,
                  width: 24,
                  color: CustomColors.privacy,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  CustomStrings.analysis,
                  style: TextStyle(
                    fontFamily: "Unbounded",
                    fontSize: 9,
                    color: selectedIndex == 2
                        ? CustomColors.terms
                        : CustomColors.privacy,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            label: "",
            backgroundColor: CustomColors.mainBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                selectedIndex == 3
                    ? Image.asset(
                  CustomImages.settingsFilled,
                  height: 24,
                  width: 24,
                )
                    : Image.asset(
                  CustomImages.settings,
                  height: 24,
                  width: 24,
                  color: CustomColors.privacy,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  CustomStrings.settings,
                  style: TextStyle(
                    fontFamily: "Unbounded",
                    fontSize: 9,
                    color: selectedIndex == 3
                        ? CustomColors.terms
                        : CustomColors.privacy,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            label: "",
            backgroundColor: CustomColors.mainBackgroundColor,
          ),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        reverse: false,
        scrollDirection: Axis.horizontal,
        scrollBehavior: const MaterialScrollBehavior(),
        controller: controller,
        onPageChanged: onPageChange,
        children: const [
          NewsPage(),
          CommunityPage(),
          AnalysisPage(),
          SettingsPage(),
        ],
      ),
    );
  }
}
