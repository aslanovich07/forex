import 'package:flutter/material.dart';
import '../services/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onpressed});
  final String text;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(17),
            ),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(250, 60),
        ),
        backgroundColor: MaterialStateProperty.all(CustomColors.terms),
      ),
      onPressed: onpressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: "Unbounded",
          color: CustomColors.white,
        ),
      ),
    );
  }
}
