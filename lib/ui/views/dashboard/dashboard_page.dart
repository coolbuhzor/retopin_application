import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:retopin_application/ui/common/ui_helpers.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        // verticalSpacing(40),
        Container(
          width: double.infinity,
          height: 305,
          padding: const EdgeInsets.only(left: 16, top: 70, right: 16),
          decoration: const BoxDecoration(color: Color(0xff753FF5)),
          child: Column(
            children: [
              Container(
                // height: 100,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xff9165F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person),
                    ),
                    Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.sunny,
                                size: 24,
                                color: Colors.orange,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Text(
                                  'Gold Plan',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                              Icon(
                                Icons.sunny,
                                size: 24,
                                color: Colors.orange,
                              ),
                            ]),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text('RETOPIN Banquet Plan',
                              style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.notifications_rounded),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Padding(padding: EdgeInsets.all(18)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
