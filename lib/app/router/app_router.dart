import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/analytics/presentation/screens/analytics_screen.dart';
import '../../features/budgets/presentation/screens/budgets_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/transactions/presentation/screens/transactions_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/dashboard',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: ((context, state, navigationShell) {
        return _AppShell(navigationShell: navigationShell,);
      }),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/dashboard",
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/transactions",
              builder: (context, state) => TransactionsScreen(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/budgets',
              builder: (context, state) => const BudgetsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/analytics',
              builder: (context, state) => const AnalyticsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

 class _AppShell extends StatelessWidget {
   final StatefulNavigationShell navigationShell;

   const _AppShell({required this.navigationShell});

   void _onTap(int index) {
     navigationShell.goBranch(
         index, initialLocation: index == navigationShell.currentIndex);
   }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: navigationShell,
       bottomNavigationBar: NavigationBar(
         selectedIndex: navigationShell.currentIndex,
         onDestinationSelected: _onTap,
         destinations: const [
           NavigationDestination(
             icon: Icon(Icons.dashboard_outlined),
             selectedIcon: Icon(Icons.dashboard),
             label: 'Dashboard',
           ),
           NavigationDestination(
             icon: Icon(Icons.receipt_long_outlined),
             selectedIcon: Icon(Icons.receipt_long),
             label: 'Transactions',
           ),
           NavigationDestination(
             icon: Icon(Icons.account_balance_wallet_outlined),
             selectedIcon: Icon(Icons.account_balance_wallet),
             label: 'Budgets',
           ),
           NavigationDestination(
             icon: Icon(Icons.pie_chart_outline),
             selectedIcon: Icon(Icons.pie_chart),
             label: 'Analytics',
           ),
           NavigationDestination(
             icon: Icon(Icons.settings_outlined),
             selectedIcon: Icon(Icons.settings),
             label: 'Settings',
           ),
         ],
       ),
     );
   }
 }
