import 'package:custom_drawer/common/navigation_bloc.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Dashboard"),
    );
  }
}
