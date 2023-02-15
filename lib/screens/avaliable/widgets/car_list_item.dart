import 'package:car_rental_ui/screens/avaliable/widgets/car_information.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/car.dart';
import '../../details/details_screen.dart';

class CarListItem extends StatelessWidget {
  const CarListItem(
    this.index, {
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    Car car = carList[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsCar(car),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            CarInfomation(car: car),
            Positioned(
              right: 40,
              child: Image.asset(
                car.image,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
