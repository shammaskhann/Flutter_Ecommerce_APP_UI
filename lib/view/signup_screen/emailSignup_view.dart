import 'package:flutter/material.dart';
import 'package:flutter_assignment/Widgets/RoundButton.dart';
import 'package:flutter_assignment/models/signup_services/signup_services.dart';

import '../../constants/AppColor.dart';
import '../../constants/AppFont.dart';

class emailSignupScreen extends StatefulWidget {
  const emailSignupScreen({super.key});

  @override
  State<emailSignupScreen> createState() => _emailSignupScreenState();
}

class _emailSignupScreenState extends State<emailSignupScreen> {
  SignupServices signupServices = SignupServices();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Getting started! ✌️",
                style: AppFont.heading1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Look like you are new to us! Create an\naccount for a complete experience.",
                style: AppFont.subtitle1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: signupServices.emailController,
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
                        height: 15,
                      ),
                      TextFormField(
                        controller: signupServices.passwordController,
                        obscureText: signupServices.isPasswordVisible,
                        decoration: InputDecoration(
                          fillColor: AppColor.greyColor,
                          focusColor: AppColor.primaryColor,
                          border: const OutlineInputBorder(),
                          labelText: 'Password',
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  signupServices.isPasswordVisible =
                                      !signupServices.isPasswordVisible;
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
                      const SizedBox(
                        height: 15,
                      ),
                      //confirm passwrd
                      TextFormField(
                        controller: signupServices.confirmPasswordController,
                        obscureText: signupServices.isPasswordVisible,
                        decoration: InputDecoration(
                          fillColor: AppColor.greyColor,
                          focusColor: AppColor.primaryColor,
                          border: const OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          labelStyle: AppFont.textFieldHintText,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter Password";
                          } else if (value !=
                              signupServices.passwordController.text
                                  .toString()) {
                            return "Password does not match";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              RoundButton(
                  title: 'Sign up',
                  loading: signupServices.loading,
                  onTap: () {
                    setState(() {
                      signupServices.loading = true;
                    });
                    if (_formKey.currentState!.validate()) {
                      signupServices.signup(context);
                    }
                  }),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
    );
  }
}
