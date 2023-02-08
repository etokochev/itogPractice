import Foundation

//Воин, Колдун, Медик, Защитник
//У каждого по 1000 ХП изначально (у защитника 1500)
//Каждый раунд наносят удар по 200, 300, 0, 100
//Медик лечит один раз в 2 раунда всю команду на 200 ХП кроме себя самого
//Медик наносить удар не может
//Мёртвых игроков лечить нельзя и они не наносят урон

//Босс
//5000 ХП изначально
//Наносит по 200 ХП урона каждому игроку в течение игры пока не умрет
//Игра заканчивается когда умирает БОСС и жив хотябы один игрок, либо когда все игроки мертвы, а босс жив
//В конце выводится print - сколько раундов прошло, сколько урона нанес каждый игрок и кто всё-таки стал победителем

//1 раунд
//Герои атакуют
//(герой) нанес (урон) урона БОССУ. ХП героя - (ХП)
//(герой) нанес (урон) урона БОССУ. ХП героя - (ХП)
//(герой) нанес (урон) урона БОССУ. ХП героя - (ХП)
//Босс Атакует
//ХП героя (героя) - (ХП)
//ХП героя (героя) - (ХП)
//ХП героя (героя) - (ХП)
//ХП героя (героя) - (ХП)

//Игроки победили, БОСС мертв
//9 раундов прошло
//Если ХП - 0 (т.е герой умер - делаете принт (Герой) мертв)
//ХП героя (героя) - (ХП)
//ХП героя (героя) - (ХП)
//ХП героя (героя) - (ХП)
//ХП героя (героя) - (ХП)


let players: [String] = ["Воин", "Колдун", "Медик", "Защитник"]
var boss: String = "Босс"
var hpBoss: Int = 5000
var hpPlayers: [Int] = [1000, 1000, 1000, 1500]
var attack: [Int] = [200, 300, 100]
var helpForPlayers: Int = 200

var uronWarrior: Int = 0
var uronWizard: Int = 0
var helpMedic: Int = 0
var uronDefender: Int = 0
var uronBoss: Int = 0
var roundsCount: Int = 0

var end = false

while(!end){
    func rounds(){
        print("Напоминание, персонаж 'Медик' не может ранить")
        print("Напоминание, персонаж 'Медик' может лечить игроков каждые 2 раунда, не меньше,не больше")
        print("Герои атакуют!")
        if hpPlayers[0] > 0{
            print("\(players[0]) нанес \(attack[0]) урона БОССУ. ХП героя - \(hpPlayers[0])")
            uronWarrior += attack[0]
            hpBoss -= attack[0]
        }
        if hpPlayers[1] > 0{
            print("\(players[1]) нанес \(attack[1]) урона БОССУ. ХП героя - \(hpPlayers[1])")
            uronWizard += attack[1]
            hpBoss -= attack[1]
        }
        if hpPlayers[3] > 0{
            print("\(players[3]) нанес \(attack[2]) урона БОССУ. ХП героя - \(hpPlayers[3])")
            uronDefender += attack[2]
            hpBoss -= attack[2]
        }

        print("ХП Босса - \(hpBoss)")
        print("Босс атакует!")
        for i in 0...3 {
            if(hpPlayers[i] > 0){
                hpPlayers[i] -= attack[0]
            }
            if(hpPlayers[3] < 0){
                hpPlayers[3] = 0
            }
            uronBoss = uronBoss + attack[0]
        }

        print("\(boss) нанес \(attack[0]) урона каждому герою. ХП героев - \(hpPlayers[0...3])")
        print("ХП \(hpBoss) - Босса")

        if roundsCount % 2 == 0{
            if hpPlayers[2] > 0{
                print("Медик лечит игроков")
                hpPlayers[0] = hpPlayers[0] + 200
                hpPlayers[1] = hpPlayers[1] + 200
                hpPlayers[3] = hpPlayers[3] + 200
                if (hpPlayers[0] <= 0){
                    print("Герой уже мертв, вы не можете его вылечить!")
                }
                if (hpPlayers[1] <= 0){
                    print("Герой уже мертв, вы не можете его вылечить!")
                }
                if (hpPlayers[2] <= 0){
                    print("Герой уже мертв, вы не можете его вылечить!")
                }
                if (hpPlayers[3] <= 0){
                    print("Герой уже мертв, вы не можете его вылечить!")
                }
            }
            helpMedic += 1
                    }

        print(hpPlayers)

            if (hpPlayers[0] <= 0){
                print("\(players[0]) - мертв")
                hpPlayers[0] = 0
            }
            if (hpPlayers[1] <= 0){
                print("\(players[1]) - мертв")
                hpPlayers[1] = 0
            }
            if (hpPlayers[2] <= 0){
                print("\(players[2]) - мертв")
                hpPlayers[2] = 0
            }
            if (hpPlayers[3] <= 0){
                print("\(players[3]) - мертв")
                hpPlayers[3] = 0
            }
            if (hpBoss <= 0){
                print("\(boss) - мертв, Герои победили!")
                hpBoss = 0
                
            }
            if (hpPlayers[3] <= 0){
                print("\(players) - персонажы мертвы, Босс победил")
            }
        

        print("Желаете ли вы начать следующий раунд или закончить игру?) yes or no")
        let inputRepliesForGame: String = readLine()!
        if (inputRepliesForGame == "no"){
            end = true
        }
        if (inputRepliesForGame == "yes"){
            roundsCount += 1
        }
    }
    rounds()
}

print("\(roundsCount) - раундов прошло")
print("Герой \(players[0]) нанес \(uronWarrior) урона за всю игру")
print("Герой \(players[1]) нанес \(uronWizard) урона за всю игру")
print("Герой \(players[2]) вылечил всю команду \(helpMedic) раз за всю игру")
print("Герой \(players[3]) нанес \(uronDefender) урона за всю игру")
print("\(boss) нанес \(uronBoss) урона за всю игру")



