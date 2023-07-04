import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class CheckOutData {
  Crud crud;

  CheckOutData(this.crud);

  getData({
    required String userId,
    required String locationId,
    required String ordersType,
    required String ordersDeliveryPrice,
    required String ordersPrice,
    required String couponId,
    required String paymentMethod,
    String? couponDiscount,
  }) async {
    var response = await crud.postData(AppLink.ordersCheckout, {
      "userId": userId,
      "locationId": locationId,
      "ordersType": ordersType,
      "ordersDeliveryPrice": ordersDeliveryPrice,
      "ordersPrice": ordersPrice,
      "couponId": couponId,
      "paymentMethod": paymentMethod,
      "couponDiscount":couponDiscount,
    });
    return response.fold((l) => l, (r) => r);
  }
}
