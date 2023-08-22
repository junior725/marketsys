import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/new_notify/newnotify.controller.dart';

class GetText {
  Map<String, String> Items = Map<String, String>.from(({
    'Nubank': 'Você recebeu uma transferência de R\$ 13.000,00 DE ZLIN PAY',
    'C6 Bank': 'com valor R\$34.322,92',
    'Banco Inter': 'Você recebeu um PIX no valor de R\$13.000,00. Acesse o app e confira',
    'Pic pay': 'Você recebeu um pagamento',
    'Iti': 'Você recebeu um pix feito po TECH BRASIL S.A no valor de R\$ 51.456,00 que ja esta na sua conta',
    'Bradesco': 'Você recebeu uma transferência Pix no valor de R\$ 4.356,90 De PAGSMILE LTDA, da instituição BANCO INTER',
    'Skrill': 'Você recebeu uma transferência de R\$ 13.000,00 DE ZLIN PAY7',
    'Next': 'Você recebeu uma transação Pix de R\$100,00',
    'Eduzz': '#Ebook Sedução #466637',
    'Kiwify': 'Sua comissão R\$197,90',
    'Hotmart': 'Sua Comissao: R\$ 49,90',
    'Monetizze': 'Comissao: R\$ 220,41- Fabrica de moedas [Pro]',
    'Shopify': 'totalizando 197,90 de CloudFox',
    'Braip': 'Nova venda no pix! Sua comissão: R\$ 165,30',

  }));
  Map<String, String> Items2 = Map<String, String>.from(({
    'Nubank': 'Transferência recebida',
    'C6 Bank': 'Você recebeu um PIX',
    'Banco Inter': 'Pix recebido',
    'Pic pay': 'Pic Pay',
    'Iti': 'Você recebeu um pix no iti💰',
    'Bradesco': 'Bradesco',
    'Skrill': 'Transferência recebida7',
    'Next': 'Next',
    'Eduzz':'[Venda Confirmada]',
    'Kiwify': 'Venda Aprovada',
    'Hotmart': 'Venda Realizada',
    'Monetizze': 'Parabéns! você acaba de realizar uma venda.',
    'Shopify': 'Mega loja tem um novo pedido de 1 item',
    'Braip':'Nova venda aprovada',
  }));
}

class SelectField extends GetView<NotifyController> {
  const SelectField({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: controller.dropValue,
        builder: (BuildContext context, String value, _){
          return SizedBox(
            width: 500,
            child: DropdownButtonFormField<String>(
              alignment: Alignment.center,
              isExpanded: true,
              hint: const Text('Escolha o banco'),
              value: (value.isEmpty) ? null : value,
              onChanged: (option) {
                controller.dropValue.value = option.toString();
                controller.messageField.text = GetText().Items[option]!;
                controller.titleField.text = GetText().Items2[option]!;
              },
              items: controller.dropOpcoes.map((opcao) => DropdownMenuItem(
                value: opcao,
                child: Text(opcao),
              )).toList(),
            ),
          );
        });
  }
}
