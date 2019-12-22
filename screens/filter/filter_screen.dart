import 'package:flutter/material.dart';
import 'package:xlo/screens/filter/widgets/section_title.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Filtrar busca'),
      ),
      body: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                const SectionTitle(title: 'Ordernar por'),
                const SectionTitle(title: 'Preço (R\$)'),
                const SectionTitle(title: 'Tipo de anunciante'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
