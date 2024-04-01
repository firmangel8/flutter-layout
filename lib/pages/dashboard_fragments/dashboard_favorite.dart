// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class DashboardFavorite extends StatefulWidget {
  const DashboardFavorite({Key? key}) : super(key: key);

  @override
  _DashboardFavoriteState createState() => _DashboardFavoriteState();
}

class _DashboardFavoriteState extends State<DashboardFavorite> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dashboard Favorite'),
    );
  }
}
