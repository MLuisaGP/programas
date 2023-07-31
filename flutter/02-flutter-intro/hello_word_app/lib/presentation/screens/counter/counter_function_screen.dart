import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  //stateless no tiene estado

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: const Text("Counter Functions"),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh_rounded,color: Colors.white,),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
              ),
            ]),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, //centra la columnas en el centro de las pantallas.
              children: [
                Text(
                  '$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100),
                ),
                Text(
                  'Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700),
                )
              ]),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (clickCounter > 0) clickCounter--;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 8,
      backgroundColor: const Color.fromARGB(150, 254, 0, 0),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
