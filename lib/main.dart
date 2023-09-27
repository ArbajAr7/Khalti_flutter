import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'khalti_payment_page.dart';

void main() =>runApp(const KhaltiPaymentApp());

class KhaltiPaymentApp extends StatelessWidget {
  const KhaltiPaymentApp({ Key? key }) : super(key:key);

  @override
  Widget build(BuildContext) {
    return KhaltiScope(
        publicKey: "live_public_key_9a7b46b287184b6b8bbbabee29c24dfd",
        builder: (context, navigatorkey) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorkey,
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ne', 'NP'),
            ],
            localizationsDelegates: const [
              KhaltiLocalizations.delegate
            ],
            theme: ThemeData(
              primaryColor: const Color(0xFF56328c),
              appBarTheme: const AppBarTheme(
                color: Color(0xFF56328c),
              ),
            ),
            title: 'Khalti Payment',
            home: KhaltiPaymentPage(),
          );
        }
    );
  }
}

