// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class DashboardSettings extends StatefulWidget {
  const DashboardSettings({Key? key}) : super(key: key);

  @override
  _DashboardSettingsState createState() => _DashboardSettingsState();
}

class _DashboardSettingsState extends State<DashboardSettings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dashboard Setting'),
    );
  }
}
