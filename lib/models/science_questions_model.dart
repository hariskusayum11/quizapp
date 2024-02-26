class ScienceQuestion {
  final int id;
  final String text;
  final List<ScienceOption> options;
  bool isLocked;
  ScienceOption? selectedWiidgetOption;
  ScienceOption? correctAnswer;

  ScienceQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  ScienceQuestion copyWith() {
    return ScienceQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              ScienceOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class ScienceOption {
  final String text;
  final bool isCorrect;

  const ScienceOption({
    required this.text,
    required this.isCorrect,
  });
}

final ScienceQuestionsList = [
  ScienceQuestion(
    text:
        "กระดูกที่เล็กที่สุดในร่างกายอยู่ที่ไหน?",
    options: [
      const ScienceOption(text: "จมูก", isCorrect: false),
      const ScienceOption(text: "นิ้ว", isCorrect: false),
      const ScienceOption(text: "หู", isCorrect: true),
      const ScienceOption(text: "ปาก", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const ScienceOption(text: "หู", isCorrect: true),
  ),
  ScienceQuestion(
    text:
        "ฉลามมีกระดูกกี่ชิ้นในร่างกาย?",
    options: [
      const ScienceOption(text: "0 ชิ้น", isCorrect: true),
      const ScienceOption(text: "1 ชิ้น", isCorrect: false),
      const ScienceOption(text: "2 ชิ้น", isCorrect: false),
      const ScienceOption(text: "3 ชิ้น", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const ScienceOption(text: "0 ชิ้น", isCorrect: true),
  ),
  ScienceQuestion(
    text:
        "สีอะไรดึงดูดสายตาเป็นอย่างแรก?",
    options: [
      const ScienceOption(text: "สีเหลือง", isCorrect: true),
      const ScienceOption(text: "สีแดง", isCorrect: false),
      const ScienceOption(text: "สีฟ้า", isCorrect: false),
      const ScienceOption(text: "สีดำ", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const ScienceOption(text: "สีเหลือง", isCorrect: true),
  ),

  ScienceQuestion(
    text:
        "กระดูกอะไรในร่างกายมนุษย์ที่ไม่ยึดติดกับกระดูกอื่น?",
    options: [
      const ScienceOption(text: "กระดูกไหปลาร้า", isCorrect: false),
      const ScienceOption(text: "กระดูกซี่โครง", isCorrect: false),
      const ScienceOption(text: "กระดูกทาลัส", isCorrect: false),
      const ScienceOption(text: "กระดูกไฮออยด์", isCorrect: true),
    ],
    id: 3,
    correctAnswer: const ScienceOption(text: "กระดูกไฮออยด์", isCorrect: true),
  ),
  // other 4
  ScienceQuestion(
    text:
        "ถ้าไฟที่มีความร้อนที่สุดจะมีสีอะไร?",
    options: [
      const ScienceOption(text: "สีฟ้า", isCorrect: true),
      const ScienceOption(text: "สีขาว", isCorrect: false),
      const ScienceOption(text: "สีแดง", isCorrect: false),
      const ScienceOption(text: "สีเหลือง", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const ScienceOption(text: "สีฟ้า", isCorrect: true),
  ),
  ScienceQuestion(
    text:
        "เตาไฟแช่แข็ง เป็นฉายาของ ดาวใด?",
    options: [
      const ScienceOption(text: "ดาวศุกร์", isCorrect: false),
      const ScienceOption(text: "ดาวพลูโต", isCorrect: false),
      const ScienceOption(text: "ดาวพุธ", isCorrect: true),
      const ScienceOption(text: "ดาวโลก", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const ScienceOption(text: "ดาวพุธ", isCorrect: true),
  ),

  ScienceQuestion(
    text:
        "องค์ประกอบของน้ำ ประกอบไปด้วยอะไรบ้าง?",
    options: [
      const ScienceOption(text: "คาร์บอน", isCorrect: false),
      const ScienceOption(text: "แมกนีเซียม", isCorrect: false),
      const ScienceOption(text: "ไฮโดรเจน", isCorrect: true),
      const ScienceOption(text: "ไนโตรเจน", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const ScienceOption(text: "setState", isCorrect: true),
  ),
  ScienceQuestion(
    text:
        "เสียง มีคุณสมับติเป็นอะไร?",
    options: [
      const ScienceOption(text: "มวล", isCorrect: false),
      const ScienceOption(text: "คลื่น", isCorrect: true),
      const ScienceOption(text: "ความเค้น", isCorrect: false),
      const ScienceOption(text: "ระยะทาง", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const ScienceOption(text: "setState", isCorrect: true),
  ),

  ScienceQuestion(
    text:
        "แสงเคลื่อนที่แบบใด?",
    options: [
      const ScienceOption(text: "เส้นโค้ง", isCorrect: false),
      const ScienceOption(text: "เส้นหยัก", isCorrect: false),
      const ScienceOption(text: "เส้นตรง", isCorrect: true),
      const ScienceOption(text: "สามเหลี่ยม", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const ScienceOption(text: "เส้นตรง", isCorrect: true),
  ),

  ScienceQuestion(
    text:
        "คลื่นความถี่มีหน่วยเป็นอะไร?",
    options: [
      const ScienceOption(text: "Hz", isCorrect: true),
      const ScienceOption(text: "Sz Sz", isCorrect: false),
      const ScienceOption(text: "Kg", isCorrect: false),
      const ScienceOption(text: "Gz", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const ScienceOption(text: "Hz", isCorrect: true),
  ),

  ScienceQuestion(
    text:
        "ดาวดวงใด ที่มีอุณหภูมิสูงที่สุด?",
    options: [
      const ScienceOption(text: "ดาวศุกร์", isCorrect: true),
      const ScienceOption(text: "ดาวอังคาร", isCorrect: false),
      const ScienceOption(text: "ดาวพฤหัสบดี", isCorrect: false),
      const ScienceOption(text: "ดาวเสาร์", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const ScienceOption(text: "ดาวศุกร์", isCorrect: true),
  ),
  ScienceQuestion(
    text:
        "ดาวที่มีวงแหวนล้อมรอบ?",
    options: [
      const ScienceOption(text: "ดาวศุกร์", isCorrect: false),
      const ScienceOption(text: "ดาวอังคาร", isCorrect: false),
      const ScienceOption(text: "ดาวพุธ", isCorrect: false),
      const ScienceOption(text: "ดาวเสาร์", isCorrect: true),
    ],
    id: 11,
    correctAnswer: const ScienceOption(text: "ดาวเสาร์", isCorrect: true),
  ),
];
