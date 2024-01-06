import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feliz Cumpleaños Papá',
      home: BirthdayScreen(),
    );
  }
}

class BirthdayScreen extends StatefulWidget {
  @override
  _BirthdayScreenState createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feliz Cumpleaños Papá')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildAnimatedTitle(),
            buildAnimatedImage('https://scontent.floh1-1.fna.fbcdn.net/v/t1.18169-9/12642594_10207630928984691_7585502155143687239_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=dd63ad&_nc_eui2=AeF1w1F7DYi2XL8njBwkGnOFJB6YOkpW9zEkHpg6Slb3MW-vYUI8jeBl6byYOaScXxoYfci5k5NO-ZDjRySmE14W&_nc_ohc=XXWy7rBM_9MAX8SIGHw&_nc_ht=scontent.floh1-1.fna&oh=00_AfDhQnBGGjQhkrkBng9POTtyFonid161JY-lVKgqgJJ0CQ&oe=65BFA167'),
            buildAnimatedImage('https://scontent.floh1-1.fna.fbcdn.net/v/t1.18169-9/10399911_1184176837989_6835998_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=b9145c&_nc_eui2=AeF6COMVKMJqv7a397gf-CQ9DUbFGXXzUUANRsUZdfNRQEW5rw8MVMPat2EmAuNu3Joeg_8Y4vUDLBcUJfGX2IFX&_nc_ohc=q03v4wznVPkAX9-kVg3&_nc_ht=scontent.floh1-1.fna&oh=00_AfBg5sKqTPYWwQI-dvwydXysTTuCKRmbuq--jD--qaFNQw&oe=65BFAD7C'),
            buildAnimatedImage('https://scontent.floh1-1.fna.fbcdn.net/v/t1.18169-9/183468_1766770002454_7434586_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=4dc865&_nc_eui2=AeExrvsFVpssyFmet7wDdz08N323LYXteHo3fbcthe14emjjF7sLTrkkMUcD773VRXl11ZJwC3xvKwRdkcB5s8XP&_nc_ohc=zR5A5DGyZ0kAX_Rj0T7&_nc_ht=scontent.floh1-1.fna&oh=00_AfAZYWr5eVfqsIGQ1nIOCzHWJu_gn6SBx9wk8JhRv7Eibg&oe=65BFBEE7'),
            buildAnimatedImage('https://scontent.floh1-1.fna.fbcdn.net/v/t1.18169-9/188781_1799767587373_7709890_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=b9145c&_nc_eui2=AeHz_zIWKj_tPYT39JydizAEyzr60LFISZHLOvrQsUhJkb1QKo_I4-rCsT5p-BHgndB-lAqrDSlxCiZXKGNIfKJa&_nc_ohc=oZw55HB7cEIAX-X2DRa&_nc_ht=scontent.floh1-1.fna&oh=00_AfBPT3SVOeTxWldAUnlFOaDZjurPJJ50CWYB9MwGEHUAcA&oe=65BFA33B'),
          ],            // Agregar las otras imágenes aquí...
        ),
      ),
    );
  }

  Widget buildAnimatedTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ScaleTransition(
        scale: Tween(begin: 0.8, end: 1.2).animate(CurvedAnimation(
          parent: _controller,
          curve: Curves.elasticInOut,
        )),
        child: const Text(
          '¡Feliz Cumpleaños Papi!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget buildAnimatedImage(String imageUrl) {
    return ScaleTransition(
      scale: Tween(begin: 0.8, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(imageUrl),
      ),
    );
  }
}
