import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class CheckEmailForgetPasswordData{
  Crud crud;

  CheckEmailForgetPasswordData(this.crud);

  postData(String email)async{
    var response = await crud.postData(AppLink.checkEmail, {
      "email":email,
    });
    return response.fold((l) => l, (r) => r);
  }
}