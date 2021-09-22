import random
import re


caracter = [
    'a','A','b','B','c','C','d','D','e','E','f','F',
    'g','G','h','H','i','I','j','J','l','L','m','M','n','N','o','O','p','P','q','Q','r','R',
    's','S','t','T','u','U','v','V','x','X','y','Y','w','W','z','Z','ç','Ç','1','2','3','4',
    '5','6','7','8','9','0','!','@','#','$','%','&','*',',','.','?','/','=','+','-','_'
    ]
caracter_lower = ['a','b','c','d','e','f','g','h','i','j','l','m','n','o','p','q','r','s','t','u','v','x','z','y','w','ç']
caracter_special = ['!','@','#','$','%','&','*',',','.','?','/','=','+','-','_']
number = ['1','2','3','4','5','6','7','8','9','0']


total_caracter = int(input('Quantos caracteres sua senha deve ter? '))
#number_caracter = int(input('Quantos desses caracteres devem ser "números"?' ))
#special_caracter = int(input('Quantos desses caracteres devem ser "caracter especial"?' ))
#if number_caracter > total_caracter:
    #print('ERRO, a quantidade de números é maior que a quantidade de caracteres da senha')
#if caracter_special > (total_caracter - number_caracter):
    #print('ERRO, a quantidade de caracteres especiais é maior que a quantidade de caracteres permitida')


senha = []
for i in range(total_caracter):# - number_caracter - special_caracter
    keygen = random.choice(caracter)
    senha.append(keygen)
print(senha)
#senha = list(senha)
random.shuffle(senha)
senha = str(senha).strip('[]').replace("'",'').replace(',','').replace(' ','')
print(type(senha))
print(senha)










