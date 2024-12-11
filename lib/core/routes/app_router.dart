import 'package:go_router/go_router.dart';
import 'package:task2_level1/core/routes/routes.dart';
import 'package:task2_level1/features/cart/presentation/views/cart_empty.dart';
import 'package:task2_level1/features/category_listing/presentation/views/category_listing_screen.dart';
import 'package:task2_level1/features/home/presentation/views/main_page.dart';
import 'package:task2_level1/features/my_profile/presentation/views/my_profile_view.dart';
import 'package:task2_level1/features/notification/presentation/views/notifaction_page.dart';
import 'package:task2_level1/features/product_detials/data/models/product_model.dart';
import 'package:task2_level1/features/product_detials/presentation/views/product_details_screen.dart';
import 'package:task2_level1/features/splash_screen/presentation/views/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const MainScreen(),
        routes: [
          GoRoute(
            path: 'categories',
            builder: (context, state) {
              final categoryName = state.extra as String;
              return CategoryListingScreen(categoryName: categoryName);
            },
          ),
          GoRoute(
            path: 'product-details',
            builder: (context, state) {
              final product = state.extra as ProductModel;
              return ProductDetailsScreen(product: product);
            },
          ),
        ],
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const MyProfileView(),
      ),
      GoRoute(
        path: '/cart-empty',
        builder: (context, state) => const CartEmptyPage(),
      ),
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationPage(),
      ),
    ],
  );
}
