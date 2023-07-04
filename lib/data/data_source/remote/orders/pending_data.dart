import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class PendingOrdersData {
  Crud crud;

  PendingOrdersData(this.crud);

  getData(String userId) async {
    var response = await crud.postData(AppLink.pendingOrders, {
      "userId": userId,
    });
    return response.fold((l) => l, (r) => r);
  }
}
