import 'package:flutter/material.dart';
import '../services/constants/colors.dart';

class AnalysisContainer extends StatelessWidget {
  const AnalysisContainer(
      {super.key,
      required this.flag1,
      required this.flag2,
      required this.text, required this.ontap});
  final String flag1;
  final String flag2;
  final String text;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        width: 192,
        height: 97,
        decoration: const BoxDecoration(
          color: CustomColors.introContainer,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Image.asset(
                      flag1,
                      width: 24,
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Image.asset(
                      flag2,
                      width: 24,
                      height: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color: CustomColors.white,
                  fontFamily: "Unbounded",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
