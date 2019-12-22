import 'package:flutter/material.dart';
import 'package:xlo/models/filter.dart';
import 'package:xlo/screens/filter/widgets/order_by_field.dart';
import 'package:xlo/screens/filter/widgets/price_range_field.dart';
import 'package:xlo/screens/filter/widgets/section_title.dart';
import 'package:xlo/screens/filter/widgets/vendor_type_field.dart';

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
                OrderByField(
                  initialValue: OrderBy.DATE,
                  onSaved: (v){

                  }
                ),
                const SectionTitle(title: 'Preço (R\$)'),
                PriceRangeField(

                ),
                const SectionTitle(title: 'Tipo de anunciante'),
                VendorTypeField(
                  initialValue: VENDOR_TYPE_PARTICULAR | VENDOR_TYPE_PROFESSIONAL,
                  onSaved: (v){

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
