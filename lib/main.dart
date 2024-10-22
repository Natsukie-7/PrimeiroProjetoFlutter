import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count >= 20;

  @override
  Widget build(BuildContext contenxt) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 12, 75),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/sorvete3.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? "lotado" : "Pode entrar",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.indigo
                ) 
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: isEmpty ? Colors.grey : Colors.white,
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)
                    )
                  ),
                  child: Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),
                  ),
                ),
                SizedBox(width: 64,),
                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                    backgroundColor: isFull ? Colors.grey : Colors.white,
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)
                    )
                  ),
                  child: Text(
                    "Entrou",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),
                  ),
                ) 
              ],
            )
          ],
        ),
      ),
    );
  }
}