from tkinter import *
from tkinter import ttk

root = Tk()

class Windows():
    def __init__(self):
        self.root = root
        self.tela()
        root.mainloop()
    
    def tela(self):
        self.root.title('Gerador de Senhas')#titulo da janela
        self.root.configure(background='black')#cor de fundo da janela
        self.root.geometry('420x360')#o tamanho que a janela se inicia
        self.root.resizable(True, True)#permite redimensionar a janela nos eixos X e Y
        self.root.maxsize(width=1920, height=1080)#tamanho maximo da janela
        self.root.minsize(width=420, height=360)#tamanho minimo da janela

Windows()
