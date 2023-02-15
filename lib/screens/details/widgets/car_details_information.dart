import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/car.dart';
import '../../../widgets/attribute.dart';

class CarDetailsInformation extends StatelessWidget {
  const CarDetailsInformation({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        color: mPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          CarInformation(car: car),
          const Divider(
            height: 16,
            color: Colors.black54,
          ),
          Expanded(
            child: Column(
              children: const [
                DriverInfo(),
                SizedBox(
                  height: 12,
                ),
                DiverAppraise(),
                SizedBox(
                  height: 12,
                ),
                DriverCall(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CarInformation extends StatelessWidget {
  const CarInformation({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              color: Colors.black87,
            ),
            Attribute(
              value: car.model,
              name: 'Model No',
              color: Colors.black87,
            ),
            Attribute(
              value: car.co2,
              name: 'CO2',
              color: Colors.black87,
            ),
            Attribute(
              value: car.fuelConsumption,
              name: 'Fule Cons.',
              color: Colors.black87,
            ),
          ],
        )
      ],
    );
  }
}

class DriverCall extends StatelessWidget {
  const DriverCall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          child: const Text(
            'Call',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          child: const Text(
            'Book Now',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class DiverAppraise extends StatelessWidget {
  const DiverAppraise({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '5.0',
          style: TextStyle(),
        ),
        const SizedBox(
          width: 6,
        ),
        RatingBar(
          onRatingUpdate: (value) {},
          size: 14,
          selectColor: Colors.white,
        ),
      ],
    );
  }
}

class DriverInfo extends StatelessWidget {
  const DriverInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Jesica Smith',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'License NWR 369852',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              '369',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Ride',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              color: Colors.black87,
            ),
            Attribute(
              value: car.model,
              name: 'Model No',
              color: Colors.black87,
            ),
            Attribute(
              value: car.co2,
              name: 'CO2',
              color: Colors.black87,
            ),
            Attribute(
              value: car.fuelConsumption,
              name: 'Fule Cons.',
              color: Colors.black87,
            ),
          ],
        )
      ],
    );
  }
}

class RatingBar extends StatefulWidget {
  final int count;
  final double maxRating;
  final double value;
  final double size;
  final double padding;
  final bool selectAble;
  final Color selectColor;
  final ValueChanged<String> onRatingUpdate;

  const RatingBar(
      {super.key,
      this.maxRating = 10.0,
      this.count = 5,
      this.value = 10.0,
      this.size = 20,
      this.padding = 0,
      this.selectColor = Colors.blue,
      this.selectAble = false,
      required this.onRatingUpdate});

  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    value = widget.value;
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        double x = event.localPosition.dx;
        if (x < 0) x = 0;
        pointValue(x);
      },
      onPointerMove: (PointerMoveEvent event) {
        double x = event.localPosition.dx;
        if (x < 0) x = 0;
        pointValue(x);
      },
      onPointerUp: (_) {},
      behavior: HitTestBehavior.deferToChild,
      child: buildRowRating(),
    );
  }

  pointValue(double dx) {
    if (!widget.selectAble) {
      return;
    }
    if (dx >=
        widget.size * widget.count + widget.padding * (widget.count - 1)) {
      value = widget.maxRating;
    } else {
      for (double i = 1; i < widget.count + 1; i++) {
        if (dx > widget.size * i + widget.padding * (i - 1) &&
            dx < widget.size * i + widget.padding * i) {
          value = i * (widget.maxRating / widget.count);
          break;
        } else if (dx > widget.size * (i - 1) + widget.padding * (i - 1) &&
            dx < widget.size * i + widget.padding * i) {
          value = (dx - widget.padding * (i - 1)) /
              (widget.size * widget.count) *
              widget.maxRating;
          break;
        }
      }
    }
    setState(() {
      widget.onRatingUpdate(value.toStringAsFixed(1));
    });
  }

  Widget buildRowRating() {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: buildNormalRow(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: buildRow(),
          )
        ],
      ),
    );
  }

  List<Widget> buildRow() {
    int full = fullStars();
    List<Widget> children = [];
    for (int i = 0; i < full; i++) {
      children.add(Icon(
        Icons.star,
        color: widget.selectColor,
        size: widget.size,
      ));
      if (i < widget.count - 1) {
        children.add(
          SizedBox(
            width: widget.padding,
          ),
        );
      }
    }
    if (full < widget.count) {
      children.add(ClipRect(
        clipper: SMClipper(rating: star() * widget.size),
        child: Icon(
          Icons.star,
          color: widget.selectColor,
          size: widget.size,
        ),
      ));
    }
    return children;
  }

  List<Widget> buildNormalRow() {
    List<Widget> children = [];
    for (int i = 0; i < widget.count; i++) {
      children.add(Icon(
        Icons.star,
        color: Colors.grey,
        size: widget.size,
      ));
      if (i < widget.count - 1) {
        children.add(SizedBox(
          width: widget.padding,
        ));
      }
    }
    return children;
  }

  int fullStars() {
    return (value / (widget.maxRating / widget.count)).floor();
    return 0;
  }

  double star() {
    if (widget.count / fullStars() == widget.maxRating / value) {
      return 0;
    }
    return (value % (widget.maxRating / widget.count)) /
        (widget.maxRating / widget.count);
    return 0;
  }
}

class SMClipper extends CustomClipper<Rect> {
  final double rating;

  SMClipper({this.rating = 0});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0.0, 0.0, rating, size.height);
  }

  @override
  bool shouldReclip(SMClipper oldClipper) {
    return rating != oldClipper.rating;
  }
}
