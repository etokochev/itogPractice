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
        print("Введите ник первого игрока")
        let inputFirstUser = readLine()!
        print("Ваш ник - \(inputFirstUser)")
        
        print("Введите ник второго игрока")
        let inputSecondUser = readLine()!
        print("Ваш ник - \(inputSecondUser)")

        while(!round){
            print("Кайф! Вы начали игру с Другом!")
            print("Вы начинаете \(inputFirstUser)! - X")
            showInfo()
            
            print("Выберите столбец 1...3")
            let stolbes = readLine()!
            print("Выберите строку 1...3")
            let stroka = readLine()!
            
            if stolbes == "1" && stroka == "1"{
                if firstCell[0] != "O" || firstCell[0] != "X"{
                    firstCell[0] = "X"
                }
            } else if stolbes == "1" && stroka == "2"{
                if firstCell[1] != "O" || firstCell[1] != "X"{
                    firstCell[1] = "X"
                }
            } else if stolbes == "1" && stroka == "3"{
                if firstCell[2] != "O" || firstCell[2] != "X"{
                    firstCell[2] = "X"
                }
            } else if stolbes == "2" && stroka == "1"{
                if secondCell[0] != "O" || secondCell[0] != "X"{
                    secondCell[0] = "X"
                }
            } else if stolbes == "2" && stroka == "2"{
                if secondCell[1] != "O" || secondCell[1] != "X"{
                    secondCell[1] = "X"
                }
            } else if stolbes == "2" && stroka == "3"{
                if secondCell[2] != "O" || secondCell[2] != "X"{
                    secondCell[2] = "X"
                }
            } else if stolbes == "3" && stroka == "1"{
                if threeCell[0] != "O" || threeCell[0] != "X"{
                    threeCell[0] = "X"
                }
            } else if stolbes == "3" && stroka == "2"{
                if threeCell[1] != "O" || threeCell[1] != "X"{
                    threeCell[1] = "X"
                }
            } else if stolbes == "3" && stroka == "3"{
                if threeCell[2] != "O" || threeCell[2] != "X"{
                    threeCell[2] = "X"
                }
            } else {
                print("Нет такого столбца или строки!")
            }
            if firstCell[0] == "X" && firstCell[1] == "X" && firstCell[2] == "X" ||
                secondCell[0] == "X" && secondCell[1] == "X" && secondCell[2] == "X" ||
                threeCell[0] == "X" && threeCell[1] == "X" && threeCell[2] == "X" ||
                firstCell[0] == "X" && secondCell[0] == "X" && threeCell[0] == "X" ||
                firstCell[1] == "X" && secondCell[1] == "X" && threeCell[1] == "X" ||
                firstCell[2] == "X" && secondCell[2] == "X" && threeCell[2] == "X" ||
                firstCell[0] == "X" && secondCell[1] == "X" && threeCell[2] == "X" ||
                firstCell[2] == "X" && secondCell[1] == "X" && threeCell[0] == "X"{
                print("Вы выиграли! \(inputFirstUser)")
                round = true
                break
            }
            showInfo()
            
            print("Теперь черед второго игрока!")
            print("Вы начинаете \(inputSecondUser)! - O")
            
            print("Выберите столбец 1...3")
            let stolbesSecond = readLine()!
            print("Выберите строку 1...3")
            let strokaSecond = readLine()!
            
            if stolbesSecond == "1" && strokaSecond == "1"{
                if firstCell[0] != "X" || firstCell[0] != "O"{
                    firstCell[0] = "O"
                }
            } else if stolbesSecond == "1" && strokaSecond == "2"{
                if firstCell[1] != "X" || firstCell[1] != "O"{
                    firstCell[1] = "O"
                }
            } else if stolbesSecond == "1" && strokaSecond == "3"{
                if firstCell[2] != "X" || firstCell[2] != "O"{
                    firstCell[2] = "O"
                }
            } else if stolbesSecond == "2" && strokaSecond == "1"{
                if secondCell[0] != "X" || secondCell[0] != "O"{
                    secondCell[0] = "O"
                }
            } else if stolbesSecond == "2" && strokaSecond == "2"{
                if secondCell[1] != "X" || secondCell[1] != "O"{
                    secondCell[1] = "O"
                }
            } else if stolbesSecond == "2" && strokaSecond == "3"{
                if secondCell[2] != "X" || secondCell[2] != "O"{
                    secondCell[2] = "O"
                }
            } else if stolbesSecond == "3" && strokaSecond == "1"{
                if threeCell[0] != "X" || threeCell[0] != "O"{
                    threeCell[0] = "O"
                }
            } else if stolbesSecond == "3" && strokaSecond == "2"{
                if threeCell[1] != "X" || threeCell[1] != "O"{
                    threeCell[1] = "O"
                }
            } else if stolbesSecond == "3" && strokaSecond == "3"{
                if threeCell[2] != "X" || threeCell[2] != "O"{
                    threeCell[2] = "O"
                } else {
                    print("Нет такого столбца или строки!")
                }
                if firstCell[0] == "O" && firstCell[1] == "O" && firstCell[2] == "O" || secondCell[0] == "O" && secondCell[1] == "O" && secondCell[2] == "O" || threeCell[0] == "O" && threeCell[1] == "O" && threeCell[2] == "O" || firstCell[0] == "O" && secondCell[0] == "O" && threeCell[0] == "O" || firstCell[1] == "O" && secondCell[1] == "O" && threeCell[1] == "O" || firstCell[2] == "O" && secondCell[2] == "O" && threeCell[2] == "O" || firstCell[0] == "O" && secondCell[1] == "O" && threeCell[2] == "O" || firstCell[2] == "O" && secondCell[1] == "O" && threeCell[0] == "O"{
                    print("Вы выиграли! \(inputSecondUser)")
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
}
