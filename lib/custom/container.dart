import 'package:flutter/material.dart';

class CustomSelectContainer extends StatelessWidget {
  final String text;
  final Color? color;
  const CustomSelectContainer({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.5,
              spreadRadius: 0.0,
              offset: Offset(0, 1.0),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: color != null ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
