import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trilhaapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeDeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
        //style: (GoogleFonts.roboto()),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ações do usuário",
              style: GoogleFonts.acme(fontSize: 30),
            ),
            Text(
              "Foi clicado $quantidadeDeCliques vezes",
              style: GoogleFonts.acme(fontSize: 30),
            ),
            Text(
              "O número gerado foi: $numeroGerado",
              style: GoogleFonts.acme(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            quantidadeDeCliques += 1;
            numeroGerado =
                GeradorNumeroAleatorioService.gerarNumeroAleatorio(10);
          });
        },
      ),
    );
  }
}
