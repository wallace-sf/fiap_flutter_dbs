import 'package:fiap_flutter_dbs/sqlite/models/person.dart';
import 'package:fiap_flutter_dbs/sqlite/add.dart';
import 'package:flutter/material.dart';

class ListSQLiteWidget extends StatelessWidget {
  ListSQLiteWidget({Key? key}) : super(key: key);

  final title = const Text("SQLite - Lista Pessoas");
  final List<Person> persons = [
    Person(
        firstName: "Rafael", lastName: "Thomazelli", address: "Fiap Paulista"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AddPerson();
                }));
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ListView(children: buildListItems()),
    );
  }

  List<Widget> buildListItems() {
    return persons
        .map((person) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                leading: Text(person.id != null ? person.id.toString() : "-1"),
                title: Text(person.firstName),
                subtitle: Text(person.lastName),
              ),
            )))
        .toList();
  }
}
