import 'package:car_rental_ui/screens/avaliable/widgets/car_list_item.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AvailableCarScreen extends StatelessWidget {
  const AvailableCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) => CarListItem(index),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: const Text('Available Car'),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
