import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class ArchiveOrdersData {
  Crud crud;

  ArchiveOrdersData(this.crud);

  getData(String userId) async {
    var response = await crud.postData(AppLink.archiveOrders, {
      "userId": userId,
    });
    return response.fold((l) => l, (r) => r);
  }
}
