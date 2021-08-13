import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "O sangue de uma lesma é verde.", a: "Verdadeiro"),
        Question(q: "Aproximadamente um quarto dos ossos humanos estão no pé.", a: "Verdadeiro"),
        Question(q: "O tenista Novak Djokovic tem a nacionaldade russa.", a: "Falso"),
        Question(q: "A área de superfície total de dois pulmões humanos é de aproximadamente 70 metros quadrados.", a: "Verdadeiro"),
        Question(q: "Em West Virginia, EUA, se você acidentalmente atropelar um animal com seu carro, pode levá-lo para casa para comer.", a: "Verdadeiro"),
        Question(q: "Em Londres, Reino Unido, se por acaso você morrer na Câmara do Parlamento, você tem direito técnico a um funeral de estado, porque o prédio é considerado um lugar sagrado demais.", a: "Falso"),
        Question(q: "Sidney é a capital da Austrália.", a: "Falso"),
        Question(q: "Equador faz fronteira com o Brasil.", a: "Falso"),
        Question(q: "É ilegal urinar no oceano de portugalI.", a: "Verdadeiro"),
        Question(q: "Você pode conduzir uma vaca escada abaixo, mas não escada acima.", a: "Falso"),
        Question(q: "A Indonésia é o maior arquipelago do mundo.", a: "Verdadeiro"),
        Question(q: "O Google foi originalmente chamado de 'Backrub'.", a: "Verdadeiro"),
        Question(q: "Madagascar fica localizado no oceano atlântico.", a: "Falso"),
        Question(q: "O nome de solteira da mãe de Buzz Aldrin era 'Lua'.", a: "Verdadeiro"),
        Question(q: "O som mais alto produzido por qualquer animal é de 188 decibéis. Esse animal é o elefante africano.", a: "Falso"),
        Question(q: "Nenhum pedaço de papel quadrado seco pode ser dobrado ao meio mais de 7 vezes.", a: "Falso"),
        Question(q: "O chocolate afeta o coração e o sistema nervoso de um cão; alguns gramas são suficientes para matar um cachorro pequeno.", a: "Verdadeiro"),
        Question(q: "Uma pessoa tem aproximadamente entre 4 a 6 litros de sangue.", a: "Verdadeiro"),
        Question(q: "O chuveiro elétrico foi inventado nos Estados Unidos", a: "Falso"),
        Question(q: "O Vaticano é o menor país do mundo.", a: "Verdadeiro"),
        Question(q: "O fogo foi descoberto no período paleolítico.", a: "Verdadeiro"),
        Question(q: "A girafa é o maior animal terrestre do mundo.", a: "Falso"),
        Question(q: "O sangue tipo AB+ é considerado o doador universal.", a: "Falso"),
        Question(q: "Los Angeles é a cidade mais populosa da américa do norte.", a: "Falso"),
        Question(q: "O castor é considerado o animal símbolo do Canadá.", a: "Verdadeiro"),
        Question(q: "Swift é uma linguagem de programação da Apple.", a: "Verdadeiro")
    ]
    
    var questionNumber = 0
    var scorePoint = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            scorePoint += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return scorePoint
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            scorePoint = 0
        }
    }
}
