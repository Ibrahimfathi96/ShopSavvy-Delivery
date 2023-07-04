import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class CheckPhoneForgetPasswordData{
  Crud crud;

  CheckPhoneForgetPasswordData(this.crud);

  postData(String phone)async{
    var response = await crud.postData(AppLink.checkPhone, {
      "phone":phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}