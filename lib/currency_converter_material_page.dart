import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 55, 59),
      body: Center(
        child: Padding(
          //adding padding to the column to make the code look more neater.
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Currency Converter',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  focusColor: Colors.black,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.blueGrey[900],
                  hintText: 'Enter the value in INR here',
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType
                    .number, //so when I will open this applicatino in android emulator when I will click on the text field only number wla kweyboard will appear
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  // debug release profile.......3 different modes in flutter
                  //insted of using style, I can use Elevatedbutton.styleFrom, in this case I will still be able to access all the properties but baar baar '
                  //
                  //
                  //MaterailStatePropertyAll' nahi likhna pdega
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                    // minimumSize:
                    //     MaterialStatePropertyAll(Size(double.infinity, 50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                  ),
                  onPressed: () {
                    if (kDebugMode) {
                      //basically print statement will execute only the code is in debug mode
                      print('button clicked');
                    }
                  },
                  child: const Text(
                    'convert',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
