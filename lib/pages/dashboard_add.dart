// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class DashboardAdd extends StatefulWidget {
  const DashboardAdd({Key? key}) : super(key: key);

  @override
  _DashboardAddState createState() => _DashboardAddState();
}

class _DashboardAddState extends State<DashboardAdd> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dashboard Add'),
    );
  }
}
