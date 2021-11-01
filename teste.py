import string, random
class Teste:
    def __init__(self):
        self.senha = []
        self.get_checkbutton()
        self.tipos()
        self.print()
        

    def get_checkbutton(self):
        self.lista = [1,1,1,1]
        return self.lista

    def tipos(self):
        self.caracter_numericos = string.digits#caracteres númericos
        self.caracter_especiais = string.punctuation #'?@!#$%&'#caracteres especiais
        self.caracter_minusculas = string.ascii_lowercase#caracteres minusculos
        self.caracter_maiusculas = string.ascii_uppercase#caracteres maiusculos
        self.tipos_caracter = [self.caracter_numericos, self.caracter_especiais, self.caracter_minusculas, self.caracter_maiusculas]#lista que junta todos os caracteres
        return self.caracter_especiais, self.caracter_maiusculas, self.caracter_minusculas, self.caracter_numericos

    def print(self):
        ##self.get_checkbutton()
        i=0
    
        if self.lista[0]==1:
            keygen = random.choice(self.caracter_numericos)
            self.senha.append(keygen)
        if self.lista[1]==1:
            keygen = random.choice(self.caracter_especiais)
            self.senha.append(keygen)
        if self.lista[2]==1:
            keygen = random.choice(self.caracter_minusculas)
            self.senha.append(keygen)
        if self.lista[3]==1:
            keygen = random.choice(self.caracter_maiusculas)
            self.senha.append(keygen)
        
        random.shuffle(self.senha)
        ##self.senha = "".join(self.new)
        print(self.senha)
    
teste = Teste()