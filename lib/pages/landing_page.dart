import 'package:englishmemoryagain/pages/home_page.dart';
import 'package:englishmemoryagain/values/app_assets.dart';
import 'package:englishmemoryagain/values/app_colors.dart';
import 'package:englishmemoryagain/values/app_styles.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        color: AppColors.primaryColor,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Welcome to", style: AppStyles.h3)),
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("English",
                          style: AppStyles.h2.copyWith(
                              color: AppColors.blackGray,
                              fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(top: 84),
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          child: Text("Qoutes”", style: AppStyles.h4)),
                    )
                  ])),
            ),
            Expanded(
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Image.asset(AppAssets.rightArrow),
                    color: AppColors.lightGray,
                    shape: CircleBorder()))
          ],
        ),
      ),
    );
  }
}
