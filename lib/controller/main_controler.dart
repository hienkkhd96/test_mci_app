import 'package:mci/const/enum.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxBool isLogin = false.obs;
  Rx<StringLevelUser> levelUser = StringLevelUser.fresher.obs;
  void loginSuccess() {
    isLogin.value = true;
  }

  void setlevelUser(StringLevelUser value) {
    levelUser = value.obs;
  }
}
