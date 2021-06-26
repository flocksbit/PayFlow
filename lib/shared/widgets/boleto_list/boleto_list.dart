import 'package:flutter/material.dart';

import '/shared/widgets/boleto_list/boleto_list_controller.dart';
import '/shared/models/boleto_model.dart';
import '/shared/widgets/boleto_tile/boleto_tile.dart';

class BoletoList extends StatefulWidget {
  final BoletoListController controller;
  const BoletoList({Key? key, required this.controller}) : super(key: key);

  @override
  _BoletoListState createState() => _BoletoListState();
}

class _BoletoListState extends State<BoletoList> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BoletoModel>>(
      valueListenable: widget.controller.boletosNotifier,
      builder: (_, boletos, __) => Column(
        children: boletos.map((e) => BoletoTile(data: e)).toList(),
      ),
    );
  }
}
