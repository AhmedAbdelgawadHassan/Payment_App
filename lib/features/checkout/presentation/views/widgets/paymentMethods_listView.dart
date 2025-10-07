// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentmethodsListview extends StatefulWidget {
   const PaymentmethodsListview({super.key});

  @override
  State<PaymentmethodsListview> createState() => _PaymentmethodsListviewState();
}

class _PaymentmethodsListviewState extends State<PaymentmethodsListview> {
  List<String> methodsItem=const[
'assets/images/paypal.svg',
'assets/images/card.svg',
];
int? selectedIndex;   // Vairable to select the items

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
                    shrinkWrap: true,
                     itemCount: methodsItem.length,
                     scrollDirection: Axis.horizontal,
                    itemBuilder:  (context, index) {
                     return  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                       child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex=index;
                            });
                          },
                       
                         child: PaymentMethodItem(
                           image: methodsItem[index],
                         isActive:selectedIndex==index?true:false
                         ),
                       ),
                     );
                    },),
    );
  }
}