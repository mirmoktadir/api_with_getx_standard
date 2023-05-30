import 'package:api_with_getx_standard/app/modules/Page2/views/page2_view.dart';
import 'package:api_with_getx_standard/app/modules/Page3/views/page3_view.dart';
import 'package:api_with_getx_standard/app/modules/Page4/views/page4_view.dart';
import 'package:api_with_getx_standard/app/modules/Page5/views/page5_view.dart';
import 'package:api_with_getx_standard/app/modules/home/views/home_view.dart';
import 'package:api_with_getx_standard/config/theme/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({Key? key}) : super(key: key);

  List navigation = [
    const HomeView(),
    const Page2View(),
    const Page3View(),
    const Page4View(),
    const Page5View(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    void _onTap(int index) {
      _selectedIndex = index;

      (context as Element).markNeedsBuild();
    }

    return Scaffold(
      body: navigation[_selectedIndex],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: theme.colorScheme.secondary.withOpacity(1),
                spreadRadius: 0,
                blurRadius: 20),
          ],
        ),
        //  margin: const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
        padding: const EdgeInsets.only(bottom: 18),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    _onTap(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 0
                              ? theme.primaryColor
                              : Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            _selectedIndex == 0
                                ? IconlyBold.home
                                : IconlyLight.home,
                            color: _selectedIndex == 0
                                ? Colors.white
                                : theme.primaryColor.withOpacity(.5),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: _selectedIndex == 0
                                ? theme.primaryColor
                                : theme.primaryColor.withOpacity(.5),
                            fontSize: MyFonts.body2TextSize),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: NoSplash.splashFactory,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _onTap(1);
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 1
                              ? theme.primaryColor
                              : Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Iconsax.activity,
                            color: _selectedIndex == 1
                                ? Colors.white
                                : theme.primaryColor.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Page2",
                    style: TextStyle(
                        color: _selectedIndex == 1
                            ? theme.primaryColor
                            : theme.primaryColor.withOpacity(.5),
                        fontSize: MyFonts.body2TextSize),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: NoSplash.splashFactory,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _onTap(2);
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 2
                              ? theme.primaryColor
                              : Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Iconsax.magic_star,
                            size: 20,
                            color: _selectedIndex == 2
                                ? Colors.white
                                : theme.primaryColor.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Page3",
                    style: TextStyle(
                        color: _selectedIndex == 2
                            ? theme.primaryColor
                            : theme.primaryColor.withOpacity(.5),
                        fontSize: MyFonts.body2TextSize),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: NoSplash.splashFactory,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _onTap(3);
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 3
                              ? theme.primaryColor
                              : Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            IconlyLight.profile,
                            size: 20,
                            color: _selectedIndex == 3
                                ? Colors.white
                                : theme.primaryColor.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Page4",
                    style: TextStyle(
                        color: _selectedIndex == 3
                            ? theme.primaryColor
                            : theme.primaryColor.withOpacity(.5),
                        fontSize: MyFonts.body2TextSize),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: NoSplash.splashFactory,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _onTap(4);
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 4
                              ? theme.primaryColor
                              : Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            IconlyLight.buy,
                            size: 20,
                            color: _selectedIndex == 4
                                ? Colors.white
                                : theme.primaryColor.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Page5",
                    style: TextStyle(
                        color: _selectedIndex == 4
                            ? theme.primaryColor
                            : theme.primaryColor.withOpacity(.5),
                        fontSize: MyFonts.body2TextSize),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
