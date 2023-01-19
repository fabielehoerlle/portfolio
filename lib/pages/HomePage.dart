import 'package:flutter/material.dart';
import 'package:portfolio/widgets/FloresDialog.dart';
import 'package:portfolio/widgets/NubankDialog.dart';
import 'package:portfolio/widgets/ProjectItem.dart';
import 'package:portfolio/widgets/ReceitasDialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
              padding: const EdgeInsets.only(right: 460),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fabi.jpg"),
                  fit: BoxFit.contain,
                  alignment: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: const Content(),
            ),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
          color: Color(0xFF592918),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fabiele Hoerlle",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text("Desenvolvedora Front-End | Dart | Flutter"),
            const SizedBox(height: 20),
            const AboutMe(),
            const Technologies(),
            Text(
              "Projetos",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ProjectItem(
                  image: "assets/nubank.png",
                  title: "Layout da Nubank em Flutter",
                  dialogContent: const NubankDialog(),
                  dialogBackgroundColor: const Color(0xFF9904D9),
                ),
                const SizedBox(width: 10),
                ProjectItem(
                  image: "assets/receitas.png",
                  title: "Receitas Mobile",
                  dialogContent: const ReceitasDialog(),
                  dialogBackgroundColor: const Color(0xFFF2B705),
                ),
                const SizedBox(width: 10),
                ProjectItem(
                  image: "assets/flores.png",
                  title: "Projeto Pessoal Web",
                  dialogContent: const FloresDialog(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Technologies extends StatelessWidget {
  const Technologies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tecnologias",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Image.asset(
              "assets/logo-flutter.png",
              height: 42,
              width: 42,
            ),
            const SizedBox(width: 10),
            Image.asset(
              "assets/logo-dart.png",
              height: 42,
              width: 42,
            ),
            const SizedBox(width: 10),
            Image.asset(
              "assets/logo-github.png",
              height: 55,
              width: 55,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sobre mim",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Text(
          "Eu sou uma desenvolvedora Front-End apaixonada por tecnologia e programação. " +
              "Atualmente, estou me especializando em Flutter e Dart " +
              "com o objetivo de ampliar minhas habilidades e me tornar uma " +
              "desenvolvedora Full-Stack.",
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
