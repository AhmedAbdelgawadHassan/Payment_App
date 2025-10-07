import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/myCart_view.dart';

void main()
{
  runApp(Checkout());
}

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: MycartView(),
    );
  }
}