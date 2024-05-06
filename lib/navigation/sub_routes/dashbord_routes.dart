import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_with_go_router/navigation/screen_routes.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/dashbord_page.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/details.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/posts.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/profile.dart';
import 'package:nested_navigation_with_go_router/views/dashbord_page/widgets/users.dart';

abstract class DashbordRouteName {
  static const profile = '/profile';
  static const posts = '/posts';
  static const deatils = '/deatils';
  static const users = '/users';
}



mixin RoutesBehaviour {
  List<RouteBase> routes = [
    GoRoute(
      path: DashbordRouteName.profile,
      pageBuilder: (context, state) {
        return PageSCaleTransition(
          page: const ProfileWidget(),
        );
      },
    ),
    GoRoute(
      path: DashbordRouteName.posts,
      pageBuilder: (context, state) {
        return PageSCaleTransition(
          page: const PostsWidget(),
        );
      },
    ),
    GoRoute(
      path: DashbordRouteName.deatils,
      pageBuilder: (context, state) {
        return PageSCaleTransition(
          page: const DetailsWidget(),
        );
      },
    ),
    GoRoute(
      path: DashbordRouteName.users,
      pageBuilder: (context, state) {
        return PageSCaleTransition(
          page: const UsersWidget(),
        );
      },
    ),
  ];
}

class DashbordScreenRouter with RoutesBehaviour implements ScreenRoutes {
  static DashbordScreenRouter? _dashbordScreenRouter;
  DashbordScreenRouter._internal();
  factory DashbordScreenRouter() {
    return _dashbordScreenRouter ??= DashbordScreenRouter._internal();
  }
  @override
  RouteBase route() {
    return ShellRoute(
        builder: (context, state, child) {
          return  DashbordPage(child: child,);
        },
        routes: routes);
  }
}

class PageSCaleTransition extends CustomTransitionPage {
  final Widget page;
  PageSCaleTransition({required this.page})
      : super(
          transitionDuration: const Duration(seconds: 2),
          reverseTransitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: page,
        );
}
