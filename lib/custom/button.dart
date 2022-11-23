import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() ontap;
  final String title;
  const CustomButton({
    Key? key,
    required this.ontap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xff3E4685),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
