import 'package:financetest/screens/navigation.dart';
import 'package:flutter/material.dart';

import '../custom/button.dart';
import '../custom/textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F8FE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              const SizedBox(height: 100),
              CustomTextField(
                email: _email,
                icon: const Icon(
                  Icons.email_outlined,
                  color: Colors.black45,
                  size: 25,
                ),
                title: 'Email Address',
                type: TextInputType.emailAddress,
                label: 'Username@gmail.com',
              ),
              CustomTextField(
                email: _password,
                icon: Image.asset(
                  'assets/lock.png',
                  height: 10,
                ),
                title: 'Password',
                type: TextInputType.visiblePassword,
                label: '********',
              ),
              CustomButton(
                ontap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Navigation(),
                    ),
                  );
                },
                title: 'Login',
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
