import 'package:flutter/material.dart';

class CurrecncyConverterMaterialApp extends StatefulWidget {
  const CurrecncyConverterMaterialApp({super.key});

  @override
  State<CurrecncyConverterMaterialApp> createState() =>
      _CurrencyConverterMaterialApp();
}

class _CurrencyConverterMaterialApp
    extends State<CurrecncyConverterMaterialApp> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Currency Coverter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Please enter amount in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (double.parse(textEditingController.text) * 81);
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize:
                      WidgetStatePropertyAll(Size(double.infinity, 50)),
                  shape: WidgetStatePropertyAll(
                    BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                ),
                child: const Text('Click Me'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
