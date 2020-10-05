import 'package:custom_drawer/common/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class NavigationModel {
  String title;
  IconData icon;
  NavigationEvents navigationEvents;
  NavigationModel({this.title, this.icon, this.navigationEvents});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
    title: "Dashboard",
    icon: LineIcons.dashboard,
    navigationEvents: NavigationEvents.DashboardClickedEvent,
  ),
  NavigationModel(
    title: "Profile",
    icon: LineIcons.user,
    navigationEvents: NavigationEvents.ProfileClickedEvent,
  ),
  NavigationModel(
    title: "Feeds",
    icon: LineIcons.newspaper_o,
    navigationEvents: NavigationEvents.FeedsClickedEvent,
  ),
  NavigationModel(
    title: "Favourites",
    icon: LineIcons.star,
    navigationEvents: NavigationEvents.FavouritesClickedEvent,
  ),
  NavigationModel(
    title: "Notifications",
    icon: LineIcons.bell,
    navigationEvents: NavigationEvents.NotificationClickedEvent,
  ),
];
