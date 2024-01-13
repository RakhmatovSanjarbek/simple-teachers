class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

// Question 1
  list.add(Question(
      "I ____ my best friend since kindergarten.",
      [
        Answer("know", true),
        Answer("knows", false),
        Answer("known", false)
      ]
  ));

// Question 2
  list.add(Question(
      "She ____ to the store before the party.",
      [
        Answer("go", false),
        Answer("goes", true),
        Answer("going", false)
      ]
  ));

// Question 3
  list.add(Question(
      "The concert ____ at 8:00 PM.",
      [
        Answer("start", false),
        Answer("starts", true),
        Answer("starting", false)
      ]
  ));

// Question 4
  list.add(Question(
      "We ____ dinner when the phone rang.",
      [
        Answer("eat", false),
        Answer("eating", false),
        Answer("were eating", true)
      ]
  ));

// Question 5
  list.add(Question(
      "They ____ to the beach every summer.",
      [
        Answer("go", true),
        Answer("goes", false),
        Answer("going", false)
      ]
  ));

// Question 6
  list.add(Question(
      "My sister ____ a book right now.",
      [
        Answer("reads", false),
        Answer("is reading", true),
        Answer("read", false)
      ]
  ));

// Question 7
  list.add(Question(
      "He ____ playing the guitar for five years.",
      [
        Answer("play", false),
        Answer("plays", false),
        Answer("has been playing", true)
      ]
  ));

// Question 8
  list.add(Question(
      "I ____ to Paris last summer.",
      [
        Answer("go", false),
        Answer("went", true),
        Answer("going", false)
      ]
  ));

// Question 9
  list.add(Question(
      "She ____ a new language at the language school.",
      [
        Answer("learn", false),
        Answer("learns", false),
        Answer("is learning", true)
      ]
  ));

// Question 10
  list.add(Question(
      "The train ____ at 9:00 AM every day.",
      [
        Answer("leave", false),
        Answer("leaves", true),
        Answer("leaving", false)
      ]
  ));

// Question 11

  list.add(Question(
      "My parents ____ their anniversary next week.",
      [
        Answer("celebrate", true),
        Answer("celebrates", false),
        Answer("celebrating", false)
      ]
  ));

// Question 12
  list.add(Question(
      "We ____ a great time at the party last night.",
      [
        Answer("have", false),
        Answer("had", true),
        Answer("having", false)
      ]
  ));

// Question 13
  list.add(Question(
      "He ____ the newspaper every morning.",
      [
        Answer("reads", true),
        Answer("read", false),
        Answer("reading", false)
      ]
  ));

// Question 14
  list.add(Question(
      "I ____ my keys. Can you help me find them?",
      [
        Answer("lose", false),
        Answer("lost", true),
        Answer("losing", false)
      ]
  ));

// Question 15
  list.add(Question(
      "She ____ her homework before going to the party.",
      [
        Answer("finishes", false),
        Answer("finished", true),
        Answer("finishing", false)
      ]
  ));

// Question 16
  list.add(Question(
      "My sister ____ her phone in the car yesterday.",
      [
        Answer("leave", false),
        Answer("left", true),
        Answer("leaving", false)
      ]
  ));

// Question 17
  list.add(Question(
      "We ____ a great movie last night.",
      [
        Answer("watch", false),
        Answer("watching", false),
        Answer("watched", true)
      ]
  ));

// Question 18
  list.add(Question(
      "He ____ to the gym every Monday.",
      [
        Answer("go", false),
        Answer("goes", true),
        Answer("going", false)
      ]
  ));

// Question 19
  list.add(Question(
      "I ____ my umbrella at home this morning.",
      [
        Answer("forget", false),
        Answer("forgets", false),
        Answer("forgot", true)
      ]
  ));

// Question 20
  list.add(Question(
      "The children ____ in the park when it started raining.",
      [
        Answer("play", false),
        Answer("playing", false),
        Answer("were playing", true)
      ]
  ));

// Question 21
  list.add(Question(
      "She ____ a book every week.",
      [
        Answer("read", false),
        Answer("reads", true),
        Answer("reading", false)
      ]
  ));

// Question 22
  list.add(Question(
      "The cat ____ on the roof right now.",
      [
        Answer("sits", false),
        Answer("is sitting", true),
        Answer("sat", false)
      ]
  ));

// Question 23
  list.add(Question(
      "We ____ dinner at that restaurant before.",
      [
        Answer("not have", false),
        Answer("haven't", true),
        Answer("didn't have", false)
      ]
  ));

// Question 24
  list.add(Question(
      "They ____ a new house next year.",
      [
        Answer("will buy", true),
        Answer("buying", false),
        Answer("buys", false)
      ]
  ));

// Question 25
  list.add(Question(
      "He ____ his sister at the airport yesterday.",
      [
        Answer("meets", false),
        Answer("met", true),
        Answer("meeting", false)
      ]
  ));


  return list;
}