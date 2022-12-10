class Personagem {
  late int _id;
  late String _nome;
  late String _classe;
  late int _nivel;
  late List<String> _inventario;
  // late serve para impedir que os atributos sejam null antes de serem settados

  // construtor parametrizado
  Personagem(this._id, this._nome, this._classe, this._nivel, this._inventario);

  // outros construtores precisam de um nome diferente
  // dart não permite overload de construtor
  Personagem.fromMap(Map<String, dynamic> map) {
    // construtor atraves de Map
    _id = map["id"];
    _nome = map["nome"];
    _classe = map["classe"];
    _nivel = map["nivel"];
    _inventario = map["inventario"];
  }

  //getters e setters
  int get id {
    return _id;
  }

  set id(int novoId) {
    // ids são positivos e únicos
    _id = novoId;
  }

  String get nome {
    return _nome;
  }

  set nome(String novoNome) {
    // nomes devem ser compostos apenas por letras, sem números ou outros caracteres como @ e #
    // separados por whitespace inves de underscore para facilitar a leitura pelo underscore.
    _nome = novoNome;
  }

  String get classe {
    return _classe;
  }

  set classe(String novaClasse) {
    // Posteriormente sera criada uma lista de classes
    // se o input do usuario não estiver na lista , deve retornar erro
    _classe = novaClasse;
  }

  int get nivel {
    return _nivel;
  }

  set nivel(int novoNivel) {
    // maior valor possivel: 20, menor valor: 1
    _nivel = novoNivel;
  }

  String get inventario {
    return _inventario.toString();
  }

  void adicionarITemInventario(String noItem) {
    // elementos do inventario podem ter números mas eles devem indicar bônus ou quantidade
    // ex: 2x capacete de couro, espada longa +1. 15x flechas élficas +2
    _inventario.add(noItem);
  }

  String removerItemInventario(String itemRemover) {
    String texto = "$itemRemover não estava no seu inventário";
    if (_inventario.remove(itemRemover)) {
      texto = "$itemRemover foi removido do inventário";
    }
    return texto;
  }

  @override
  String toString() {
    final String texto = "$nome\n$classe lvl.$nivel\nInventário: $inventario";
    return texto;
  }

  // List<Map<String, dynamic>> get personagens => _personagens;

  // set personagens(List<Map<String, dynamic>> personagens) {
  //   _personagens = personagens;
  // }
}

List<Map<String, dynamic>> personagens = [
  {
    "id": 1,
    "nome": "Nome: Eric",
    "classe": "Guerreiro",
    "nivel": 5,
    "inventario": ["Escudo", "Chainmail", "Espada Longa"]
  },
  {
    "id": 2,
    "nome": "Nome: Sheila",
    "classe": "Ladino",
    "nivel": 4,
    "inventario": ["Espada Curta", "Capuz de Invisibilidade"]
  },
  {
    "id": 3,
    "nome": "Nome: Presto",
    "classe": "Mago",
    "nivel": 3,
    "inventario": [
      "Cajado de Aprendiz",
      "Livro de Magias nv1",
      "Roupas de Mago Aprendiz"
    ]
  },
  {
    "id": 4,
    "nome": "Nome: Hank",
    "classe": "Ranger",
    "nivel": 6,
    "inventario": ["Arco Longo", "Botas Élficas", "2x Machadinha"]
  }
];
