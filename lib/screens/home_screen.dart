import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_option.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuOption> menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Componentes en Flutter'),
        ),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(
            menuOptions[i].icon,
            color: AppTheme.primary,
          ),
          title: Text(menuOptions[i].name),
          onTap: () {
            /* final route = MaterialPageRoute(
              builder: (context) => const Listview1Screen(),
            );
            Navigator.push(context, route); */
            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
