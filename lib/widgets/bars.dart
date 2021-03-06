import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  final String day;
  final double price;
  final double percentage;
  Bars(this.day, this.price, this.percentage);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constrains) {
        return Column(
          children: [
            Container(
              height: constrains.maxHeight * .15,
              child: FittedBox(
                child: Text('\$${price.toStringAsFixed(0)}'),
              ),
            ),
            SizedBox(
              height: constrains.maxHeight * .05,
            ),
            Container(
              height: constrains.maxHeight * .6,
              width: 10,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: Color.fromRGBO(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  FractionallySizedBox(
                    heightFactor: percentage,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: constrains.maxHeight * .05,
            ),
            Container(
              height: constrains.maxHeight * .15,
              child: FittedBox(
                child: Text(day),
              ),
            )
          ],
        );
      },
    );
  }
}
