// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:payment/core/utils/appStyles.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/views/widgets/paymentMethods_listView.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Center(
              child: SvgPicture.asset('assets/images/icons/arrow.svg', width: 30),
            ),
          ),
          title: Text('Payment Details', style: Appstyles.style25),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                children: [
                  Gap(10),
                  PaymentmethodsListview(),
                  Gap(30),
                  CustomCreditCard()
                
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}
