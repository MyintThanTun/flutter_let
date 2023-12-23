import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
class GradientDemo extends StatelessWidget {
  const GradientDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: const Text('App Bar with gradient colors'),
        centerTitle: true,
        gradient: const LinearGradient(
          colors: [Colors.black,Colors.yellow]
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  colors: [Colors.black,Colors.blueAccent,Colors.yellow],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.2,0.5,0.9]//အမဲ နှစ်ဆယ်ရာခိုင်နှုန်း blue 50 percent ,yellow 90 percent ကြိုက်သလောက် ပေးလို့ရတယ်
              )
            ),
            alignment: Alignment.center,//အလယ်မှာပေါါ အောင်ထားတာ
            child: const Text('Linear Gradient'),
          ),
          const SizedBox(height: 24),
          Container(
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,//circle လို ‌ပေါ်တယ်
              gradient: RadialGradient(
                colors: [Colors.blue,Colors.red,Colors.green],
                radius: 0.5//radius myar ly colour အရောင်မှိန်လေ
              )
            ),
            alignment: Alignment.center,
            child: const Text('Radial Gradient'),
          ),
          const SizedBox(height: 24),
          Container(
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: SweepGradient(//clock ပုံစံလေး
                  colors: [Colors.black,Colors.grey,Colors.indigo],
                stops: [0.1,0.3,0.4]
              )
            ),
            alignment: Alignment.center,
            child: const Text('Sweep Gradient',style: TextStyle(color: Colors.yellow)),
          )
        ],
      ),
    );
  }
}
