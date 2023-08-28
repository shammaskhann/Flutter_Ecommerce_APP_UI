import 'package:flutter/material.dart';
import 'package:flutter_assignment/Widgets/RoundButton.dart';
import 'package:flutter_assignment/constants/AppFont.dart';

import '../../constants/AppColor.dart';
import '../../models/login_services/login_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  LoginServices loginServices = LoginServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "What’s your email? 📨",
              style: AppFont.heading1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "We need it to search after your account or\ncreate a new one",
              style: AppFont.subtitle1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: loginServices.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Email',
                        labelStyle: AppFont.textFieldHintText,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: loginServices.passwordController,
                      obscureText: loginServices.isPasswordVisible,
                      decoration: InputDecoration(
                        fillColor: AppColor.greyColor,
                        focusColor: AppColor.primaryColor,
                        border: const OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                loginServices.isPasswordVisible =
                                    !loginServices.isPasswordVisible;
                              });
                            },
                            child: const Icon(Icons.visibility_off)),
                        labelStyle: AppFont.textFieldHintText,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Password";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RoundButton(
                title: 'Login',
                loading: loginServices.loading,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      loginServices.loading = true;
                    });
                    loginServices.login();
                  }
                })
          ],
        ),
      )),
    );
  }
}
