import 'package:car_rental_ui/model/car.dart';
import 'package:car_rental_ui/screens/details/widgets/car_details_information.dart';
import 'package:car_rental_ui/screens/details/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class DetailsCar extends StatelessWidget {
  DetailsCar(this.car, {super.key});
  Car car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/map.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const MyAppbarDetail(),
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: Stack(
              children: [
                CarDetailsInformation(car: car),
                Positioned(
                  right: 16,
                  child: Image.asset(
                    car.image,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
