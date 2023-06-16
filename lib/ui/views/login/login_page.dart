import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:retopin_application/ui/common/widgets/custom_input.dart';
import 'package:retopin_application/ui/views/dashboard/dashboard_page.dart';
import '../../common/ui_helpers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpacing(70),
              const Text(
                'Enter Login Credentials',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2B2B2B)),
                textAlign: TextAlign.left,
              ),
              verticalSpacing(10),
              const Text(
                'Kindly Input your Login details to complete transaction',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff424036)),
              ),
              verticalSpacing(50),
              CustomTextInput(
                controller: _textEditingController,
                labelText: 'Phone number ',
                onChanged: (text) {
                  // Handle the text change
                  print('Entered text: $text');
                },
                prefixIcon: const Text(
                  'NG +234',
                  style: TextStyle(
                      color: Color(0xff424036),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                label: 'Phone number', // Optional label
              ),
              verticalSpacing(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomTextInput(
                      controller: _passwordController,
                      labelText: 'Enter Pin',
                      onChanged: (text) {
                        // Handle the text change
                        print('Entered text: $text');
                      },
                      label: 'Pin', // Optional label
                    ),
                  ),
                  horizontalSpacing(10),
                  SvgPicture.asset(
                    'assets/icons/biometric.svg',
                    height: 60,
                  )
                ],
              ),
              verticalSpacing(17),
              const Row(
                children: [
                  Text(
                    'Forgot Password? ',
                    style: TextStyle(
                        color: Color(0xff41484B),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Update now',
                    style: TextStyle(
                        color: Color(0xff753FF5),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              verticalSpacing(40),
              SizedBox(
                height: 48,
                width: double.maxFinite,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  color: const Color(0xFF753FF5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              // verticalSpacing(40),
              // const Row(
              //   children: [
              //     Text(
              //       'New to RETOPIN? ',
              //       style: TextStyle(
              //           color: Color(0xff41484B),
              //           fontSize: 12,
              //           fontWeight: FontWeight.w500),
              //     ),
              //     Text(
              //       'Create an account',
              //       style: TextStyle(
              //           color: Color(0xff753FF5),
              //           fontSize: 12,
              //           fontWeight: FontWeight.w500),
              //     ),
              //   ],
              // ),
            ],
          )),
    );
  }
}
