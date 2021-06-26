import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

import '/shared/models/boleto_model.dart';
import '/shared/widgets/boleto_list/boleto_list_controller.dart';
import '/shared/widgets/boleto_list/boleto_list.dart';
import '/shared/widgets/boleto_info/boleto_info.dart';
import '/shared/themes/app_colors.dart';
import '/shared/themes/app_text_styles.dart';

class MeuBoletosPage extends StatefulWidget {
  const MeuBoletosPage({Key? key}) : super(key: key);

  @override
  _MeuBoletosPageState createState() => _MeuBoletosPageState();
}

class _MeuBoletosPageState extends State<MeuBoletosPage> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 40,
                width: double.maxFinite,
                color: AppColors.primary,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ValueListenableBuilder<List<BoletoModel>>(
                  valueListenable: controller.boletosNotifier,
                  builder: (_, boletos, __) => AnimatedCard(
                      direction: AnimatedCardDirection.top,
                      child: BoletoInfo(size: boletos.length)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  'Meus Boletos',
                  style: TextStyles.titleBoldHeading,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BoletoList(
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
