import random
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
        #self.validar_senha()

        
    
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
        
        self.caracteres = []
        self.caracter_numericos = string.digits#caracteres númericos
        self.caracter_especiais = string.punctuation #'?@!#$%&'#caracteres especiais
        self.caracter_minusculas = string.ascii_lowercase#caracteres minusculos
        self.caracter_maiusculas = string.ascii_uppercase#caracteres maiusculos
        tipos_caracter = [self.caracter_numericos, self.caracter_especiais, self.caracter_minusculas, self.caracter_maiusculas]#lista que junta todos os caracteres
        for i in range(0,len(self.get_lista)):
            if self.get_lista[i]==1:#comparando as opções marcadas no CHECKBUTTON
                self.caracteres.append(tipos_caracter[i])#selecionando as opções marcadas no checkbutton e passando para outra lista
        self.caracteres = ''.join(self.caracteres)#concatena todos os tipos de caracteres selecionados em uma string
        return self.caracteres, self.caracter_numericos, self.caracter_especiais, self.caracter_minusculas, self.caracter_maiusculas #string com todas as opções de caracteres selecionado pelo usuario
        

    def gerar_senha(self):
        self.senha = []
        self.variaveis()
        contador = 0

        if self.get_lista[0]==1:
            keygen = random.choice(self.caracter_numericos)
            self.senha.append(keygen)
            contador+=1
        if self.get_lista[1]==1:
            keygen = random.choice(self.caracter_especiais)
            self.senha.append(keygen)
            contador+=1
        if self.get_lista[2]==1:
            keygen = random.choice(self.caracter_minusculas)
            self.senha.append(keygen)
            contador+=1
        if self.get_lista[3]==1:
            keygen = random.choice(self.caracter_maiusculas)
            self.senha.append(keygen)
            contador+=1
        for i in range(contador,int(self.tamanho)):
            keygen = random.choice(self.caracteres)#keygen recebe os tipos de caracteres que sera escolhido randomicamente
            self.senha.append(keygen)#adiciona um caractere a lista
        random.shuffle(self.senha)
        self.senha = "".join(self.senha)#trasnforma a lista em string, unindo todos os caracteres da senha
        print(self.senha)
        return self.senha
        

class Armazenar_senha:
    
    def salvar_senha(self):
        pass

