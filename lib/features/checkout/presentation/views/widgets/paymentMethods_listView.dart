// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentmethodsListview extends StatelessWidget {
   PaymentmethodsListview({super.key});
  List<String> methodsItem=const[
'assets/images/paypal.svg',
'assets/images/card.svg'
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
                    shrinkWrap: true,
                     itemCount: methodsItem.length,
                     scrollDirection: Axis.horizontal,
                    itemBuilder:  (context, index) {
                     return Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: PaymentMethodItem(image: methodsItem[index]));
                    },),
    );
  }
}