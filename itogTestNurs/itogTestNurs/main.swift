//
//  main.swift
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

var gameAgainstMan = GameAgainstMan(firstCell: ["", "", ""], secondCell: ["", "", ""], threeCell: ["", "", ""])
gameAgainstMan.startGame()

var versusBot = VersusBot(firstCell: ["", "", ""], secondCell: ["", "", ""], threeCell: ["", "", ""])
versusBot.startGame()


