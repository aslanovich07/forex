import 'package:flutter/material.dart';
import 'package:forex/components/top_three_containers.dart';
import 'package:forex/pages/detail_pages/community_detail_page.dart';
import 'package:forex/pages/detail_pages/community_detail_page2.dart';
import 'package:forex/services/constants/images.dart';
import 'package:forex/services/constants/strings.dart';
import '../../components/news.dart';
import '../../services/constants/colors.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

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
          CustomStrings.community,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: CustomColors.white,
            fontFamily: "Unbounded",
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    TopThreeContainers(
                        type: CustomStrings.total, count: CustomStrings.eight),
                    SizedBox(
                      width: 12,
                    ),
                    TopThreeContainers(
                        type: CustomStrings.viewed, count: CustomStrings.four),
                    SizedBox(
                      width: 12,
                    ),
                    TopThreeContainers(
                        type: CustomStrings.favourites,
                        count: CustomStrings.zero),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(
                  color: CustomColors.dividerColor,
                  thickness: 1.5,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CommunityDetailPage(),
                      ),
                    );
                  },
                  child: const NewsContainer(
                    image: CustomImages.airplane,
                    title: CustomStrings.airplaneTitle,
                    subTitle: CustomStrings.airplaneSub,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CommunityDetailPage2(),
                      ),
                    );
                  },
                  child: const NewsContainer(
                    image: CustomImages.diagram,
                    title: CustomStrings.airplaneTitle,
                    subTitle: CustomStrings.airplaneSub,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
