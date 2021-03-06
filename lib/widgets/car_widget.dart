import 'package:cars/models/_car.dart';
import 'package:cars/pages/car_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  const CarWidget({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(car.name),
                Text(car.brand.nome),
              ],
            ),
            Text(car.price.toString())
          ],
        ),
        onTap: () {
          _goToDetailPage(context);
        },
      ),
    );
  }

  void _goToDetailPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return CarDetail(car: car);
        },
      ),
    );
  }
}
