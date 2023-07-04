import 'package:shop_savvy_delivery/core/class/crud.dart';
import 'package:shop_savvy_delivery/link_api.dart';

class SignInData {
  Crud crud;

  SignInData(this.crud);

  postData(String email, String password) async {
    var response = await crud.postData(AppLink.signIn, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
