import '../models/receita.dart';

/// Dados fixos das receitas, separados por categoria.

const List<Receita> receitasDoces = [
  Receita(
    id: 'd1',
    titulo: 'Brigadeiro',
    emoji: '🍫',
    tempo: '20 min',
    rendimento: '25 unidades',
    descricao:
        'O doce mais querido das festas brasileiras: macio, chocolatudo e coberto de granulado.',
    ingredientes: [
      '1 lata de leite condensado (395 g)',
      '2 colheres (sopa) de chocolate em pó',
      '1 colher (sopa) de manteiga',
      'Chocolate granulado para enrolar',
    ],
    modoPreparo: [
      'Em uma panela, junte o leite condensado, o chocolate em pó e a manteiga.',
      'Cozinhe em fogo baixo, mexendo sem parar, até a massa desgrudar do fundo da panela (cerca de 10 minutos).',
      'Transfira para um prato untado e deixe esfriar.',
      'Com as mãos untadas, faça bolinhas e passe no granulado.',
    ],
  ),
  Receita(
    id: 'd2',
    titulo: 'Pudim de Leite',
    emoji: '🍮',
    tempo: '1h30',
    rendimento: '10 porções',
    descricao:
        'Pudim cremoso, sem furinhos, com calda de caramelo dourada.',
    ingredientes: [
      '1 lata de leite condensado',
      '2 medidas (da lata) de leite',
      '3 ovos',
      '1 xícara (chá) de açúcar para a calda',
    ],
    modoPreparo: [
      'Derreta o açúcar em uma forma de pudim até formar um caramelo e espalhe pelas laterais.',
      'Bata no liquidificador o leite condensado, o leite e os ovos por 3 minutos.',
      'Despeje a mistura na forma caramelizada e cubra com papel-alumínio.',
      'Asse em banho-maria a 180 °C por cerca de 1 hora.',
      'Deixe esfriar, leve à geladeira por 4 horas e desenforme.',
    ],
  ),
  Receita(
    id: 'd3',
    titulo: 'Bolo de Cenoura',
    emoji: '🥕',
    tempo: '50 min',
    rendimento: '12 fatias',
    descricao:
        'Bolo fofinho de cenoura com cobertura de chocolate, perfeito para o café da tarde.',
    ingredientes: [
      '3 cenouras médias picadas',
      '3 ovos',
      '1/2 xícara (chá) de óleo',
      '2 xícaras (chá) de açúcar',
      '2 xícaras (chá) de farinha de trigo',
      '1 colher (sopa) de fermento em pó',
      'Cobertura: 1 xícara de açúcar, 3 colheres de chocolate em pó, 1 colher de manteiga e 5 colheres de leite',
    ],
    modoPreparo: [
      'Bata no liquidificador as cenouras, os ovos e o óleo.',
      'Em uma tigela, misture o creme batido com o açúcar e a farinha.',
      'Acrescente o fermento e mexa delicadamente.',
      'Asse em forma untada a 180 °C por cerca de 40 minutos.',
      'Ferva os ingredientes da cobertura por 2 minutos e espalhe sobre o bolo ainda quente.',
    ],
  ),
];

