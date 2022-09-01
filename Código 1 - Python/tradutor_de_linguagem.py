palavra = input("Digite uma palavra: ")

posicao = len(palavra)-2


def verificavogal(valida):
    if (valida.lower() == 'a' or valida.lower() == 'e' or valida.lower() == 'i' or valida.lower() == 'o' or valida.lower() == 'u'):
        return True
    else:
        return False


while (verificavogal(palavra[posicao:posicao+1])):
    posicao = posicao - 1

nova_palavra = palavra[0:posicao+1]+"en"
radical = palavra[0:posicao+1]

print("nova palavra", nova_palavra)

print(radical)

sufixo = palavra[posicao+1:]
print(sufixo)

vocabulario = [ "o","ei","ai","os","es","ais","a","e","i","om","em","aem","ons","est","aist","am","im","aim"]

if sufixo in vocabulario:
    if sufixo == "o":
        print(palavra+" - verb "+radical+"en, present tense, 1st person")
    elif sufixo == "os":
        print(palavra+" - verb "+radical+"en, present tense, 2nd person")
    elif sufixo == "a":
        print(palavra+" - verb "+radical+"en, present tense, 3rd person")
    elif sufixo == "om":
        print(palavra+" - verb "+radical+"en, present tense, 4th person")
    elif sufixo == "ons":
        print(palavra+" - verb "+radical+"en, present tense, 5th person")
    elif sufixo == "am":
        print(palavra+" - verb "+radical+"en, present tense, 6th person")
    elif sufixo == "ei":
        print(palavra+" - verb "+radical+"en, past tense, 1st person")
    elif sufixo == "es":
        print(palavra+" - verb "+radical+"en, past tense, 2nd person")
    elif sufixo == "e":
        print(palavra+" - verb "+radical+"en, past tense, 3rd person")
    elif sufixo == "em":
        print(palavra+" - verb "+radical+"en, past tense, 4th person")
    elif sufixo == "est":
        print(palavra+" - verb "+radical+"en, past tense, 5th person")
    elif sufixo == "im":
        print(palavra+" - verb "+radical+"en, past tense, 6th person")
    elif sufixo == "ai":
        print(palavra+" - verb "+radical+"en, future tense, 1st person")
    elif sufixo == "ais":
        print(palavra+" - verb "+radical+"en, future tense, 2nd person")
    elif sufixo == "i":
        print(palavra+" - verb "+radical+"en, future tense, 3rd person")
    elif sufixo == "aem":
        print(palavra+" - verb "+radical+"en, future tense, 4th person")
    elif sufixo == "aist":
        print(palavra+" - verb "+radical+"en, future tense, 5th person")
    elif sufixo == "aim":
        print(palavra+" - verb "+radical+"en, future tense, 6th person")


else:
    print(radical+sufixo+" - not a verb case")


