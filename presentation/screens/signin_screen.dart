// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginui/presentation/widgets/custom_button.dart';
import 'package:loginui/presentation/widgets/custom_textfield.dart';
import 'package:loginui/presentation/widgets/cutom_image.dart';
import 'package:loginui/presentation/widgets/text_widget.dart';
import 'package:loginui/presentation/widgets/wsized.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 40, 42, 57),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        height: 40,
                        width: 40,
                      ),
                      TextWidget(
                        text: '  Anywhere App.',
                        textcolor: Colors.white,
                        textsize: 22,
                        fontWeight: FontWeight.normal,
                      ),
                      WSizedBox(wval: 0.1, hval: 0),
                      TextWidget(
                        text: 'Home',
                        textcolor: Colors.grey,
                        textsize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      WSizedBox(wval: 0.1, hval: 0),
                      TextWidget(
                        text: 'Join',
                        textcolor: Colors.grey,
                        textsize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  WSizedBox(wval: 0, hval: 0.2),
                  Row(
                    children: [
                      WSizedBox(wval: 0.05, hval: 0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'START FOR FREE',
                            textcolor: Colors.grey,
                            textsize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                          WSizedBox(wval: 0, hval: 0.02),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextWidget(
                                text: 'Login to your account',
                                textcolor: Colors.white,
                                textsize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                height: 10,
                                width: 10,
                              ),
                            ],
                          ),
                          WSizedBox(wval: 0, hval: 0.03),
                          Row(
                            children: [
                              TextWidget(
                                text: 'Not A member ?',
                                textcolor: Colors.grey,
                                textsize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                              TextWidget(
                                text: ' Sign up',
                                textcolor: Colors.blue,
                                textsize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          WSizedBox(wval: 0, hval: 0.03),
                          const CustomTextField(
                              borderradius: 20,
                              bordercolor: Color.fromARGB(255, 50, 54, 69),
                              widh: 0.32,
                              height: 0.05,
                              icon: Icons.mail,
                              iconColor: Colors.grey,
                              hinttext: 'email',
                              hintColor: Colors.grey,
                              fontsize: 15,
                              obscureText: false),
                          WSizedBox(wval: 0, hval: 0.02),
                          const CustomTextField(
                              borderradius: 20,
                              bordercolor: Color.fromARGB(255, 50, 54, 69),
                              widh: 0.32,
                              height: 0.05,
                              icon: Icons.lock,
                              iconColor: Colors.grey,
                              hinttext: 'password',
                              hintColor: Colors.grey,
                              fontsize: 15,
                              obscureText: true),
                          WSizedBox(wval: 0, hval: 0.04),
                          CustomButton(
                              buttontext: 'login to my account',
                              width: 0.32,
                              height: 0.05,
                              bordercolor: Color.fromARGB(255,29, 144, 244),
                              borderradius: 25,
                              fontsize: 12,
                              fontweight: FontWeight.bold,
                              fontcolor: Colors.white,
                              onPressed: (){},
                              ),
                              
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
          const CustomImageWidget(
            height: 1,
            width: 0.5,
            imgpath: 'assets/images/bg.png',
          ),
        ],
      ),
    );
  }
}