const List<Receita> receitasSalgadas = [
  Receita(
    id: 's1',
    titulo: 'Pão de Queijo',
    emoji: '🧀',
    tempo: '45 min',
    rendimento: '30 unidades',
    descricao:
        'Clássico mineiro: casquinha crocante por fora e macio por dentro.',
    ingredientes: [
      '500 g de polvilho azedo',
      '1 xícara (chá) de leite',
      '1/2 xícara (chá) de óleo',
      '2 ovos',
      '200 g de queijo meia cura ralado',
      '1 colher (chá) de sal',
    ],
    modoPreparo: [
      'Ferva o leite, o óleo e o sal e escalde o polvilho, mexendo bem.',
      'Deixe a massa amornar e acrescente os ovos um a um.',
      'Adicione o queijo e sove até a massa ficar homogênea.',
      'Faça bolinhas e disponha em assadeira untada.',
      'Asse a 200 °C por cerca de 25 minutos, até dourar.',
    ],
  ),
  Receita(
    id: 's2',
    titulo: 'Galinhada',
    emoji: '🍗',
    tempo: '1h',
    rendimento: '6 porções',
    descricao:
        'Arroz com frango, açafrão e pequi — um prato típico e marcante do Centro-Oeste.',
    ingredientes: [
      '1 kg de frango em pedaços',
      '2 xícaras (chá) de arroz',
      '1 cebola picada',
      '3 dentes de alho amassados',
      '1 colher (chá) de açafrão-da-terra',
      'Pequi a gosto (opcional)',
      'Cheiro-verde, sal e pimenta a gosto',
    ],
    modoPreparo: [
      'Tempere o frango com sal, alho e pimenta.',
      'Doure o frango em uma panela grande com um fio de óleo.',
      'Junte a cebola, o açafrão e o pequi e refogue.',
      'Acrescente o arroz, refogue por 2 minutos e cubra com água quente.',
      'Cozinhe em fogo baixo até o arroz secar e finalize com cheiro-verde.',
    ],
  ),
  Receita(
    id: 's3',
    titulo: 'Coxinha',
    emoji: '🥟',
    tempo: '1h30',
    rendimento: '40 unidades',
    descricao:
        'Salgado de festa com massa macia e recheio cremoso de frango.',
    ingredientes: [
      '500 g de peito de frango cozido e desfiado',
      '2 xícaras (chá) do caldo do cozimento',
      '2 xícaras (chá) de farinha de trigo',
      '1 colher (sopa) de manteiga',
      '1 cebola picada',
      'Farinha de rosca e ovo para empanar',
      'Óleo para fritar',
    ],
    modoPreparo: [
      'Refogue o frango desfiado com a cebola e tempere a gosto.',
      'Ferva o caldo com a manteiga, adicione a farinha de uma vez e mexa até soltar da panela.',
      'Sove a massa ainda morna até ficar lisa.',
      'Abra porções de massa, recheie e modele as coxinhas.',
      'Passe no ovo e na farinha de rosca e frite em óleo quente até dourar.',
    ],
  ),
];

const List<Receita> receitasBebidas = [
  Receita(
    id: 'b1',
    titulo: 'Suco de Maracujá',
    emoji: '🥤',
    tempo: '10 min',
    rendimento: '1 litro',
    descricao:
        'Suco refrescante e levemente calmante, ideal para dias quentes.',
    ingredientes: [
      'Polpa de 2 maracujás',
      '1 litro de água gelada',
      'Açúcar ou adoçante a gosto',
      'Gelo a gosto',
    ],
    modoPreparo: [
      'Bata a polpa com a água no liquidificador por poucos segundos (pulsar).',
      'Coe para retirar as sementes.',
      'Adoce a gosto e sirva com gelo.',
    ],
  ),
  Receita(
    id: 'b2',
    titulo: 'Chocolate Quente',
    emoji: '☕',
    tempo: '15 min',
    rendimento: '2 xícaras',
    descricao:
        'Bebida cremosa e encorpada para as noites mais frias.',
    ingredientes: [
      '500 ml de leite',
      '3 colheres (sopa) de chocolate em pó',
      '2 colheres (sopa) de açúcar',
      '1 colher (sopa) de amido de milho',
      'Canela em pó a gosto',
    ],
    modoPreparo: [
      'Dissolva o amido de milho em um pouco de leite frio.',
      'Em uma panela, misture o restante do leite, o chocolate e o açúcar.',
      'Junte o amido dissolvido e cozinhe em fogo baixo, mexendo, até engrossar.',
      'Sirva quente e polvilhe canela.',
    ],
  ),
  Receita(
    id: 'b3',
    titulo: 'Limonada Suíça',
    emoji: '🍋',
    tempo: '10 min',
    rendimento: '1 litro',
    descricao:
        'Limonada cremosa batida com casca e leite condensado.',
    ingredientes: [
      '4 limões-taiti',
      '1 litro de água gelada',
      '4 colheres (sopa) de leite condensado',
      'Açúcar e gelo a gosto',
    ],
    modoPreparo: [
      'Lave bem os limões e corte cada um em 4 partes, retirando o miolo branco.',
      'Bata com a água por poucos segundos para não amargar.',
      'Coe, volte ao liquidificador com o leite condensado e o açúcar e bata rapidamente.',
      'Sirva imediatamente com gelo.',
    ],
  ),
];
