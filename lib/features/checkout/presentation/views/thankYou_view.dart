import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/Check_Mark_Container.dart';
import 'package:payment/features/checkout/presentation/views/widgets/thankYouCard.dart';

class ThankyouView extends StatelessWidget {
  const ThankyouView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 75,
            bottom: 20,
            left: 20,
            right: 20,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Thankyoucard(),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.55,
                left: -20,
                child: drawCircle(40, Colors.white),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.55,
                right: -20,
                child: drawCircle(40, Colors.white),
              ),
              Positioned(
                top: -40,
                left: 0,
                right: 0,
                child: CheckMarkContainer()
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.55+20,  // to make it in middle of circles
                left: 35,
                right: 35,
                child: DottedLine(   // use Dotted Line Package to can draw dotted line
                  dashLength: 6,
                  dashGapLength: 5,
                  lineThickness: 2,
                  dashColor: Colors.grey.shade500,
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}

Container drawCircle(double raduis, Color color) // Method Draws a Circle
{
  return Container(
    width: raduis,
    height: raduis,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}
