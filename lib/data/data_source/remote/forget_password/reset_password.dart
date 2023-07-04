import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class ResetPasswordData{
  Crud crud;

  ResetPasswordData(this.crud);

  postData(String email, String password)async{
    var response = await crud.postData(AppLink.resetPassword, {
      "password":password,
      "email":email,
    });
    return response.fold((l) => l, (r) => r);
  }
}