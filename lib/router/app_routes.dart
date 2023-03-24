import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_filled,
        name: 'Home Screen',
        screen: HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_rounded,
        name: 'Listview tipo 1',
        screen: Listview1Screen()),
    MenuOption(
        route: 'listviw2',
        icon: Icons.home_filled,
        name: 'Listview tipo 2 ',
        screen: Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.home_filled,
        name: 'Alertas - Alerts',
        screen: AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.home_filled,
        name: 'Taejetas - Cards',
        screen: CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const Listview1Screen(),
    'listview2': (context) => const Listview2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };

  static Route<dynamic> onGeneratRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
