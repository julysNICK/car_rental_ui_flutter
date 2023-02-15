import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/car.dart';
import '../../../widgets/attribute.dart';

class CarInfomation extends StatelessWidget {
  const CarInfomation({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: mCardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$${car.price}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'price/hr',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Attribute(
                value: car.brand,
                name: 'Brand',
              ),
              Attribute(
                value: car.model,
                name: 'Model No',
              ),
              Attribute(
                value: car.co2,
                name: 'CO2',
              ),
              Attribute(
                value: car.fuelConsumption,
                name: 'Fule Cons.',
              ),
            ],
          )
        ],
      ),
    );
  }
}
