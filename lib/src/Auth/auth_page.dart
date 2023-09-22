// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new_app/src/component/button.dart';
import 'package:new_app/src/utils/config.dart';

class AuthPage extends StatefulWidget {
  AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  bool obseureText = true;
  late double width, height;
  @override
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    Config().init(context);
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Config.primaryColor,
              decoration: const InputDecoration(
                hintText: 'Email Address',
                labelText: 'Email',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.email_outlined),
                prefixIconColor: Config.primaryColor,
              ),
            ),
            Config.smallSpace,
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Config.primaryColor,
              obscureText: obseureText,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                alignLabelWithHint: true,
                prefixIcon: const Icon(Icons.lock_outline),
                prefixIconColor: Config.primaryColor,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obseureText = !obseureText;
                    });
                  },
                  icon: obseureText
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.black38,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: Config.primaryColor,
                        ),
                ),
              ),
            ),
            Config.smallSpace,
            Button(
              width: width,
              text: 'Sign In',
              disable: false,
              onPressed: () {},
              height: height * 0.075,
            ),
          ],
        ),);
  }
}
