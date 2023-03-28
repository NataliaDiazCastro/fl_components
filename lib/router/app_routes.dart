import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home_filled,
    //     name: 'Home Screen',
    //     screen: HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_rounded,
        name: 'Listview tipo 1',
        screen: Listview1Screen()),
    MenuOption(
        route: 'listviw2',
        icon: Icons.list_rounded,
        name: 'Listview tipo 2 ',
        screen: Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alertas - Alerts',
        screen: AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Tarjetas - Cards',
        screen: CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervisor_account,
        name: 'Circle Avatar',
        screen: AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_fill_outlined,
        name: 'Animated Container',
        screen: AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Text Inputs',
        screen: InputsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGeneratRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
