class AppLink {
  //emulatorServer
  // static const String server = "http://10.0.2.2/shop_savvy";
  //phoneServer
  static const String server = "http://192.168.1.11/shop_savvy/delivery";

  // static const String server = "http://192.168.1.1/shop_savvy";
  static const String test = "$server/test.php";

  //AUTH PHP
  static const String signup = "$server/auth/sign_up.php";
  static const String signIn = "$server/auth/sign_in.php";
  static const String resend = "$server/auth/resend.php";
  static const String signupVerifyCode = "$server/auth/verify_code.php";

  //ForgetPassword PHP
  static const String checkEmail = "$server/forget_password/check_email.php";
  static const String checkPhone =
      "$server/forget_password/check_phone_number.php";
  static const String resetPassword =
      "$server/forget_password/reset_password.php";
  static const String fpVerifyCode = "$server/forget_password/verify_code.php";
  //Orders & Checkout PHP
  static const String orders = "$server/orders";
  static const String approvedOrders = "$orders/approve.php";
  static const String acceptedOrders = "$orders/accepted.php";
  static const String archivedOrders = "$orders/archive.php";
  static const String pendingOrders = "$orders/pending.php";
  static const String detailsOrders = "$orders/details.php";
  static const String doneOrders = "$orders/done.php";

  //Image Links
  static const String imagesLink = "$server/uploads";
  static const String imagesCategories = "$imagesLink/categories";
  static const String imagesItems = "$imagesLink/items";
}
