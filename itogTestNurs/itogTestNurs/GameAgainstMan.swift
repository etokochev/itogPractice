//
//  GameAgainstMan.swift
//  itogTestNurs
//
//  Created by Erzhan Tokochev on 2/7/23.
//

import Foundation

//Составить игру крестики и нолики используя инструменты ООП. Создать класс Game подписать на протокол Menu c функцией startGame(), endGame(). Создать 2 наследника Игра против человека и Игра против бота. Переопределить startGame в наследниках и задать внутри соответствующую логику. В игре против человека должны создаваться ридлайны для 2 игроков по очереди. В игре против бота, только ридлайны для 1 пользователя, остальное компьютер ставит рандомно.
//Как реализовать логику. Создайте 3 массива и принтуйте постоянно.
//
//[“”, “”, “”]
//[“”, “”, “”]
//[“”, “”, “”]
//
//Доступ к индексам у вас есть. Условные конструкции тоже знаете. Удачи

class GameAgainstMan: Game {
    var krestikiNoliki = [Game]()

    init(firstCell: [String], secondCell: [String], threeCell: [String], krestikiNoliki: [Game] = [Game]()) {
        self.krestikiNoliki = krestikiNoliki
        super.init(firstCell: firstCell, secondCell: secondCell, threeCell: threeCell)
    }

    override func startGame() {
        var round = false
        while(!round){

            print("Кайф! Вы начали игру с Другом!")
            print("Вы начинаете первым! - X")

            print(showInfo())

            print("Выберите столбец 1...3")
            var stolbes = readLine()!
            print("Выберите строку 1...3")
            var stroka = readLine()!

            if stolbes == "1" && stroka == "1"{
                firstCell[0] = "X"
            } else if stolbes == "1" && stroka == "2"{
                firstCell[1] = "X"
            } else if stolbes == "1" && stroka == "3"{
                firstCell[2] = "X"
            } else if stolbes == "2" && stroka == "1"{
                secondCell[0] = "X"
            } else if stolbes == "2" && stroka == "2"{
                secondCell[1] = "X"
            } else if stolbes == "2" && stroka == "3"{
                secondCell[2] = "X"
            } else if stolbes == "3" && stroka == "1"{
                threeCell[0] = "X"
            } else if stolbes == "3" && stroka == "2"{
                threeCell[1] = "X"
            } else if stolbes == "3" && stroka == "3"{
                threeCell[2] = "X"
            } else {
                print("Нет такого столбца или строки!")
            }
            print(showInfo())

            print("Теперь черед второго игрока!")
            print("Вы начинаете! - O")

            print("Выберите столбец 1...3")
            var stolbesSecond = readLine()!
            print("Выберите строку 1...3")
            var strokaSecond = readLine()!

            if stolbesSecond == "1" && strokaSecond == "1"{
                firstCell[0] = "O"
            } else if stolbesSecond == "1" && strokaSecond == "2"{
                firstCell[1] = "O"
            } else if stolbesSecond == "1" && strokaSecond == "3"{
                firstCell[2] = "O"
            } else if stolbesSecond == "2" && strokaSecond == "1"{
                secondCell[0] = "O"
            } else if stolbesSecond == "2" && strokaSecond == "2"{
                secondCell[1] = "O"
            } else if stolbesSecond == "2" && strokaSecond == "3"{
                secondCell[2] = "O"
            } else if stolbesSecond == "3" && strokaSecond == "1"{
                threeCell[0] = "O"
            } else if stolbesSecond == "3" && strokaSecond == "2"{
                threeCell[1] = "O"
            } else if stolbesSecond == "3" && strokaSecond == "3"{
                threeCell[2] = "O"
            } else {
                print("Нет такого столбца или строки!")
            }

            if firstCell[0] == "X" && firstCell[1] == "X" && firstCell[2] == "X" || secondCell[0] == "X" && secondCell[1] == "X" && secondCell[2] == "X" || threeCell[0] == "X" && threeCell[1] == "X" && threeCell[2] == "X" || firstCell[0] == "X" && secondCell[0] == "X" && threeCell[0] == "X" || firstCell[1] == "X" && secondCell[1] == "X" && threeCell[1] == "X" || firstCell[2] == "X" && secondCell[2] == "X" && threeCell[2] == "X" || firstCell[0] == "X" && secondCell[1] == "X" && threeCell[2] == "X" || firstCell[2] == "X" && secondCell[1] == "X" && threeCell[0] == "X"{
                print("Вы выиграли 1 - игрок")
                round = true
                break
            }

            if firstCell[0] == "O" && firstCell[1] == "O" && firstCell[2] == "O" || secondCell[0] == "O" && secondCell[1] == "O" && secondCell[2] == "O" || threeCell[0] == "O" && threeCell[1] == "O" && threeCell[2] == "O" || firstCell[0] == "O" && secondCell[0] == "O" && threeCell[0] == "O" || firstCell[1] == "O" && secondCell[1] == "O" && threeCell[1] == "O" || firstCell[2] == "O" && secondCell[2] == "O" && threeCell[2] == "O" || firstCell[0] == "O" && secondCell[1] == "O" && threeCell[2] == "O" || firstCell[2] == "O" && secondCell[1] == "O" && threeCell[0] == "O"{
                print("Вы выиграли 2 - игрок")
                round = true
                break
            }
        }
        func endGame() {
            print("Игра закончилась!")
        }
        endGame()
    }
}
