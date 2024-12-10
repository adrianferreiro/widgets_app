import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_itmes.dart';
import 'package:widgets_app/config/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItems = appMenuItems[index];
        return _CustomListTile(menuItems: menuItems);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItems,
  });

  final MenuItem menuItems;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subTitle),
      leading: Icon(menuItems.icon),
      iconColor: colors.primary,
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: colors.primary,
      ),
      onTap: () {
        context.push(menuItems.link);
      },
    );
  }
}
