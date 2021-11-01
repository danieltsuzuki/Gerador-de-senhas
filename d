[33mcommit 15a10e1bb70eb8d423d2c117ced52ee3113793a0[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/maaster[m[33m)[m
Author: Daniel Tsuzuki <massao.tsuzuki@gmail.com>
Date:   Tue Sep 28 09:42:01 2021 -0300

    commit desenvolvimento em andament

[1mdiff --git a/app.py b/app.py[m
[1mindex 61c1dc1..e3688b8 100644[m
[1m--- a/app.py[m
[1m+++ b/app.py[m
[36m@@ -49,17 +49,17 @@[m [mclass Gerador_de_senhas:[m
     def compara_checkbuttons(self):#compara as opções CHECKBUTTON com os tipos de caracteres e retorna uma nova lista apenas com os caracteres selecionados[m
         self.get_checkbuttons()[m
         self.caracteres = [][m
[31m-        caracter_numericos = string.digits[m
[31m-        caracter_especiais = string.punctuation[m
[31m-        caracter_minusculas = string.ascii_lowercase[m
[31m-        caracter_maiusculas = string.ascii_uppercase[m
[31m-        tipos_caracter = [caracter_numericos, caracter_especiais, caracter_minusculas, caracter_maiusculas][m
[32m+[m[32m        caracter_numericos = string.digits#caracteres númericos[m
[32m+[m[32m        caracter_especiais = string.punctuation#caracteres especiais[m
[32m+[m[32m        caracter_minusculas = string.ascii_lowercase#caracteres minusculos[m
[32m+[m[32m        caracter_maiusculas = string.ascii_uppercase#caracteres maiusculos[m
[32m+[m[32m        tipos_caracter = [caracter_numericos, caracter_especiais, caracter_minusculas, caracter_maiusculas]#lista que junta todos os caracteres[m
 [m
         for i in range(0,len(self.get_lista)):[m
[31m-            if self.get_lista[i]==1:[m
[31m-                self.caracteres.append(tipos_caracter[i])[m
[32m+[m[32m            if self.get_lista[i]==1:#comparando as opções marcadas no CHECKBUTTON[m
[32m+[m[32m                self.caracteres.append(tipos_caracter[i])#selecionando as opções marcadas no checkbutton e passando para outra lista[m
         self.caracteres = ''.join(self.caracteres)#concatena todos os tipos de caracteres selecionados em uma string[m
[31m-        return self.caracteres[m
[32m+[m[32m        return self.caracteres#string com todas as opções de caracteres selecionado pelo usuario[m
         [m
 [m
     def gerar_senha(self):[m

[33mcommit acb8f2b2421258459d933523e92f87bf126373f7[m
Author: Daniel Tsuzuki <massao.tsuzuki@gmail.com>
Date:   Tue Sep 28 09:33:25 2021 -0300

    commit inicial

[1mdiff --git a/app.py b/app.py[m
[1mindex 7551783..61c1dc1 100644[m
[1m--- a/app.py[m
[1m+++ b/app.py[m
[36m@@ -1,7 +1,86 @@[m
 import random[m
[31m-import re[m
[31m-[m
[31m-[m
[32m+[m[32m#import re[m
[32m+[m[32mimport string[m
[32m+[m[32mfrom tkinter import IntVar[m
[32m+[m[32mfrom tkinter.constants import NUMERIC[m
[32m+[m[32mfrom tkinter import *[m
[32m+[m[32mfrom tkinter import ttk[m
[32m+[m
[32m+[m
[32m+[m[32mclass Gerador_de_senhas:[m
[32m+[m[41m    [m
[32m+[m[32m    def variaveis(self):[m
[32m+[m[32m        self.servico = self.entry_servico.get()[m
[32m+[m[32m        self.login = self.entry_login.get()[m
[32m+[m[32m        self.tamanho = self.entry_tamanho.get()[m
[32m+[m[41m        [m
[32m+[m[41m            [m
[32m+[m[32m    def show(self):#por enquanto está mostrando o que está recebendo os checkbuttons[m
[32m+[m[32m        self.get_checkbuttons()[m
[32m+[m[32m        self.compara_checkbuttons()[m
[32m+[m[32m        self.gerar_senha()[m
[32m+[m[32m        self.get = Label(self.frame, text = ('Senha:',self.senha), bg = '#820AD1', font = ('Arial',15, 'bold'), foreground = '#222222')[m
[32m+[m[32m        self.get.place(relx = 0, rely = 0.65, relheight= 0.2, relwidth= 1)[m
[32m+[m[41m        [m
[32m+[m[41m    [m
[32m+[m[32m    def get_checkbuttons(self):#Adiciona o valor 1 na lista para cada opção marcada no CHECKBUTTON e retorna a lista[m
[32m+[m[32m        #VARIAVEIS USADAS NOS CHECKBUTTONS {self.numeros, self.especiais, self.minusculos, self.maiusculos}[m
[32m+[m[32m        #self.numeros.get() captura o que for digitado pelo usuário[m
[32m+[m[32m        self.get_lista = [][m
[32m+[m[32m        if(self.numeros.get() == 1):[m
[32m+[m[32m            self.get_lista.append(1)[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.get_lista.append(0)[m
[32m+[m[32m        if(self.especiais.get() == 1):[m
[32m+[m[32m            self.get_lista.append(1)[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.get_lista.append(0)[m
[32m+[m[32m        if(self.minusculos.get() == 1):[m
[32m+[m[32m            self.get_lista.append(1)[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.get_lista.append(0)[m
[32m+[m[32m        if(self.maiusculos.get() == 1):[m
[32m+[m[32m            self.get_lista.append(1)[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.get_lista.append(0)[m
[32m+[m[32m        return self.get_lista[m
[32m+[m[41m        [m
[32m+[m[41m    [m
[32m+[m[32m    def compara_checkbuttons(self):#compara as opções CHECKBUTTON com os tipos de caracteres e retorna uma nova lista apenas com os caracteres selecionados[m
[32m+[m[32m        self.get_checkbuttons()[m
[32m+[m[32m        self.caracteres = [][m
[32m+[m[32m        caracter_numericos = string.digits[m
[32m+[m[32m        caracter_especiais = string.punctuation[m
[32m+[m[32m        caracter_minusculas = string.ascii_lowercase[m
[32m+[m[32m        caracter_maiusculas = string.ascii_uppercase[m
[32m+[m[32m        tipos_caracter = [caracter_numericos, caracter_especiais, caracter_minusculas, caracter_maiusculas][m
[32m+[m
[32m+[m[32m        for i in range(0,len(self.get_lista)):[m
[32m+[m[32m            if self.get_lista[i]==1:[m
[32m+[m[32m                self.caracteres.append(tipos_caracter[i])[m
[32m+[m[32m        self.caracteres = ''.join(self.caracteres)#concatena todos os tipos de caracteres selecionados em uma string[m
[32m+[m[32m        return self.caracteres[m
[32m+[m[41m        [m
[32m+[m
[32m+[m[32m    def gerar_senha(self):[m
[32m+[m[32m        self.senha = [][m
[32m+[m[32m        self.variaveis()[m
[32m+[m[32m        for i in range(int(self.tamanho)):[m
[32m+[m[32m            keygen = random.choice(self.caracteres)#keygen recebe os tipos de caracteres que sera escolhido randomicamente[m
[32m+[m[32m            self.senha.append(keygen)#adiciona um caractere a lista[m
[32m+[m[32m        self.senha = "".join(self.senha)#trasnforma a lista em string, unindo todos os caracteres da senha[m
[32m+[m[32m        print(self.senha)[m
[32m+[m[32m        return self.senha[m
[32m+[m
[32m+[m
[32m+[m[32mclass Armazenar_senha:[m
[32m+[m[41m    [m
[32m+[m[32m    def salvar_senha(self):[m
[32m+[m[32m        pass[m
[32m+[m
[32m+[m[32m#a = Gerador_de_senhas()[m
[32m+[m[32m#a.compara_checkbuttons()[m
[32m+[m[32m"""[m
 caracter = [[m
     'a','A','b','B','c','C','d','D','e','E','f','F',[m
     'g','G','h','H','i','I','j','J','l','L','m','M','n','N','o','O','p','P','q','Q','r','R',[m
[36m@@ -33,12 +112,4 @@[m [msenha = str(senha).strip('[]').replace("'",'').replace(',','').replace(' ','')[m
 print(type(senha))[m
 print(senha)[m
 [m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[32m+[m[32m"""[m
[1mdiff --git a/gui.py b/gui.py[m
[1mindex 7f65dfc..5871afe 100644[m
[1m--- a/gui.py[m
[1m+++ b/gui.py[m
[36m@@ -1,20 +1,87 @@[m
[31m-from tkinter import *[m
[31m-from tkinter import ttk[m
[32m+[m[32mfrom app import *[m
 [m
 root = Tk()[m
 [m
[31m-class Windows():[m
[32m+[m[32mclass Windows(Gerador_de_senhas):[m
     def __init__(self):[m
         self.root = root[m
         self.tela()[m
[32m+[m[32m        self.frame()[m
[32m+[m[32m        self.widgets_frame()[m
         root.mainloop()[m
[32m+[m[41m        [m
     [m
     def tela(self):[m
         self.root.title('Gerador de Senhas')#titulo da janela[m
         self.root.configure(background='black')#cor de fundo da janela[m
         self.root.geometry('420x360')#o tamanho que a janela se inicia[m
[31m-        self.root.resizable(True, True)#permite redimensionar a janela nos eixos X e Y[m
[31m-        self.root.maxsize(width=1920, height=1080)#tamanho maximo da janela[m
[31m-        self.root.minsize(width=420, height=360)#tamanho minimo da janela[m
[32m+[m[32m        self.root.resizable(False, False)#permite redimensionar a janela nos eixos X e Y[m
[32m+[m[32m        #self.root.maxsize(width=1920, height=1080)#tamanho maximo da janela[m
[32m+[m[32m        #self.root.minsize(width=420, height=360)#tamanho minimo da janela[m
 [m
[31m-Windows()[m
[32m+[m[32m    def frame(self):[m
[32m+[m[32m        self.frame = Frame(self.root, bg = '#820AD1', bd = 2)[m
[32m+[m[32m        self.frame.place(relx = 0.01, rely = 0.01, relheight = 0.98, relwidth = 0.98)[m
[32m+[m[41m    [m
[32m+[m[32m    def widgets_frame(self):[m
[32m+[m[32m        #botões###################################################################[m
[32m+[m[32m        self.bt_gerar = Button(self.frame, text='Gerar', command = self.show)[m
[32m+[m[32m        self.bt_gerar.place(relx = 0.4, rely = 0.85, relheight = 0.1, relwidth = 0.20)[m
[32m+[m
[32m+[m[32m        #label###################################################################[m
[32m+[m[32m        self.lb_servico = Label(self.frame, text = 'Serviço', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')[m
[32m+[m[32m        self.lb_servico.place(relx = 0.05, rely = 0.1, relheight = 0.1, relwidth = 0.15)[m
[32m+[m
[32m+[m[32m        self.lb_login = Label(self.frame, text = 'Login', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')[m
[32m+[m[32m        self.lb_login.place(relx = 0.07, rely = 0.2, relheight = 0.1, relwidth = 0.15)[m
[32m+[m[41m    [m
[32m+[m[32m        self.lb_caracteres = Label(self.frame, text = 'Quais tipos de caracteres terá sua senha?', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')[m
[32m+[m[32m        self.lb_caracteres.place(relx = 0, rely = 0.3, relheight = 0.1, relwidth= 1)[m
[32m+[m
[32m+[m[32m        self.lb_tamanho = Label(self.frame, text = 'Tamanho', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')[m
[32m+[m[32m        self.lb_tamanho.place(relx = 0.65, rely = 0.4, relheight = 0.1, relwidth = 0.2)[m
[32m+[m
[32m+[m[32m        #self.senha = Label(self.frame, text = 'Tamanho', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')[m
[32m+[m[32m        #self.senha.place(relx = 0.0, rely = 0.8, relheight = 0.1, relwidth = 0.2)[m
[32m+[m
[32m+[m[32m        #entry###################################################################[m
[32m+[m[32m        self.entry_servico = Entry(self.frame)[m
[32m+[m[32m        self.entry_servico.place(relx = 0.21, rely = 0.1, relheight = 0.07,relwidth = 0.75)[m
[32m+[m
[32m+[m[32m        self.entry_login = Entry(self.frame)[m
[32m+[m[32m        self.entry_login.place(relx = 0.21, rely = 0.2, relheight = 0.07, relwidth = 0.75)[m
[32m+[m
[32m+[m[32m        self.entry_tamanho = Entry(self.frame)[m
[32m+[m[32m        self.entry_tamanho.place(relx = 0.85, rely = 0.4, relheight = 0.07, relwidth = 0.1)[m
[32m+[m
[32m+[m[32m        #self.entry_senha = Entry(self.frame)[m
[32m+[m[32m        #self.entry_senha.place(relx = 0.25, rely = 0.8, relheight = 0.1, relwidth = 0.7)[m
[32m+[m
[32m+[m
[32m+[m[32m        #Check button[m
[32m+[m[32m        self.numeros = IntVar()[m
[32m+[m[32m        self.especiais = IntVar()[m
[32m+[m[32m        self.minusculos = IntVar()[m
[32m+[m[32m        self.maiusculos = IntVar()[m
[32m+[m[32m        self.op1 = Checkbutton(self.frame, text = 'Números', bg = '#820AD1',font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.numeros)[m
[32m+[m[32m        self.op1.place(relx = 0.05, rely = 0.4, relheight = 0.1, relwidth = 0.23)[m
[32m+[m[32m        self.op2 = Checkbutton(self.frame, text = 'Especiais', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.especiais)[m
[32m+[m[32m        self.op2.place(relx = 0.05, rely = 0.5, relheight = 0.1, relwidth = 0.23)[m
[32m+[m[32m        self.op3 = Checkbutton(self.frame, text = 'Minusculos', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.minusculos)[m
[32m+[m[32m        self.op3.place(relx = 0.32, rely = 0.4, relheight = 0.1, relwidth = 0.3)[m
[32m+[m[32m        self.op4 = Checkbutton(self.frame, text = 'Maiusculos', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.maiusculos)[m
[32m+[m[32m        self.op4.place(relx = 0.32, rely = 0.5, relheight = 0.1, relwidth = 0.3)[m
[32m+[m[41m        [m
[32m+[m[32m        #teste[m
[32m+[m[32m        #butao = Button(self.frame, text = 'mostrar', command= self.check_button)[m
[32m+[m[32m        #butao.place(relx = 0.5, rely = 0.8, relwidth= 0.1, relheight= 0.1)[m
[32m+[m
[32m+[m[32m    #def show(self):[m
[32m+[m[32m        #self.get = Label(self.frame, text = self.check_num.get())[m
[32m+[m[32m        #self.get.place(relx = 0.5, rely = 0.65, relwidth= 0.1, relheight= 0.1)[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32mApp = Windows()[m
[32m+[m[32m#HEIGHT altura[m
[32m+[m[32m#WIDTH LARGURA[m
\ No newline at end of file[m

[33mcommit e9978b276b27901fc306659dd7340163cb973dcd[m
Author: Daniel Tsuzuki <massao.tsuzuki@gmail.com>
Date:   Wed Sep 22 08:19:21 2021 -0300

    commit inicial

[1mdiff --git a/app.py b/app.py[m
[1mindex 7d0e67b..7551783 100644[m
[1m--- a/app.py[m
[1m+++ b/app.py[m
[36m@@ -1 +1,44 @@[m
[31m-import re[m
\ No newline at end of file[m
[32m+[m[32mimport random[m
[32m+[m[32mimport re[m
[32m+[m
[32m+[m
[32m+[m[32mcaracter = [[m
[32m+[m[32m    'a','A','b','B','c','C','d','D','e','E','f','F',[m
[32m+[m[32m    'g','G','h','H','i','I','j','J','l','L','m','M','n','N','o','O','p','P','q','Q','r','R',[m
[32m+[m[32m    's','S','t','T','u','U','v','V','x','X','y','Y','w','W','z','Z','ç','Ç','1','2','3','4',[m
[32m+[m[32m    '5','6','7','8','9','0','!','@','#','$','%','&','*',',','.','?','/','=','+','-','_'[m
[32m+[m[32m    ][m
[32m+[m[32mcaracter_lower = ['a','b','c','d','e','f','g','h','i','j','l','m','n','o','p','q','r','s','t','u','v','x','z','y','w','ç'][m
[32m+[m[32mcaracter_special = ['!','@','#','$','%','&','*',',','.','?','/','=','+','-','_'][m
[32m+[m[32mnumber = ['1','2','3','4','5','6','7','8','9','0'][m
[32m+[m
[32m+[m
[32m+[m[32mtotal_caracter = int(input('Quantos caracteres sua senha deve ter? '))[m
[32m+[m[32m#number_caracter = int(input('Quantos desses caracteres devem ser "números"?' ))[m
[32m+[m[32m#special_caracter = int(input('Quantos desses caracteres devem ser "caracter especial"?' ))[m
[32m+[m[32m#if number_caracter > total_caracter:[m
[32m+[m[32m    #print('ERRO, a quantidade de números é maior que a quantidade de caracteres da senha')[m
[32m+[m[32m#if caracter_special > (total_caracter - number_caracter):[m
[32m+[m[32m    #print('ERRO, a quantidade de caracteres especiais é maior que a quantidade de caracteres permitida')[m
[32m+[m
[32m+[m
[32m+[m[32msenha = [][m
[32m+[m[32mfor i in range(total_caracter):# - number_caracter - special_caracter[m
[32m+[m[32m    keygen = random.choice(caracter)[m
[32m+[m[32m    senha.append(keygen)[m
[32m+[m[32mprint(senha)[m
[32m+[m[32m#senha = list(senha)[m
[32m+[m[32mrandom.shuffle(senha)[m
[32m+[m[32msenha = str(senha).strip('[]').replace("'",'').replace(',','').replace(' ','')[m
[32m+[m[32mprint(type(senha))[m
[32m+[m[32mprint(senha)[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[1mdiff --git a/gui.py b/gui.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7f65dfc[m
[1m--- /dev/null[m
[1m+++ b/gui.py[m
[36m@@ -0,0 +1,20 @@[m
[32m+[m[32mfrom tkinter import *[m
[32m+[m[32mfrom tkinter import ttk[m
[32m+[m
[32m+[m[32mroot = Tk()[m
[32m+[m
[32m+[m[32mclass Windows():[m
[32m+[m[32m    def __init__(self):[m
[32m+[m[32m        self.root = root[m
[32m+[m[32m        self.tela()[m
[32m+[m[32m        root.mainloop()[m
[32m+[m[41m    [m
[32m+[m[32m    def tela(self):[m
[32m+[m[32m        self.root.title('Gerador de Senhas')#titulo da janela[m
[32m+[m[32m        self.root.configure(background='black')#cor de fundo da janela[m
[32m+[m[32m        self.root.geometry('420x360')#o tamanho que a janela se inicia[m
[32m+[m[32m        self.root.resizable(True, True)#permite redimensionar a janela nos eixos X e Y[m
[32m+[m[32m        self.root.maxsize(width=1920, height=1080)#tamanho maximo da janela[m
[32m+[m[32m        self.root.minsize(width=420, height=360)#tamanho minimo da janela[m
[32m+[m
[32m+[m[32mWindows()[m

[33mcommit a91338d8e420f3d61297240d450210aab7602fae[m
Author: Daniel Tsuzuki <massao.tsuzuki@gmail.com>
Date:   Wed Sep 22 08:11:55 2021 -0300

    commit inicial

[1mdiff --git a/app.py b/app.py[m
[1mindex e69de29..7d0e67b 100644[m
[1m--- a/app.py[m
[1m+++ b/app.py[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mimport re[m
\ No newline at end of file[m

[33mcommit 8119f18ccb288c2e5d810f49f35d038f60ddec3d[m
Author: Daniel Tsuzuki <massao.tsuzuki@gmail.com>
Date:   Wed Sep 22 08:00:23 2021 -0300

    commit 1

[1mdiff --git a/app.py b/app.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m

[33mcommit 3a2fc8901be984527f8247c469622f8ea31ce39f[m
Author: Daniel Tsuzuki <massao.tsuzuki@gmail.com>
Date:   Wed Sep 22 07:47:34 2021 -0300

    commit inicial

[1mdiff --git a/Descricao.txt b/Descricao.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..3950793[m
[1m--- /dev/null[m
[1m+++ b/Descricao.txt[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32mGerar senha com caracteres maiúsculos, minúsculos, números e especiais.[m
[32m+[m[32mopção de tamanho da senha[m
[32m+[m[32mopção de quantidade de caracteres maiúsculos, minúsculos, números e especiais.[m
[32m+[m[32msalvar no banco de dados[m
[32m+[m[32menviar por email[m
\ No newline at end of file[m
