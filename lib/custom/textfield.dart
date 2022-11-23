import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String label;
  final Widget icon;
  final TextInputType type;
  const CustomTextField({
    Key? key,
    required TextEditingController email,
    required this.title,
    required this.icon,
    required this.type,
    required this.label,
  })  : _email = email,
        super(key: key);

  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: const Color(0xffE5ECF6),
        surfaceTintColor: Colors.white,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xff8A8A8A),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  child: TextField(
                    controller: _email,
                    obscureText:
                        type == TextInputType.visiblePassword ? true : false,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      labelText: label,
                      labelStyle: const TextStyle(fontSize: 15),
                      border: InputBorder.none,
                      prefixIcon: icon,
                      isDense: true,
                      suffixIcon: type == TextInputType.visiblePassword
                          ? const Icon(Icons.remove_red_eye)
                          : const SizedBox(width: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
