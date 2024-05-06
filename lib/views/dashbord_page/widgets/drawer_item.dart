import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_with_go_router/navigation/sub_routes/dashbord_routes.dart';

class DrawerItem extends StatelessWidget {
  final int index;
  final String title;
  const DrawerItem({super.key, required this.index, required this.title});
  static int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _itemClick(context);
        _currentIndex = index;
      },
      child: Container(
        color: _currentIndex == index ? Colors.blue : null,
        child: Text(title),
      ),
    );
  }

  void _itemClick(BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(DashbordRouteName.profile);
        break;
      case 1:
        GoRouter.of(context).go(DashbordRouteName.deatils);
        break;
      case 2:
        GoRouter.of(context).go(DashbordRouteName.posts);
        break;
      case 3:
        GoRouter.of(context).go(DashbordRouteName.users);
    }
    
  }
}
