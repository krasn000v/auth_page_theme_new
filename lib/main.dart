import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: Color(0xFFeceff1), width: 2));
    const linkTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xFFeceff1),
    );

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bulb.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 70,),
                const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dart-logo.png')),),
                SizedBox(height: 20,),
                Text('Введите логин в виде 10 цифр номера телефона',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),
                ),
                SizedBox(height: 20,),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Телефон',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Пароль',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),),
                SizedBox(height: 68,),
                SizedBox(width: 154, height: 42,
                    child: ElevatedButton(onPressed: () {},
                        child: Text('Войти'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                        ),
                    ),
                ),
                SizedBox(height: 32,),
                const InkWell(child: Text('Регистрация',
                  style: linkTextStyle),
                  onTap: null,),
                SizedBox(height: 20,),
                const InkWell(child: Text('Забыли пароль?',
                    style: linkTextStyle),
                  onTap: null,)
              ],),
            ),
          )
      ),
    );
  }
}
