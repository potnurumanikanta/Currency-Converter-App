import 'package:flutter/material.dart';
//1. Create a variable that stores the converted currency value
//2. Create a function that multiples the values given bye the textfield with 81 or present ratio
//3. To store the value in the variable that we created
//4. Display the variable

class CurrencyCoverterMainPage extends StatefulWidget {
  const CurrencyCoverterMainPage({super.key});

  @override
  State<CurrencyCoverterMainPage> createState() =>
      _CurrencyConverterMainPageState();
}

class _CurrencyConverterMainPageState extends State<CurrencyCoverterMainPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 83.17;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromRGBO(64, 49, 73, 1),
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(15),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 224, 196, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 105, 142, 1),
        title: const Text(
          "Currency Converter App",
          style: TextStyle(
            color: Color.fromRGBO(248, 241, 241, 1),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 1, 1),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromRGBO(40, 49, 73, 1),
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(40, 49, 73, 1),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: const Color.fromRGBO(40, 49, 73, 1),
                  filled: true,
                  fillColor: const Color.fromRGBO(219, 237, 243, 1),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(25, 69, 107, 1),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
