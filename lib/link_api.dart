class AppLink {
  //emulatorServer
  // static const String server = "http://10.0.2.2/shop_savvy";
  //phoneServer
  static const String server = "http://192.168.1.6/shop_savvy/delivery";

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

  //Home PHP
  static const String home = "$server/home.php";

  //items PHP
  static const String itemsPHP = "$server/items/items.php";
  static const String searchItems = "$server/items/search.php";

  //Favorite PHP
  static const String favorite = "$server/favorite";
  static const String addToFavorite = "$favorite/add.php";
  static const String removeFromFavorite = "$favorite/remove.php";
  static const String favoriteView = "$favorite/view.php";
  static const String deleteFromMyFavorite = "$favorite/delete_item.php";

  //Cart PHP
  static const String cart = "$server/cart";
  static const String addToCart = "$cart/add.php";
  static const String deleteFromCart = "$cart/delete.php";
  static const String cartView = "$cart/view.php";
  static const String cartItemsCount = "$cart/items_count.php";

  //Location PHP
  static const String location = "$server/location";
  static const String addLocation = "$location/add.php";
  static const String editLocation = "$location/edit.php";
  static const String deleteLocation = "$location/delete.php";
  static const String viewLocation = "$location/view.php";

  //Coupons PHP
  static const String coupon = "$server/coupon";
  static const String checkCoupon = "$coupon/check_coupon.php";

  //Orders & Checkout PHP
  static const String orders = "$server/orders";
  static const String ordersCheckout = "$orders/checkout.php";
  static const String pendingOrders = "$orders/pending.php";
  static const String ordersDetails = "$orders/orders_details.php";
  static const String deleteOrder = "$orders/delete.php";
  static const String archiveOrders = "$orders/archive.php";

  //Notifications PHP
  static const String notifications = "$server/notifications.php";

  //Offers PHP
  static const String offers = "$server/offers.php";

  //Rating PHP
  static const String rating = "$server/rating.php";

  //Image Links
  static const String imagesLink = "$server/uploads";
  static const String imagesCategories = "$imagesLink/categories";
  static const String imagesItems = "$imagesLink/items";
}
