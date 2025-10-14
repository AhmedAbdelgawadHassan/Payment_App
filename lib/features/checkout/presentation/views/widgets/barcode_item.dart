import 'package:flutter/material.dart';

class BarcodeItem extends StatelessWidget {
  const BarcodeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage('assets/images/barcode.png'), height: 70),
        Container(
          alignment: Alignment.center,
          width: 110,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff33A652))
            ),
          child: Text('PAID',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff33A652)
          ),),
        ),
        
        
      ],
    );
  }
}
