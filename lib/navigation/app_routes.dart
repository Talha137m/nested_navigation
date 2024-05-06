import 'package:go_router/go_router.dart';
import 'package:nested_navigation_with_go_router/navigation/sub_routes/dashbord_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: DashbordRouteName.profile,
    routes: [
      DashbordScreenRouter().route(),
    ],
  );
}
