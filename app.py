import random
#import re
import string
from tkinter import IntVar
from tkinter.constants import NUMERIC
from tkinter import *
from tkinter import ttk


class Gerador_de_senhas:
    
    def variaveis(self):
        self.servico = self.entry_servico.get()
        self.login = self.entry_login.get()
        self.tamanho = self.entry_tamanho.get()
        
            
    def show(self):#por enquanto está mostrando o que está recebendo os checkbuttons
        self.get_checkbuttons()
        self.compara_checkbuttons()
        self.gerar_senha()
        self.get = Label(self.frame, text = ('Senha:',self.senha), bg = '#820AD1', font = ('Arial',15, 'bold'), foreground = '#222222')
        self.get.place(relx = 0, rely = 0.65, relheight= 0.2, relwidth= 1)
        
    
    def get_checkbuttons(self):#Adiciona o valor 1 na lista para cada opção marcada no CHECKBUTTON e retorna a lista
        #VARIAVEIS USADAS NOS CHECKBUTTONS {self.numeros, self.especiais, self.minusculos, self.maiusculos}
        #self.numeros.get() captura o que for digitado pelo usuário
        self.get_lista = []
        if(self.numeros.get() == 1):
            self.get_lista.append(1)
        else:
            self.get_lista.append(0)
        if(self.especiais.get() == 1):
            self.get_lista.append(1)
        else:
            self.get_lista.append(0)
        if(self.minusculos.get() == 1):
            self.get_lista.append(1)
        else:
            self.get_lista.append(0)
        if(self.maiusculos.get() == 1):
            self.get_lista.append(1)
        else:
            self.get_lista.append(0)
        return self.get_lista
        
    
    def compara_checkbuttons(self):#compara as opções CHECKBUTTON com os tipos de caracteres e retorna uma nova lista apenas com os caracteres selecionados
        self.get_checkbuttons()
        self.caracteres = []
        caracter_numericos = string.digits
        caracter_especiais = string.punctuation
        caracter_minusculas = string.ascii_lowercase
        caracter_maiusculas = string.ascii_uppercase
        tipos_caracter = [caracter_numericos, caracter_especiais, caracter_minusculas, caracter_maiusculas]

        for i in range(0,len(self.get_lista)):
            if self.get_lista[i]==1:
                self.caracteres.append(tipos_caracter[i])
        self.caracteres = ''.join(self.caracteres)#concatena todos os tipos de caracteres selecionados em uma string
        return self.caracteres
        

    def gerar_senha(self):
        self.senha = []
        self.variaveis()
        for i in range(int(self.tamanho)):
            keygen = random.choice(self.caracteres)#keygen recebe os tipos de caracteres que sera escolhido randomicamente
            self.senha.append(keygen)#adiciona um caractere a lista
        self.senha = "".join(self.senha)#trasnforma a lista em string, unindo todos os caracteres da senha
        print(self.senha)
        return self.senha


class Armazenar_senha:
    
    def salvar_senha(self):
        pass

#a = Gerador_de_senhas()
#a.compara_checkbuttons()
"""
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

"""
