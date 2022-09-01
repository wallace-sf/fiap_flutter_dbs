import 'package:flutter/material.dart';

class AddPerson extends StatelessWidget {
  AddPerson({Key? key}) : super(key: key);

  final Text title = const Text("Nova linguagem");
  final EdgeInsets padding = const EdgeInsets.all(16);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: title),
        body: Padding(
            padding: padding,
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Nome da pessoa",
                        labelText: "Nome da pessoa",
                      ),
                      controller: _firstNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Preencha o nome da pessoa";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Sobrenome da pessoa",
                        labelText: "Sobrenome da pessoa",
                      ),
                      controller: _lastNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Preencha o sobrenome da pessoa";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Endereço da pessoa",
                        labelText: "Endereço da pessoa",
                      ),
                      controller: _addressController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Preencha o endereço da pessoa";
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        child: const Text("Adicionar"),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Navigator.pop(context, language);
                          }
                        },
                      ),
                    ),
                  ],
                ))));
  }
}
