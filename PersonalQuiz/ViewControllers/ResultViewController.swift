//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 19.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 1. Избавиться от кнопки возврата назад на экране результатов
    // 2. Передать массив с ответами на экран с результатами
    // 3. Определить наиболее часто встречающийся тип животного
    // 4. Отобразить результаты в соответствии с этим животным
    
    var answers: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    private func getResult() {
        
        var dogCount = 0
        var catCount = 0
        var rabbitCount = 0
        var turtleCount = 0
        var mostAnswers = 0
        
        for answer in answers {
            if answer.animal == .dog {
                dogCount += 1
            } else if answer.animal == .cat {
                catCount += 1
            } else if answer.animal == .rabbit {
                rabbitCount += 1
            } else {
                turtleCount += 1
            }
        }
        
        // короче, я не знаю, как это сделать). посмотрю на разборе 
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
