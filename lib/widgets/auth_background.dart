import 'package:app01/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: Constants.gradient(),
      child: Stack(
        children: const [
          _Headboard(),
        ],
      ),
    );
  }
}

class _Headboard extends StatelessWidget {
  const _Headboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.red,
      height: size.height * 0.4,
    );
  }
}
