import 'package:flutter/material.dart';
class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {

  Widget buildInputForm(icon,label,hint,type,{prefix}){//prefix optional ထားထားတဲ့အတွက် ထည့်ထည့်မထည့်ထည့်ရတယ်
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 9),
      child: TextFormField(
        keyboardType: type,
        decoration:  InputDecoration(
          border: const UnderlineInputBorder(),
          filled: true,
          fillColor: Colors.white38,
          icon: Icon(icon),
          labelText: label,
          hintText: hint,
          prefixText: prefix,
          prefixStyle: const TextStyle(color: Colors.black)//95 ko color change tr
        ),
      ),
    );
  }
  Widget buildSignUpButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 1),
      child: SizedBox(
        width: double.infinity,
        height: 20,
        child: ElevatedButton(
            onPressed: (){},
            child: const Text('Sign Up')
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [ //children hata mr ko kyate tae ui twy yae mr
          const SizedBox(height:64),//Icon ကို နေရာခြားတာ
          const Center(
            child: CircleAvatar(//circle avatar ဆိုတာ profile ပုံစံမျိုး pyaw tr
              radius: 64,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.account_circle,
               size: 78,//icon size
                color: Colors.white38,//icon colour
              ),
            ),
          ),
          const SizedBox(height: 24),// Icon nae sign up nae kyar spaceing ခြားတာ
          const Text('Sign up Form',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700
           ),
          ),
          const SizedBox(height: 24),
          buildInputForm(Icons.person,'Name *', 'Type Your Name',TextInputType.text),
          buildInputForm(Icons.mail,'Mail *', 'Type Your Mail',TextInputType.text),
          buildInputForm(Icons.phone,'Phone *', 'How can we reach you',TextInputType.phone,prefix: '+95 9'),
          buildSignUpButton(),
        ],
      ),
    );
  }
}
