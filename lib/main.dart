import 'package:auth_page/utils/global_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ThemeApp());
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: const ThemeScreen(),
    );
  }
}


class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: Color(0xFFeceff1), width: 2));

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
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 70,),
                const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dart-logo.png')),),
                const SizedBox(height: 20,),
                Text('Введите логин в виде 10 цифр номера телефона',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 20,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Телефон',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),),
                const SizedBox(height: 20,),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Пароль',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),),
                const SizedBox(height: 68,),
                SizedBox(width: 154, height: 42,
                    child: ElevatedButton(onPressed: () {},
                        child: const Text('Войти'),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                        ),
                    ),
                ),
                const SizedBox(height: 32,),
                InkWell(child: Text('Регистрация',
                  style: Theme.of(context).textTheme.headline6),
                  onTap: null,),
                const SizedBox(height: 20,),
                InkWell(child: Text('Забыли пароль?',
                    style: Theme.of(context).textTheme.headline6),
                  onTap: null,)
              ],),
            ),
          )
      ),
    );
  }
}
