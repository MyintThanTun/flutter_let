import 'package:flutter/material.dart';
class StateFulWidgetsDemo extends StatefulWidget {
  const StateFulWidgetsDemo({super.key});

  @override
  State<StateFulWidgetsDemo> createState() => _StateFulWidgetsDemoState();
}

class _StateFulWidgetsDemoState extends State<StateFulWidgetsDemo> {
  bool switchVal = false;
  bool checkBoxVal = false;
  double sliderOneVal = 0.5;
  double sliderTwoVal = 60.0;
  String selectedColor = 'red';


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('Switch'),
          trailing: Switch(
            onChanged: (bool newValue){
              setState(() {
                switchVal = newValue;
              });
            },
            value: switchVal,//kaloate open close အလုပ်ကိုလုပ်တာ
          ),
        ),
        const ListTile(
          title: Text(' Disabled Switch'),
          trailing: Switch(
            onChanged: null,
            value: false,
          ),
        ),
        ListTile(
          title: const Text('Check Box'),
          trailing: Checkbox(
            onChanged: (bool? newValue){
              setState(() {
                checkBoxVal = newValue!;
              });
            },
            value: checkBoxVal,
          ),
        ),
        const ListTile(
          title: Text('Disabled Check Box'),
          trailing: Checkbox(
            onChanged: null,
            value: true,
          ),
        ),
         ListTile(
          title: const Text('Slider'),
          subtitle: Slider(
              value: sliderOneVal,
              onChanged: (double newValue){
                setState(() {
                  sliderOneVal = newValue;
                });
              }),

        ),
        ListTile(
          title: const Text('Slider with division & label'),
          subtitle: Slider(
            max: 100.0,
            divisions: 10,//ရွေ လို့ ရတယ့် အပိုင်း သတ်မှတ်တာ ပိုင်း
            label: '${sliderTwoVal.round()}',
            onChanged: (double newValue) => setState(() => sliderTwoVal = newValue),
            value: sliderTwoVal,
          ),
        ),
          ListTile(
          title: const  Text('Radio Button'),
            subtitle: ListView(
              shrinkWrap: true,
              children: ['red','green','blue','yellow'].map((item) {
                return Card(
                  color: selectedColor == item ? Colors.green.withOpacity(0.8) : Colors.yellow,
                  child: ListTile(
                    leading: Radio(
                      mouseCursor: MouseCursor.uncontrolled,
                      groupValue: selectedColor,
                      onChanged: (String? newColor){
                        setState(() {
                          selectedColor = newColor!;
                        });
                      },
                      value: item,
                    ) ,
                    title: Text(item),
                  ),
                );
              }).toList(),
            ),
        )

      ],
    );
  }
}
