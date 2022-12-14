import 'package:app01/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(right: 35, left: 35),
        decoration: Constants.gradient(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Quieres comer algo especial, quieres sorprender a tu pareja, para lo que quieras... tienes',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'DancingScript'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                'RecetarioApp',
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xfff39060),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffffb56b),
                ),
                width: 150,
                height: 42,
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context,
                        'loggin'); // con este methodo ya no podemos regresar a la pantalla de acces
                  },
                  child: const Text('Entrar',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffFE9100),
                          fontWeight: FontWeight.bold)),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// color: Color(0xffFE9100)
// Color(0xffF7C192)
