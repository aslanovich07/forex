import 'package:flutter/material.dart';
import '../services/constants/colors.dart';
class TopThreeContainers extends StatelessWidget {
  const TopThreeContainers({super.key, required this.type, required this.count});
  final String type;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 81,
      decoration: const BoxDecoration(
        color: CustomColors.introContainer,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Unbounded",
                  color: CustomColors.privacy),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              count,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: CustomColors.white,
                fontFamily: "Unbounded",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
