import 'package:flutter/material.dart';
import 'package:flutter_injection_getit/names_repository.dart';
import 'package:get_it/get_it.dart';
import 'names_widget.dart';

class NamesPage extends StatelessWidget {

  NamesPage({ Key? key }) : super(key: key);

  final names = GetIt.I.get<NamesRepository>(instanceName: "names");
  final fisrtName = GetIt.I.get<NamesRepository>(instanceName: "fisrtName");
  final middleName = GetIt.I.get<NamesRepository>(instanceName: "middleName");
  final lastName = GetIt.I.get<NamesRepository>(instanceName: "lastName");

   @override
   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Exmplo de injeção de dependência'), centerTitle: true),
        body: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Reposiroty 1 - Nome Completo", style: TextStyle(fontWeight: FontWeight.bold)),
              NamesWidget(names: names.fetch()),

              const Text("Reposiroty 2 - Primeiro nome", style: TextStyle(fontWeight: FontWeight.bold)),
              NamesWidget(names: fisrtName.fetch()),

              const Text("Reposiroty 3 - Nome do meio", style: TextStyle(fontWeight: FontWeight.bold)),
              NamesWidget(names: middleName.fetch()),

              const Text("Reposiroty 4 - Sobrenome", style: TextStyle(fontWeight: FontWeight.bold)),
              NamesWidget(names: lastName.fetch()),
            ],
          ),
        ),
    );
  }
}