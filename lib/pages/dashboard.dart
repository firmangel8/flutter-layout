// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:laundryapp/pages/dashboard_fragments/dashboard_add.dart';
import 'package:laundryapp/pages/dashboard_fragments/dashboard_favorite.dart';
import 'package:laundryapp/pages/dashboard_fragments/dashboard_home.dart';
import 'package:laundryapp/pages/dashboard_fragments/dashboard_maps.dart';
import 'package:laundryapp/pages/dashboard_fragments/dashboard_settings.dart';

import '../utils/constants.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Track active index
  final List<Widget> _screens = [
    const DashboardHome(),
    const DashboardMaps(),
    const DashboardAdd(),
    const DashboardFavorite(),
    const DashboardSettings()
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Constants.scaffoldBackgroundColor,
          buttonBackgroundColor: Constants.primaryColor,
          items: [
            Icon(
              Icons.home,
              size: 30.0,
              color: activeIndex == 0 ? Colors.white : Constants.activeMenu,
            ),
            Icon(
              Icons.pin_drop_rounded,
              size: 30.0,
              color: activeIndex == 1 ? Colors.white : Constants.activeMenu,
            ),
            Icon(
              Icons.add,
              size: 30.0,
              color: activeIndex == 2 ? Colors.white : Constants.activeMenu,
            ),
            Icon(
              Icons.favorite,
              size: 30.0,
              color: activeIndex == 3 ? Colors.white : Constants.activeMenu,
            ),
            Icon(
              Icons.settings,
              size: 30.0,
              color: activeIndex == 4 ? Colors.white : Constants.activeMenu,
            ),
          ],
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
        ),
        backgroundColor: Constants.primaryColor,
        body: _screens[activeIndex]);
  }
}
