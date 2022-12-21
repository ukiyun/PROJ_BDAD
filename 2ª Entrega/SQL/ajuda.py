# i want to get a random number between 13 and 22
# and then print it

import random

print(random.randint(13, 22))

idbenfica = 1
benfica1 = 1
benfica2 = 12

idsporting = 2
sporting1 = 13
sporting2 = 22

idbarcelos = 3
barcelos1 = 23
barcelos2 = 32

idporto = 4
porto1 = 33
porto2 = 43

idtomar = 5
tomar1 = 44
tomar2 = 52

idfamalicense = 6
famalicense1 = 53
famalicense2 = 63

idjuventude =  7
juventude1 = 64
juventude2 = 73

idbraga = 8
braga1 = 74
braga2 = 83

idriba = 9
riba1 = 84
riba2 = 93

idoliveirense = 10
oliveirense1 = 94
oliveirense2 = 104

idvalongo = 11
valongo1 = 105
valongo2 = 116

idpacos = 12
pacos1 = 117
pacos2 = 126

idparede = 13
parede1 = 127
parede2 = 138

idmurches = 14
murches1 = 139
murches2 = 150

idJogo = 63
golo = 432

for x in range(2):
    print(f"INSERT INTO Golo (idGolo, minuto, idJogador, idJogo, idEquipa)  VALUES ({golo}, {random.randint(1, 50)}, {random.randint(barcelos1, barcelos2)}, {idJogo}, {idbarcelos});")
    golo += 1

for x in range(0):
    print(f"INSERT INTO Golo (idGolo, minuto, idJogador, idJogo, idEquipa)  VALUES ({golo}, {random.randint(1, 50)}, {random.randint(benfica1, benfica2)}, {idJogo}, {idbenfica});")
    golo += 1

