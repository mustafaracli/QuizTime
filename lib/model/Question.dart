class Question {
  final String title;
  final List<Map> answers;

  Question({required this.title, required this.answers});
}

class QuestionData {
  final _data = [
    Question(
        title: 'Aşağıdakilerden hangisi C# daki değer türlerinden biridir ?',
        answers: [
          {
            'answer': 'Double',
          },
          {'answer': 'Hepsi', 'isCorrect': 1},
          {
            'answer': 'Int32',
          },
          {
            'answer': 'Decimal',
          },
        ]),
    Question(
        title: 'İki değeri bir araya getirmek için hangi operatör kullanılır ?',
        answers: [
          {
            'answer': '+',
          },
          {'answer': '*'},
          {
            'answer': '&&',
            'isCorrect': 1,
          },
          {
            'answer': '//',
          },
        ]),
    Question(
        title: 'm++; kod satırının işlevi hangi satırda doğru verilmiştir?',
        answers: [
          {
            'answer': 'm değişkeninin değerini 1 artırır',
            'isCorrect': 1,
          },
          {'answer': 'm değişkeninin değerini 2 artırır'},
          {
            'answer': 'm değişkeninin değerini 1 azaltır',
          },
          {
            'answer': 'Hata oluşur',
          },
        ]),
    Question(title: 'Aşağıdakilerden hangisi döngü komutudur?', answers: [
      {
        'answer': 'switch',
      },
      {'answer': 'do while', 'isCorrect': 1},
      {
        'answer': 'if',
      },
      {
        'answer': 'convert',
      },
    ]),
    Question(
        title:
            'Karşılaştırma işlemlerinde kullanılan “eşit değildir” operatörü aşağıdakilerden hangisidir?',
        answers: [
          {
            'answer': '=',
          },
          {
            'answer': '<>',
          },
          {
            'answer': '= =',
          },
          {'answer': '!=', 'isCorrect': 1},
        ]),
    Question(title: 'c += 5; komut satırının anlamı nedir?', answers: [
      {'answer': 'c değişkenine 5 atar'},
      {
        'answer': 'c değişkenine 10 atar',
      },
      {
        'answer': 'c değişkeninin değerini 5 artırır',
        'isCorrect': 1,
      },
      {
        'answer': 'c değişkeninin değerini 5 azaltır',
      },
    ]),
    Question(
        title:
            'Liste kutusundaki değeri temizlemek için hangi seçenek kullanılır?',
        answers: [
          {
            'answer': 'listBox1.Items.Clear();',
            'isCorrect': 1,
          },
          {
            'answer': 'listBox1.Items.GetEnumerator();',
          },
          {'answer': 'listBox1.Contains();'},
          {
            'answer': 'listBox1.Validated;',
          },
        ]),
    Question(
        title:
            'Aşağıdakilerden hangisi klavyeden giriş yapmak istediğimizde kullandığımız araçtır?',
        answers: [
          {'answer': 'Button'},
          {
            'answer': 'TextBox',
            'isCorrect': 1,
          },
          {
            'answer': 'Label',
          },
          {
            'answer': 'GroupBox',
          },
        ]),
    Question(
        title: 'Formun arka rengini kırmızı yapan kod hangisidir? ',
        answers: [
          {
            'answer': 'this.Color = kırmızı;',
          },
          {
            'answer': 'button2.Text = "Kırmızı";',
          },
          {'answer': 'button2.Visible = true;'},
          {
            'answer': 'this.BackColor = Color.Red;',
            'isCorrect': 1,
          },
        ]),
    Question(
        title:
            'Aşağıdakilerden hangisinde değişken tanımlama kurallarına uyulmayıp yanlış değişken tanımlanmıştır?',
        answers: [
          {
            'answer': 'string Ad1;',
          },
          {'answer': 'float y;'},
          {
            'answer': 'int true;',
            'isCorrect': 1,
          },
          {
            'answer': 'int a;',
          },
        ]),
  ];
  List<Question> get questions => [..._data];
}
