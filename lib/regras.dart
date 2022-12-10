import 'package:flutter/material.dart';

String iniciativa =
    "Todos os personagens no combate devem rodar 1D20 + eu modificador de Destreza";
String ca =
    "O valor da sua capacidade de uma criatura(NPC ou Personagem) se defender, para ser acertado por um ataque deve superar na rolagem de ataque o número do seu CA";
String inventario =
    "O inventario é uma representação de todos os itens que seu personagem carrega, podem ser associados a um item físico como uma mochila, que pode ser queimado ou furtado, perdendo os itens junto, mas é opcional";
String experiencia =
    "Experiênica(XP) é a representação da evolução das habilidades dos personagens, pode ser calculada atraves de valores númericos, por exemplo é nescessário 300 de xp para ir do nível 1 para o 2, ou de acordo com regras desenvolvidas pelos jogadores da mesa";
String resistencia =
    "RESISTÊNCIA: \nÉ a capacidade uma criatura de receber metade do dano total de qualquer ataque de um determinado tipo de dano, exemplo: dragões vermelhos tem resistência a dano de fogo";
String vulnerabilidade =
    "VULNERABILIDADE: \nSer vulnerável a algum tipo de dano implica em sofrer o dobro de dano no calculo de ataque, por exemplo uma múmia tem vulnerabilidade a dano de fogo";
String imunidade =
    "IMUNIDADE: \nÉ a habiliade de não ter seus Pontos de Vida reduzidos por algum tipo de dano, exemplo: um Golem de lama é imune ao dano de ácido";
String pv =
    "PONTOS DE VIDA: \nDeterminam a saude de seu personagem e a capacidade de aguentar danos, quando o PV chega a 0, seu personagem fica inconsciente";
String cura =
    "OS Pontos de Vida de uma criatura podem ser restaurados por vários métodos diferentes: A habilidade Second wind da classe Guerreiro, descansando(veja depois \"Descanso Curto\" e \"Descanso Longo\"),magias de cura e poções de cura";
String npc =
    "Do inglês, Non Playble Character ou seja Personagem Não Jogavel, também chamados de Personagens do Mestre, são as criaturas não controladas pelos jogadores";
String pj =
    "Personagem do Jogador, abreviado como PJ, são as criaturas controladas pelo jogador, não pelo DM";

Map<String, Card> regras = {
  "iniciativa": Card(child: Text(iniciativa, textAlign: TextAlign.center)),
  "Classe de Armadura(CA)": Card(child: Text(ca, textAlign: TextAlign.center)),
  "inventario": Card(child: Text(inventario, textAlign: TextAlign.center)),
  "experiencia": Card(child: Text(experiencia, textAlign: TextAlign.center)),
  "resistencia": Card(child: Text(resistencia, textAlign: TextAlign.center)),
  "vulnerabilidade":
      Card(child: Text(vulnerabilidade, textAlign: TextAlign.center)),
  "imunidade": Card(child: Text(imunidade, textAlign: TextAlign.center)),
  "cura": Card(child: Text(cura, textAlign: TextAlign.center)),
  "npc": Card(child: Text(npc, textAlign: TextAlign.center)),
  "pj": Card(child: Text(pj, textAlign: TextAlign.center)),
  "pv": Card(child: Text(pv, textAlign: TextAlign.center))
};
