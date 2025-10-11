// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:payment/core/utils/appStyles.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/views/widgets/paymentMethods_listView.dart';

class PaymentDetailsView extends StatelessWidget {
   PaymentDetailsView({super.key});
    GlobalKey<FormState> formKey = GlobalKey();



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
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(child: PaymentmethodsListview()),
            ),
            SliverToBoxAdapter(child: Gap(20),),
            SliverToBoxAdapter(
              child: CustomCreditCard(formKey: formKey,),
            ),
            SliverFillRemaining(child: Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20,left: 60,right: 60),
                child: CustomButton(
                  onTap: (){
                    if(formKey.currentState!.validate())
                    {
                      formKey.currentState!.save();
                    }
                    
                  },
                   title: 'Pay',
                   ),
              )),)
          ],
        )
        
      ),
    );
  }
}
