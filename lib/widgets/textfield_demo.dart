import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  bool hidden = true;

  Widget buildNumberTextField(){
    return const TextField(
      keyboardType: TextInputType.number,
      decoration:InputDecoration(
        labelText: 'Enter your age',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.deepPurple,width: 10)
        )
      )
    );
  }
  Widget buildMultiLineTextField(){
    return const TextField(
      maxLines: 2,//ဘယ်နှစ်ကြောင်းရေးလို့ရလည်း သတ်မှတ်တာ
      decoration: InputDecoration(
        labelText: 'Enter about yourself',
        hintText: 'Type something...',
        border: OutlineInputBorder(//လေးထောင့်ပုံလေးဖြစ်အောင်
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 10)
        ),
      ),
    );
  }

  Widget buildPasswordInputField() {
    return TextField(
        obscureText: hidden,//ရိုက် ထည့်လိုက် ထည့်စာpassword ကို ..... တွေပြတာ
        decoration: InputDecoration(
          labelText: 'Enter password',
          prefixIcon:const Icon(Icons.security),//left icon
          suffixIcon:IconButton(
              onPressed: () => setState(() =>hidden = !hidden),//icon lay နိပ်လိုက်ရင် ပေါ် လာမယ့်ဟာတွေရေးတာ
              icon: Icon(
                hidden ? Icons.visibility : Icons.visibility_off,//true ဖြစ်ရင် မျက်လုံးဖွင့် false ဖြစ်ရင်မျက်လုံးပိတ်
                color: hidden ? Colors.blue: Colors.deepOrange,//color pyoung
              )),//right icon
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))//boder bond lay ko wine wine lay pyit aung loat tr
          )
        )
     );
  }
  Widget buildBorderLessInputField(){
    return const TextField(
      decoration: InputDecoration.collapsed(//collapsed ဆိုတာအောက်က မျဉ်းကြောင်းမထည့်တာကို ပြောတာunderline
        hintText: 'Type something',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const ListTile(title: Text('Number Input Field')),
        buildNumberTextField(),
        const ListTile(title: Text('Multi Line Input Field')),
        buildMultiLineTextField(),
        const ListTile (title: Text('Password input field')),
        buildPasswordInputField(),
        const ListTile(title: Text('Borderless Input Field')),
        buildBorderLessInputField(),

      ],
    );
  }
}
