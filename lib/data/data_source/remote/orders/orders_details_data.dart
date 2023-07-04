import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class OrdersDetailsData {
  Crud crud;

  OrdersDetailsData(this.crud);

  getData(String orderId) async {
    var response = await crud.postData(AppLink.ordersDetails, {
      "orderId": orderId,
    });
    return response.fold((l) => l, (r) => r);
  }
}
