import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoecart/cart_provider.dart';
import 'package:shoecart/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Shoecart",
          theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1),
            ),
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                prefixIconColor: Color.fromRGBO(119, 119, 119, 1)),
            textTheme: const TextTheme(
              titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              titleSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            useMaterial3: true,
          ),
          home: const HomePage()),
    );
  }
}
