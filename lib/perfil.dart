import 'package:flutter/material.dart';

import 'constants.dart';
import 'infra.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return DsiScaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: Constants.paddingMedium,
        child: Column(
          children: [
            Constants.spaceMediumHeight,
            CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.person,
                size: 90,
              ),
            ),
            Constants.spaceLargeHeight,
            TextFormField(
                decoration: const InputDecoration(labelText: 'Nome Completo')),
            Constants.spaceMediumHeight,
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Número de Telefone'),
              keyboardType: TextInputType.phone,
            ),
            Constants.spaceMediumHeight,
            TextFormField(
              decoration: const InputDecoration(labelText: 'CPF'),
              keyboardType: TextInputType.number,
            ),
            Constants.spaceMediumHeight,
            TextFormField(
              decoration: const InputDecoration(labelText: 'CEP'),
              keyboardType: TextInputType.number,
            ),
            Constants.spaceMediumHeight,
            TextFormField(
              decoration: const InputDecoration(labelText: 'Logradouro'),
              keyboardType: TextInputType.streetAddress,
            ),
            Constants.spaceMediumHeight,
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      leading: Icon(Icons.menu),
      title: Text('Perfil'),
      actions: <Widget>[
        Icon(Icons.more_vert),
      ],
    );
  }
}
