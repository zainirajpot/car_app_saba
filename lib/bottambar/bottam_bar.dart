import 'package:car_app_saba/bottambar/bottam_screens.dart';
import 'package:car_app_saba/comman/app_colors.dart';
import 'package:car_app_saba/comman/app_content%20copy.dart';
import 'package:car_app_saba/comman/app_icons.dart';
import 'package:car_app_saba/homeview/homecontroller/homecontroller.dart';
import 'package:car_app_saba/homeview/homeview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottamBar extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
      int currentIndex = 0;
  List<Widget> _buildScreens() {
      return [
        HomePage(),
        const Screen2(color: Colors.red),
        const Screen2(color: Colors.blue),
        const Screen2(color: Colors.amber),
        const Screen2(color: Colors.pink),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: AppIcons.home,
          title: AppContent.home,
          activeColorPrimary: AppColors.activeColor,
          inactiveColorPrimary: AppColors.inactiveColor,
        ),
        PersistentBottomNavBarItem(
          icon: AppIcons.music,
          title: AppContent.music,
          activeColorPrimary: AppColors.activeColor,
          inactiveColorPrimary: AppColors.inactiveColor,
        ),
        PersistentBottomNavBarItem(
          icon: AppIcons.message,
          title: AppContent.message,
          activeColorPrimary: AppColors.activeColor,
          inactiveColorPrimary: AppColors.inactiveColor,
        ),
        PersistentBottomNavBarItem(
          icon: AppIcons.notification,
          title: AppContent.notification,
          activeColorPrimary: AppColors.activeColor,
          inactiveColorPrimary: AppColors.inactiveColor,
        ),
        PersistentBottomNavBarItem(
          icon:AppIcons.line,
          title: AppContent.arrow,
          activeColorPrimary: AppColors.activeColor,
          inactiveColorPrimary: AppColors.inactiveColor,
        ),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);

     return Scaffold(
      body: PersistentTabView(
        context,
        controller: controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: AppColors.black,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      ),
    );
  }
}