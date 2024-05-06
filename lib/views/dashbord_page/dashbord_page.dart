import 'package:flutter/material.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/details.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/drawer_item.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/posts.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/profile.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/users.dart';

class DashbordPage extends StatelessWidget {
  final Widget child;
  const DashbordPage({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text('Header'),
            ),
            DrawerItem(index: 0, title: 'Profile'),
            DrawerItem(index: 1, title: 'Details'),
            DrawerItem(index: 2, title: 'Posts'),
            DrawerItem(index: 3, title: 'Users'),
          ],
        ),
      ),
      body:child,
    );
  }
}
