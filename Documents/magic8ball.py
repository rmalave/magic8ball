from random import randint

def get_ran_index(min, max):
    n = randint(min,max)
    return n
    
def get_judgement():
    ran_index = get_ran_index(0, len(judgement) - 1)
    return judgement[ran_index]
    
def get_fortune():
    ran_index = get_ran_index(0, len(fortune) - 1)
    return fortune[ran_index]

def want_to_play(prompt):
    answer = ''
    while answer != 'y' and answer != 'n':
        answer = input(prompt).lower()
        if answer != 'y' and answer != 'n':
            print('Invalid input. Please enter y/n:') 
    return answer == 'y'   
    
judgement = ["Hmmm...", 
			"Good question.",
			"Interesting.",
			"Why would you ask that?.",
			"What kind of question is that?."]
            
fortune = ["Signs point to yes.", 
			"Yes.",
			"Reply hazy, try again.",
			"Without a doubt.",
			"My sources say no.",
			"As I see it, yes.",
			"You may rely on it.",
			"Concentrate and ask again.",
			"Outlook not so good.",
			"It is decidedly so.",
			"Better not tell you now.",
			"Very doubtful.",
			"Yes - definitely.",
			"It is certain.",
			"Cannot predict now.",
			"Most likely.",
			"Ask again later.",
			"My reply is no.",
			"Outlook good.",
			"Don't count on it."]

print("Welcome to the judgemental magic 8 ball")

while want_to_play('Do you want to learn your fortune?'):
    prompt = input("Ask me a question: ")    
    print(get_judgement())
    print(get_fortune())
    want_to_play('Do you want to play again?')
else:
    print('Good bye')
