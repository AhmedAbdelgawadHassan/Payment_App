import 'package:flutter/material.dart';
import 'package:payment/core/utils/appStyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.title});
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
                alignment: Alignment.center,
                width: 350,
                height: 65,
                decoration: BoxDecoration(
                  color: Color(0xff33A652),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Text(title,style:Appstyles.style22,),
              ),
    );
  }
}