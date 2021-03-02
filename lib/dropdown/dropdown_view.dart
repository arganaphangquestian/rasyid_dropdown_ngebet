import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dropdown_controller.dart';
import 'model/user.dart';

class DropdownView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DropdownController>(
      init: DropdownController(),
      builder: (_) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<User>(
                hint: Text("Select User"),
                value: _.selectedItem.value,
                items: _.items.map((value) {
                  return DropdownMenuItem(
                    child: Text(value.name),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  _.onChange(value);
                },
              ),
              SizedBox(
                height: 8,
              ),
              Obx(() => Text(
                  "User selected ${_.selectedItem.value == null ? 'NULL' : _.selectedItem.value.name}"))
            ],
          ),
        ),
      ),
    );
  }
}
