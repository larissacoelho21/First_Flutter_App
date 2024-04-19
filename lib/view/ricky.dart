import 'package:first_flutter_app/view/myPage.dart';
import 'package:first_flutter_app/view/newScreen.dart';
import 'package:flutter/material.dart';

//Tela pode ser reconstruida - tem um setState
class Ricky_Page extends StatefulWidget {
  const Ricky_Page({super.key});

  @override
  State<Ricky_Page> createState() => _Ricky_PageState();
}

class _Ricky_PageState extends State<Ricky_Page> {
  String frase = "Ok"; //criei string
  bool showBlue = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite seu email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: senhaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite sua senha',
            ),
          ),
          ElevatedButton(
              // Within the `FirstRoute` widget
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const myPage()),
                );
              },
              child: Text("New Screen")),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 24, 57, 114),
              child: Text(frase),
            ),
          ),
          if (showBlue)
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 22, 90, 208),
                child: Text(frase),
              ),
            ),
          Text(emailController.text),
          Text(senhaController.text),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(emailController.text);
          print(senhaController.text);

          //esse comando atualiza o estado da tela
          setState(() {
            frase = "Nova Mensagem...";
            showBlue = !showBlue;
          });
        },
        child: Text("Clique"),
      ),
    );
  }
}
