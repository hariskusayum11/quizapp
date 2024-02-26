class ComputerQuestion {
  final int id;
  final String text;
  final List<ComputerOption> options;
  bool isLocked;
  ComputerOption? selectedWiidgetOption;
  ComputerOption? correctAnswer;

  ComputerQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  ComputerQuestion copyWith() {
    return ComputerQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              ComputerOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class ComputerOption {
  final String text;
  final bool isCorrect;

  const ComputerOption({
    required this.text,
    required this.isCorrect,
  });
}

final ComputerQuestionsList = [
  ComputerQuestion(
    text:
        "ข้อใดไม่ใช่ขั้นตอนหลักในการทำงานของคอมพิวเตอร์?",
    options: [
      const ComputerOption(text: "ประมวลผล", isCorrect: false),
      const ComputerOption(text: "เก็บข้อมูล", isCorrect: false),
      const ComputerOption(text: "นำข้อมูลเข้า", isCorrect: true),
      const ComputerOption(text: "รับข้อมูล", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const ComputerOption(text: "นำข้อมูลเข้า", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "ข้อใดคือความหมายของ ฮาร์ดแวร์?",
    options: [
      const ComputerOption(text: "ส่วนประกอบของเครื่องคอมพิวเตอร", isCorrect: true),
      const ComputerOption(text: "ขั้นตอนในการปฏิบัติงาน", isCorrect: false),
      const ComputerOption(text: "บุคลากรที่ทำงานกับคอมพิวเตอร์", isCorrect: false),
      const ComputerOption(text: "โปรแกรมที่สั่งให้คอมพิวเตอร์ทำงาน", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const ComputerOption(text: "ส่วนประกอบของเครื่องคอมพิวเตอร", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "หน่วยข้อมูลที่เล็กที่สุดในระบบคอมพิวเตอร์เรียกว่า?",
    options: [
      const ComputerOption(text: "ไบต์", isCorrect: false),
      const ComputerOption(text: "ฟิลด์", isCorrect: false),
      const ComputerOption(text: "บิต", isCorrect: true),
      const ComputerOption(text: "เร็คคอร์ด", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const ComputerOption(text: "บิต", isCorrect: true),
  ),

  ComputerQuestion(
    text:
        "ข้อมูลเมื่อผ่านการประมวลผลแล้ว จะได้อะไร?",
    options: [
      const ComputerOption(text: "Document", isCorrect: false),
      const ComputerOption(text: "Report", isCorrect: false),
      const ComputerOption(text: "Output", isCorrect: false),
      const ComputerOption(text: "Information", isCorrect: true),
    ],
    id: 3,
    correctAnswer: const ComputerOption(text: "Information", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "สัญญาณในคอมพิวเตอร์เป็นสัญญาณชนิดใด?",
    options: [
      const ComputerOption(text: "ดิจิตอล", isCorrect: true),
      const ComputerOption(text: "อนาล็อก", isCorrect: false),
      const ComputerOption(text: "ไฮบริค", isCorrect: false),
      const ComputerOption(text: "ไฟฟ้า", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const ComputerOption(text: "ดิจิตอล", isCorrect: true),
  ),
  // other 4
  ComputerQuestion(
    text:
        "ข้อใดกล่าวถึง Protocol ได้ถูกต้อง?",
    options: [
      const ComputerOption(text: "การสืบค้นข้อมูลบนอินเทอร์เน็ต", isCorrect: false),
      const ComputerOption(text: "การใช้เครื่องคอมพิวเตอร์ที่อยู่ห่างไกล", isCorrect: false),
      const ComputerOption(text: "ภาษาการสื่อสารระหว่างเครื่องคอมพิวเตอร์ในระบบอินเทอร์เน็ต", isCorrect: true),
      const ComputerOption(text: "การบริหารวารสารและข่าวสารบนอินเทอร์เน็ต", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const ComputerOption(text: "ภาษาการสื่อสารระหว่างเครื่องคอมพิวเตอร์ในระบบอินเทอร์เน็ต", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "IP Address คือ?",
    options: [
      const ComputerOption(text: "หมายเลยประจำตัวเครื่องคอมพิวเตอร์ต่างๆ ที่เชื่อมต่ออยู่ในเครือข่าย", isCorrect: true),
      const ComputerOption(text: "โพรโทคอลที่ใช้ในการเชื่อมโยงเครือข่ายอินเทอร์เน็ต", isCorrect: false),
      const ComputerOption(text: "หมายเลขประจำของเครื่องเซิร์ฟเวอร์", isCorrect: false),
      const ComputerOption(text: "ที่อยู่บนอินเทอร์เน็ต", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const ComputerOption(text: "หมายเลยประจำตัวเครื่องคอมพิวเตอร์ต่างๆ ที่เชื่อมต่ออยู่ในเครือข่าย", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "สิ่งใดคือต้นกำเนิดของคอมพิวเตอร์?",
    options: [
      const ComputerOption(text: "เครื่องคิดเลข", isCorrect: false),
      const ComputerOption(text: "ลูกคิด", isCorrect: true),
      const ComputerOption(text: "ก้อนหิน", isCorrect: false),
      const ComputerOption(text: "แผ่นดินเหนียว", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const ComputerOption(text: "ลูกคิด", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "ใครได้รับยกย่องให้เป็นบิดาของคอมพิวเตอร์?",
    options: [
      const ComputerOption(text: "แบลส ปาสคาล", isCorrect: false),
      const ComputerOption(text: "โฮเวิร์ด ไอเคน", isCorrect: false),
      const ComputerOption(text: "ชาร์ล แบบเบจ", isCorrect: true),
      const ComputerOption(text: "เฮอร์แมน ฮอนเลอริท", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const ComputerOption(text: "ชาร์ล แบบเบจ", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "ข้อใด เป็นอุปกรณ์รับข้อมูลเบื้องต้น?",
    options: [
      const ComputerOption(text: "จอภาพ", isCorrect: false),
      const ComputerOption(text: "คีย์บอร์ด", isCorrect: true),
      const ComputerOption(text: "เครื่องพิมพ์", isCorrect: false),
      const ComputerOption(text: "เคส", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const ComputerOption(text: "คีย์บอร์ด", isCorrect: true),
  ),
  ComputerQuestion(
    text:
        "ข้อมูล 8 บิตมีกี่ไบต์?",
    options: [
      const ComputerOption(text: "1 ไบต์", isCorrect: true),
      const ComputerOption(text: "2 ไบต์", isCorrect: false),
      const ComputerOption(text: "3 ไบต์", isCorrect: false),
      const ComputerOption(text: "4 ไบต์", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const ComputerOption(text: "1 ไบต์", isCorrect: true),
  ),
    ComputerQuestion(
    text:
        "ชุดคำสั่งในระบบคอมพิวเตอร์เรียกว่าอะไร?",
    options: [
      const ComputerOption(text: "Computare", isCorrect: false),
      const ComputerOption(text: "Electronic", isCorrect: false),
      const ComputerOption(text: "lnstruction", isCorrect: true),
      const ComputerOption(text: "Program", isCorrect: true),
    ],
    id: 10,
    correctAnswer: const ComputerOption(text: "Program", isCorrect: true),
  ),
];
