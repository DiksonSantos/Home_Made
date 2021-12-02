#!/usr/bin/env python
from datetime import datetime
import time
import subprocess



NT = [*range(18,24)]
TD = [*range(13,18)]
MD = [*range(0,7)]
MN = [*range(6, 13)]

# PEGA HORA MINUTO E SEGUNDO ATUAL
now = datetime.now()
# APENAS A HORA (sem minutos e segundos)
current_hora = now.strftime("%H")

while True:
	time.sleep(32)
    
    # COVNERTE A HORA PARA NUMERO INTEIRO
    convert = int(current_hora)
    
    # NOITE (EVENING)
    if convert in NT:
    	time.sleep(5)
        subprocess.call('sct 3500', shell=True)
    # MEIA NOITE
    elif convert == 00:
    	time.sleep(9)
        subprocess.call('sct 3300', shell=True)
    # MADRUGADA & ATÉ 11 DA MANHÃ:
    elif convert in MD:
    	time.sleep(5)
        subprocess.call('sct 3200', shell=True)
        
    # MANHÃ -> 06 AO MEIO DIA:
    elif convert in MN:
        time.sleep(1)
        #print('MANHÃ')
        subprocess.call('sct 4500', shell=True)

    # VESPERTINO
    elif convert in TD:
    	time.sleep(5)
        subprocess.call('sct 6300', shell=True)

    else:
    	time.sleep(5)
        subprocess.call('sct 5000', shell=True)

# https://www.eizo.com/library/basics/color_temperature_on_an_LCD_monitor/



#now = datetime.now()

# MOSTRA HORA MIN & SEGUNDO ATUAL
#current_time = now.strftime("%H:%M:%S")
#print("Current Time =", current_time)

# PEGA APENAS A HORA:
#current_hora = now.strftime("%H")

# CONVERTE EM UNIDADE 'INTEIRO'
#convert = int(current_hora)

