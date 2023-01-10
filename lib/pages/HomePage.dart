import 'package:flutter/material.dart';
import 'package:portfolio/widgets/ProjectItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Row(
          children: [
            const Content(),
            Container(
              width: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fabi.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
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
                  image: "assets/nubank.jpg",
                  title: "Layout da Nubank em Flutter",
                ),
                const SizedBox(width: 10),
                ProjectItem(
                    image: "assets/flores.png", title: "Projeto Pessoal Web"),
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
