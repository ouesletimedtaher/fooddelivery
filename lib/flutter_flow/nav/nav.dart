import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const Onboarding01Widget()
          : const SplashPage01Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const Onboarding01Widget()
              : const SplashPage01Widget(),
        ),
        FFRoute(
          name: 'SplashPage_01',
          path: '/splashPage01',
          builder: (context, params) => const SplashPage01Widget(),
        ),
        FFRoute(
          name: 'Onboarding_01',
          path: '/onboarding01',
          builder: (context, params) => const Onboarding01Widget(),
        ),
        FFRoute(
          name: 'Onboarding_02',
          path: '/onboarding02',
          builder: (context, params) => const Onboarding02Widget(),
        ),
        FFRoute(
          name: 'Onboarding_03',
          path: '/onboarding03',
          builder: (context, params) => const Onboarding03Widget(),
        ),
        FFRoute(
          name: 'Onboarding_04',
          path: '/onboarding04',
          builder: (context, params) => const Onboarding04Widget(),
        ),
        FFRoute(
          name: 'LogIn_or_Signup',
          path: '/logInOrSignup',
          builder: (context, params) => const LogInOrSignupWidget(),
        ),
        FFRoute(
          name: 'LogIn',
          path: '/logIn',
          builder: (context, params) => const LogInWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => const SignUpWidget(),
        ),
        FFRoute(
          name: 'Home_Page',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'Menu_Page',
          path: '/menuPage',
          builder: (context, params) => const MenuPageWidget(),
        ),
        FFRoute(
          name: 'menu_Dessert_Page',
          path: '/menuDessertPage',
          builder: (context, params) => const MenuDessertPageWidget(),
        ),
        FFRoute(
          name: 'Offers_Page',
          path: '/offersPage',
          builder: (context, params) => const OffersPageWidget(),
        ),
        FFRoute(
          name: 'menu_Food_Page',
          path: '/menuFoodPage',
          builder: (context, params) => const MenuFoodPageWidget(),
        ),
        FFRoute(
          name: 'menu_Beverages_Page',
          path: '/menuBeveragesPage',
          builder: (context, params) => const MenuBeveragesPageWidget(),
        ),
        FFRoute(
          name: 'Profile_page',
          path: '/profilePage',
          builder: (context, params) => const ProfilePageWidget(),
        ),
        FFRoute(
          name: 'More_page',
          path: '/morePage',
          builder: (context, params) => const MorePageWidget(),
        ),
        FFRoute(
          name: 'Notifications_page',
          path: '/notificationsPage',
          builder: (context, params) => const NotificationsPageWidget(),
        ),
        FFRoute(
          name: 'About_Us_page',
          path: '/aboutUsPage',
          builder: (context, params) => const AboutUsPageWidget(),
        ),
        FFRoute(
          name: 'Inbox_page',
          path: '/inboxPage',
          builder: (context, params) => const InboxPageWidget(),
        ),
        FFRoute(
          name: 'Reset_Password_Page',
          path: '/resetPasswordPage',
          builder: (context, params) => const ResetPasswordPageWidget(),
        ),
        FFRoute(
          name: 'Verification_Code_Page',
          path: '/verificationCodePage',
          builder: (context, params) => const VerificationCodePageWidget(),
        ),
        FFRoute(
          name: 'New_Password_Page',
          path: '/newPasswordPage',
          builder: (context, params) => const NewPasswordPageWidget(),
        ),
        FFRoute(
          name: 'Scheduled_mission',
          path: '/scheduledMission',
          builder: (context, params) => const ScheduledMissionWidget(),
        ),
        FFRoute(
          name: 'Special_mission',
          path: '/specialMission',
          builder: (context, params) => const SpecialMissionWidget(),
        ),
        FFRoute(
          name: 'Product_Page',
          path: '/productPage',
          builder: (context, params) => const ProductPageWidget(),
        ),
        FFRoute(
          name: 'Cart_Page',
          path: '/cartPage',
          builder: (context, params) => const CartPageWidget(),
        ),
        FFRoute(
          name: 'Checkout_Page',
          path: '/checkoutPage',
          builder: (context, params) => const CheckoutPageWidget(),
        ),
        FFRoute(
          name: 'Change_Adress_Page',
          path: '/changeAdressPage',
          builder: (context, params) => const ChangeAdressPageWidget(),
        ),
        FFRoute(
          name: 'Seller_Dashboard_Home',
          path: '/sellerDashboardHome',
          builder: (context, params) => const SellerDashboardHomeWidget(),
        ),
        FFRoute(
          name: 'Categories',
          path: '/categories',
          builder: (context, params) => const CategoriesWidget(),
        ),
        FFRoute(
          name: 'Restaurant_View',
          path: '/restaurantView',
          builder: (context, params) => const RestaurantViewWidget(),
        ),
        FFRoute(
          name: 'TrackingOrder_01',
          path: '/trackingOrder01',
          builder: (context, params) => const TrackingOrder01Widget(),
        ),
        FFRoute(
          name: 'Add_new_Items',
          path: '/addNewItems',
          builder: (context, params) => const AddNewItemsWidget(),
        ),
        FFRoute(
          name: 'DeliveryManMessageScreen',
          path: '/deliveryManMessageScreen',
          builder: (context, params) => const DeliveryManMessageScreenWidget(),
        ),
        FFRoute(
          name: 'My_Ongoing_Orders',
          path: '/myOngoingOrders',
          builder: (context, params) => const MyOngoingOrdersWidget(),
        ),
        FFRoute(
          name: 'Chef_Food_Details',
          path: '/chefFoodDetails',
          builder: (context, params) => const ChefFoodDetailsWidget(),
        ),
        FFRoute(
          name: 'My_Orders_History',
          path: '/myOrdersHistory',
          builder: (context, params) => const MyOrdersHistoryWidget(),
        ),
        FFRoute(
          name: 'MENU',
          path: '/menu',
          builder: (context, params) => const MenuWidget(),
        ),
        FFRoute(
          name: 'Payment_Withdraw_Sucessful',
          path: '/paymentWithdrawSucessful',
          builder: (context, params) => const PaymentWithdrawSucessfulWidget(),
        ),
        FFRoute(
          name: 'Seller_Notifications',
          path: '/sellerNotifications',
          builder: (context, params) => const SellerNotificationsWidget(),
        ),
        FFRoute(
          name: 'Seller_Massages',
          path: '/sellerMassages',
          builder: (context, params) => const SellerMassagesWidget(),
        ),
        FFRoute(
          name: 'Reviews',
          path: '/reviews',
          builder: (context, params) => const ReviewsWidget(),
        ),
        FFRoute(
          name: 'My_Food_List',
          path: '/myFoodList',
          builder: (context, params) => const MyFoodListWidget(),
        ),
        FFRoute(
          name: 'Active_Map',
          path: '/Active_Map',
          builder: (context, params) => const ActiveMapWidget(),
        ),
        FFRoute(
          name: 'Courier_Profile',
          path: '/courierProfile',
          builder: (context, params) => const CourierProfileWidget(),
        ),
        FFRoute(
          name: 'Courier_Profile_Settings',
          path: '/courierProfileSettings',
          builder: (context, params) => const CourierProfileSettingsWidget(),
        ),
        FFRoute(
          name: 'Change_Password',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'Preferred_Name',
          path: '/preferredName',
          builder: (context, params) => const PreferredNameWidget(),
        ),
        FFRoute(
          name: 'Courier_Reports',
          path: '/courierReports',
          builder: (context, params) => const CourierReportsWidget(),
        ),
        FFRoute(
          name: 'Waiting_Orders',
          path: '/waiting_Orders',
          builder: (context, params) => const WaitingOrdersWidget(),
        ),
        FFRoute(
          name: 'CustomerMessageScreen',
          path: '/ClientMessageScreen',
          builder: (context, params) => const CustomerMessageScreenWidget(),
        ),
        FFRoute(
          name: 'TrackingOrder_01Courier',
          path: '/trackingOrder0',
          builder: (context, params) => const TrackingOrder01CourierWidget(),
        ),
        FFRoute(
          name: 'RestaurantMessageScreen',
          path: '/RestaurantMessageScreen',
          builder: (context, params) => const RestaurantMessageScreenWidget(),
        ),
        FFRoute(
          name: 'CServiceMessageScreen',
          path: '/CServiceMessageScreen',
          builder: (context, params) => const CServiceMessageScreenWidget(),
        ),
        FFRoute(
          name: 'Order_in_Progress',
          path: '/Order_in_Progress',
          builder: (context, params) => const OrderInProgressWidget(),
        ),
        FFRoute(
          name: 'Pendingonboardingactions',
          path: '/Homewithpendingonboardingactions',
          builder: (context, params) => const PendingonboardingactionsWidget(),
        ),
        FFRoute(
          name: 'Delivery_Details',
          path: '/deliveryDetails',
          builder: (context, params) => const DeliveryDetailsWidget(),
        ),
        FFRoute(
          name: 'Calendar',
          path: '/calendar',
          builder: (context, params) => const CalendarWidget(),
        ),
        FFRoute(
          name: 'Daily_Earnings',
          path: '/dailyEarnings',
          builder: (context, params) => const DailyEarningsWidget(),
        ),
        FFRoute(
          name: 'Booking_Slots',
          path: '/bookingSlots',
          builder: (context, params) => const BookingSlotsWidget(),
        ),
        FFRoute(
          name: 'Calendar_details',
          path: '/calendarDetails',
          builder: (context, params) => const CalendarDetailsWidget(),
        ),
        FFRoute(
          name: 'Slots_details',
          path: '/slotsDetails',
          builder: (context, params) => const SlotsDetailsWidget(),
        ),
        FFRoute(
          name: 'Support',
          path: '/support',
          builder: (context, params) => const SupportWidget(),
        ),
        FFRoute(
          name: 'Current_Earnings',
          path: '/currentEarnings',
          builder: (context, params) => const CurrentEarningsWidget(),
        ),
        FFRoute(
          name: 'Single_order',
          path: '/singleOrder',
          builder: (context, params) => const SingleOrderWidget(),
        ),
        FFRoute(
          name: 'SignUp_as_seller',
          path: '/signUpAsSeller',
          builder: (context, params) => const SignUpAsSellerWidget(),
        ),
        FFRoute(
          name: 'SignUp_as_courier',
          path: '/signUpAsCourier',
          builder: (context, params) => const SignUpAsCourierWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splashPage01';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
