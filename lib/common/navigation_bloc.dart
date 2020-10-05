import 'package:custom_drawer/pages/dashboard.dart';
import 'package:custom_drawer/pages/favourites.dart';
import 'package:custom_drawer/pages/feeds.dart';
import 'package:custom_drawer/pages/notifications.dart';
import 'package:custom_drawer/pages/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationEvents {
  DashboardClickedEvent,
  ProfileClickedEvent,
  FeedsClickedEvent,
  FavouritesClickedEvent,
  NotificationClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(Dashboard());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield Dashboard();
        break;
      case NavigationEvents.ProfileClickedEvent:
        yield Profile();
        break;
      case NavigationEvents.FeedsClickedEvent:
        yield Feeds();
        break;
      case NavigationEvents.FavouritesClickedEvent:
        yield Favourites();
        break;
      case NavigationEvents.NotificationClickedEvent:
        yield Notification();
        break;
    }
  }
}
