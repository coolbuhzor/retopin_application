// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retopin_application/ui/views/login/Login_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40.0),
        color: Color(0xffF2EDFF),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 70,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/retopin-image.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: Center(
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40.0, bottom: 20.0),
                  child: Text(
                    'Welcome to RETOPIN',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF753ff5)),
                  ),
                ),
                const Text(
                  'RETOPIN is a retail social network that is designed to allow you recharge on the GO',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF323232)),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 48,
                        width: double.maxFinite,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          color: const Color(0xFF753FF5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 24, bottom: 24),
                        child: Text(
                          'Create a new account',
                          style:
                              TextStyle(color: Color(0xFF753FF5), fontSize: 16),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
