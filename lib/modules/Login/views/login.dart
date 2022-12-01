import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:taxi/global_Widget/global_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                color: HexColor('#F7D140'),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          Align(
            heightFactor: 2,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/splash.png',
              height: 120,
            ),
          ),
          Positioned(
            top: 200,
            left: 2,
            right: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Card(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Center(
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: HexColor('#F7D140'),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'نظام الدخول الموحد',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.amber,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  GlobalButton(
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(10),
                    horizontalPadding: 10,
                    textChild: 'دخول',
                    textChildStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'تخطي',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
