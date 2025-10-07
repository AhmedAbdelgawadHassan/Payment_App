import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key, this.isActive=false, required this.image, });
  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child:Container(
                width: 100,
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:isActive? Colors.green :Colors.black,width:isActive?2.5:1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(image,height:30,),
              ),
    );
  }
}