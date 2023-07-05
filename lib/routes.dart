import 'package:get/get.dart';
import 'package:shop_savvy_delivery/core/middleware/middleware.dart';
import 'package:shop_savvy_delivery/view/screen/auth/forget_password/forget_password.dart';
import 'package:shop_savvy_delivery/view/screen/auth/forget_password/reset_password.dart';
import 'package:shop_savvy_delivery/view/screen/auth/forget_password/reset_password_success.dart';
import 'package:shop_savvy_delivery/view/screen/auth/forget_password/verify_code_forget_pass.dart';
import 'package:shop_savvy_delivery/view/screen/auth/sign_in.dart';
import 'package:shop_savvy_delivery/view/screen/home/home_screen.dart';
import 'package:shop_savvy_delivery/view/screen/languages_view.dart';
import 'package:shop_savvy_delivery/view/screen/onboarding_view.dart';
import 'package:shop_savvy_delivery/view/screen/orders_view/myorders_view.dart';
import 'package:shop_savvy_delivery/view/screen/orders_view/orders_details.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: Language.routeName, page: () => const Language(), middlewares: [
    MyMiddleWare(),
  ]),
  GetPage(name: OnBoarding.routeName, page: () => const OnBoarding()),
  GetPage(name: SignIn.routeName, page: () => const SignIn()),
  GetPage(name: ForgetPassword.routeName, page: () => const ForgetPassword()),
  GetPage(
      name: ForgetPasswordVerifyCode.routeName,
      page: () => const ForgetPasswordVerifyCode()),
  GetPage(name: ResetPassword.routeName, page: () => const ResetPassword()),
  GetPage(
      name: ResetPasswordSuccessfully.routeName,
      page: () => const ResetPasswordSuccessfully()),
  GetPage(name: HomeScreen.routeName, page: () => const HomeScreen()),
  GetPage(name: MyOrdersView.routeName, page: () => const MyOrdersView()),
  GetPage(name: OrdersDetails.routeName, page: () => const OrdersDetails()),
];
