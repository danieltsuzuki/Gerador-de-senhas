from app import *

root = Tk()

class Windows(Gerador_de_senhas):
    def __init__(self):
        self.root = root
        self.tela()
        self.frame()
        self.widgets_frame()
        root.mainloop()
        
    
    def tela(self):
        self.root.title('Gerador de Senhas')#titulo da janela
        self.root.configure(background='black')#cor de fundo da janela
        self.root.geometry('420x360')#o tamanho que a janela se inicia
        self.root.resizable(False, False)#permite redimensionar a janela nos eixos X e Y
        #self.root.maxsize(width=1920, height=1080)#tamanho maximo da janela
        #self.root.minsize(width=420, height=360)#tamanho minimo da janela

    def frame(self):
        self.frame = Frame(self.root, bg = '#820AD1', bd = 2)
        self.frame.place(relx = 0.01, rely = 0.01, relheight = 0.98, relwidth = 0.98)
    
    def widgets_frame(self):
        #botões###################################################################
        self.bt_gerar = Button(self.frame, text='Gerar', command = self.show)
        self.bt_gerar.place(relx = 0.4, rely = 0.85, relheight = 0.1, relwidth = 0.20)

        #label###################################################################
        self.lb_servico = Label(self.frame, text = 'Serviço', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')
        self.lb_servico.place(relx = 0.05, rely = 0.1, relheight = 0.1, relwidth = 0.15)

        self.lb_login = Label(self.frame, text = 'Login', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')
        self.lb_login.place(relx = 0.07, rely = 0.2, relheight = 0.1, relwidth = 0.15)
    
        self.lb_caracteres = Label(self.frame, text = 'Quais tipos de caracteres terá sua senha?', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')
        self.lb_caracteres.place(relx = 0, rely = 0.3, relheight = 0.1, relwidth= 1)

        self.lb_tamanho = Label(self.frame, text = 'Tamanho', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')
        self.lb_tamanho.place(relx = 0.65, rely = 0.4, relheight = 0.1, relwidth = 0.2)

        #self.senha = Label(self.frame, text = 'Tamanho', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222')
        #self.senha.place(relx = 0.0, rely = 0.8, relheight = 0.1, relwidth = 0.2)

        #entry###################################################################
        self.entry_servico = Entry(self.frame)
        self.entry_servico.place(relx = 0.21, rely = 0.1, relheight = 0.07,relwidth = 0.75)

        self.entry_login = Entry(self.frame)
        self.entry_login.place(relx = 0.21, rely = 0.2, relheight = 0.07, relwidth = 0.75)

        self.entry_tamanho = Entry(self.frame)
        self.entry_tamanho.place(relx = 0.85, rely = 0.4, relheight = 0.07, relwidth = 0.1)

        #self.entry_senha = Entry(self.frame)
        #self.entry_senha.place(relx = 0.25, rely = 0.8, relheight = 0.1, relwidth = 0.7)


        #Check button
        self.numeros = IntVar()
        self.especiais = IntVar()
        self.minusculos = IntVar()
        self.maiusculos = IntVar()
        self.op1 = Checkbutton(self.frame, text = 'Números', bg = '#820AD1',font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.numeros)
        self.op1.place(relx = 0.05, rely = 0.4, relheight = 0.1, relwidth = 0.23)
        self.op2 = Checkbutton(self.frame, text = 'Especiais', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.especiais)
        self.op2.place(relx = 0.05, rely = 0.5, relheight = 0.1, relwidth = 0.23)
        self.op3 = Checkbutton(self.frame, text = 'Minusculos', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.minusculos)
        self.op3.place(relx = 0.32, rely = 0.4, relheight = 0.1, relwidth = 0.3)
        self.op4 = Checkbutton(self.frame, text = 'Maiusculos', bg = '#820AD1', font = ('Arial',13, 'bold'), foreground = '#222222', variable = self.maiusculos)
        self.op4.place(relx = 0.32, rely = 0.5, relheight = 0.1, relwidth = 0.3)
        
        #teste
        #butao = Button(self.frame, text = 'mostrar', command= self.check_button)
        #butao.place(relx = 0.5, rely = 0.8, relwidth= 0.1, relheight= 0.1)

    #def show(self):
        #self.get = Label(self.frame, text = self.check_num.get())
        #self.get.place(relx = 0.5, rely = 0.65, relwidth= 0.1, relheight= 0.1)



App = Windows()
#HEIGHT altura
#WIDTH LARGURA