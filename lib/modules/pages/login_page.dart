import 'package:flutter/material.dart';
import 'package:flymobi/modules/model/errors/erros.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 100,
          left: 40,
          right: 40,
        ),
        color: const Color.fromRGBO(65, 105, 225, 1),
        child: ListView(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('assets/images/flymobi.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                      child: Text(
                        'Bem Vindo, digite abaixo suas credencias para entrar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'RobotoSlab',
                          color: Colors.white,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                if (email == 'flymobi@gmail.com' && password == '123') {
                  Navigator.of(context).pushNamed('/HomePage');
                } else {
                  ErrorExemple('SENHA OU EMAIL INVALIDO!');
                }
              },
              child: const Text(
                'Entrar',
                style: TextStyle(color: Colors.white),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'CADASTRE-SE AGORA',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
