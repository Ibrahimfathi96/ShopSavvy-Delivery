import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class AcceptedOrdersData {
  Crud crud;

  AcceptedOrdersData(this.crud);

  getData( String deliveryId,) async {
    var response = await crud.postData(AppLink.acceptedOrders, {
      "deliveryId":deliveryId,
    });
    return response.fold((l) => l, (r) => r);
  }
}
