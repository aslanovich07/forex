import 'package:flutter/material.dart';
import '../services/constants/colors.dart';

class NewsContainer extends StatefulWidget {
  const NewsContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(widget.image),
              const SizedBox(height: 15),
              Text(
                widget.title,
                style: const TextStyle(
                  color: CustomColors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Unbounded",
                ),
              ),
              const SizedBox(height: 15),
              Text(
                widget.subTitle,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Unbounded",
                  color: CustomColors.privacy,
                  height: 1.4,
                  letterSpacing: 0.6,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: isSelected
                ? IconButton(
                    splashColor: CustomColors.transparent,
                    splashRadius: 1,
                    onPressed: () {
                      isSelected = false;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.star_rounded,
                      color: CustomColors.white,
                    ),
                  )
                : IconButton(
                    splashColor: CustomColors.transparent,
                    splashRadius: 1,
                    onPressed: () {
                      isSelected = true;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.star_border_rounded,
                      color: CustomColors.white,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
