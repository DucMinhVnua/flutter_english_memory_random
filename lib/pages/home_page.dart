import 'package:englishmemoryagain/values/app_colors.dart';
import 'package:englishmemoryagain/values/app_styles.dart';
import 'package:flutter/material.dart';

import '../values/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.9);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0.0,
        title: Text('English today',
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 36,
                fontFamily: FontFamily.sen)),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Image.asset(AppAssets.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        color: AppColors.secondColor,
        child: Column(children: [
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Your mind",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: FontFamily.sen,
                  )),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 25.0),
              child: ButtonTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                buttonColor: Colors.white,
                minWidth: double.infinity,
                height: 38.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Favorites",
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textColor,
                            letterSpacing: 1.05,
                            fontFamily: FontFamily.sen)),
                  ),
                ),
              )),
          Container(
              padding: const EdgeInsets.only(top: 25.0),
              child: ButtonTheme(
                splashColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                buttonColor: Colors.white,
                minWidth: double.infinity,
                height: 38.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Your control",
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textColor,
                            letterSpacing: 1.05,
                            fontFamily: FontFamily.sen)),
                  ),
                ),
              )),
        ]),
      )),
      body: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 27),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    child: Text(
                        '“It is amazing how complete is the delusion that beauty is goodness.”',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.sen,
                          color: AppColors.textColor,
                          letterSpacing: 1.05,
                        ))),
              ),
              Expanded(
                  flex: 7,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3, 5),
                                  blurRadius: 6),
                            ],
                            color: AppColors.primaryColor,
                          ),
                          child: (Column(
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(AppAssets.heart)),
                              Container(
                                  child: Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                    maxLines: 1,
                                    text: TextSpan(
                                        text: "b".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 96,
                                            fontFamily: FontFamily.sen,
                                            fontWeight: FontWeight.bold,
                                            shadows: [
                                              BoxShadow(
                                                  color: Colors.black38,
                                                  offset: Offset(3, 6),
                                                  blurRadius: 6),
                                            ]),
                                        children: [
                                          TextSpan(
                                              text: "eautiful",
                                              style: TextStyle(
                                                  fontSize: 64,
                                                  fontFamily: FontFamily.sen,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 2,
                                                  shadows: [
                                                    BoxShadow(
                                                        color: Colors.white)
                                                  ]))
                                        ])),
                              )),
                              Container(
                                padding: EdgeInsets.only(top: 37),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      '“Think of all the beauty still left around you and be happy.”',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          letterSpacing: 1.05,
                                          fontSize: 28,
                                          fontFamily: FontFamily.sen,
                                          color: AppColors.textColor)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  alignment: Alignment.bottomRight,
                                  child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text('― Anne Frank',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: AppColors.textColor,
                                            fontSize: 18,
                                            fontFamily: FontFamily.sen,
                                          ))),
                                ),
                              ),
                            ],
                          )),
                        ),
                      );
                    },
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 87, top: 18),
                  height: 8,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        print(_currentIndex);
                        return buildIndicator(index == _currentIndex, size);
                      })),
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.primaryColor,
          child: Image.asset(AppAssets.exchange)),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
        margin: const EdgeInsets.only(right: 16),
        width: isActive ? size.width * 1 / 5 : 24,
        height: 8,
        decoration: BoxDecoration(
            color: isActive ? AppColors.lightBlue : AppColors.grayColor,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(3, 2), blurRadius: 2)
            ]));
  }
}
