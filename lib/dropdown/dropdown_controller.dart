import 'package:get/get.dart';

import 'model/user.dart';

class DropdownController extends GetxController {
  var items = List<User>().obs;
  Rx<User> selectedItem =
      null.obs; // for Storing Selected item, each dropdown changed

  @override
  void onInit() {
    super.onInit();
    var users = [
      User(id: 1, name: "Argana", age: 21),
      User(id: 2, name: "Deni", age: 22),
      User(id: 3, name: "Rasyid", age: 23),
      User(id: 4, name: "Devina", age: 20),
      User(id: 5, name: "Markus", age: 26),
    ];
    items = RxList.from(users);
    update();
  }

  void onChange(User user) {
    this.selectedItem = Rx(user);
    update();
  }
}
