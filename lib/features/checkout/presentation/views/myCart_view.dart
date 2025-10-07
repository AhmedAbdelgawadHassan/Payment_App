import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:payment/core/utils/appStyles.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/widgets/order_info_item.dart';
import 'package:payment/features/checkout/presentation/widgets/total_price_item.dart';

class MycartView extends StatelessWidget {
  const MycartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Center(
          child: SvgPicture.asset('assets/images/icons/arrow.svg', width: 30),
        ),
        title: Text('My Cart', style: Appstyles.style25),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(15),
            Gap(20),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/orderImage.png'),
              ),
            ),
            Gap(40),
            Orderinfoitem(title: 'Order Subtitle', value: '\$42.97'),
            Gap(5),
            Orderinfoitem(title: 'Discount', value: '\$0'),
            Gap(5),
            Orderinfoitem(title: 'Shiping', value: '\$8'),
            Divider(
              color: Colors.grey,
              height: 34,
              indent: 15,
              endIndent: 15,
            ),
            TotalPriceItem(title: 'Total', value: '\$50.97'),
            Gap(20),
            CustomButton(
              onTap: () {},
            )
            ,Gap(30)
           

          ],
        ),
      ),
    );
  }
}
