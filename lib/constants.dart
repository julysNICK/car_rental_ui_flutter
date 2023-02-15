import 'package:car_rental_ui/model/car.dart';
import 'package:flutter/material.dart';

Color mPrimaryColor = const Color(0xFF40ac9c);

Color mCardColor = const Color(0xFF203e5a);

List<Car> carList = [
  Car(
      image: "assets/images/bentley.png",
      price: 100,
      brand: "Bentley",
      model: "3A 2019",
      co2: "299 g/km",
      fuelConsumption: "10.9 l/100km"),
  Car(
      image: "assets/images/cadillac.png",
      price: 100,
      brand: "Cadillac",
      model: "3A 2019",
      co2: "299 g/km",
      fuelConsumption: "10.9 l/100km"),
  Car(
      image: "assets/images/maserati.png",
      price: 100,
      brand: "maserati",
      model: "3A 2019",
      co2: "299 g/km",
      fuelConsumption: "10.9 l/100km"),
  Car(
      image: "assets/images/rolls_royce.png",
      price: 100,
      brand: "rolls-royce",
      model: "3A 2019",
      co2: "299 g/km",
      fuelConsumption: "10.9 l/100km"),
];
