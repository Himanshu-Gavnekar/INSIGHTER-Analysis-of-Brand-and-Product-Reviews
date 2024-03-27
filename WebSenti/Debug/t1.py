from sklearn.metrics import ConfusionMatrixDisplay
from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
import numpy as np
import pandas as p
import numpy as n
import sys
import matplotlib
from sklearn.metrics import accuracy_score, confusion_matrix, roc_auc_score, roc_curve 
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer 


xml="<ds>"
# function to print sentiments 
# of the sentence. 
def detect_sentiment(sentence): 

	# Create a SentimentIntensityAnalyzer object. 
	sid_obj = SentimentIntensityAnalyzer() 

	# polarity_scores method of SentimentIntensityAnalyzer 
	# oject gives a sentiment dictionary. 
	# which contains pos, neg, neu, and compound scores. 
	sentiment_dict = sid_obj.polarity_scores(sentence) 

	string = str(sentiment_dict['neg']*100) + "% Negative"
	print(string)
	string = str(sentiment_dict['neu']*100) + "% Neutral"
	print(string)

	string = str(sentiment_dict['pos']*100) +"% Positive"
	print(string)
	res=0
	# decide sentiment as positive, negative and neutral 
	if sentiment_dict['compound'] >= 0.05 : 
		string = "Positive"
		res=1

	elif sentiment_dict['compound'] <= - 0.05 : 
		string = "Negative"
		res=-1
	

	else : 
		string = "Neutral"
		res=0
	global xml
	xml+="<x><data>"+sentence+"</data><value1>"+string+"</value1><value2>"+str(res)+"</value2></x>"	
    
    
# Driver Code 
if __name__ == "__main__" : 
	
    file1 = open('test.csv', 'r')
Lines = file1.readlines()
 
count = 0
# Strips the newline character
for line in Lines:
    detect_sentiment(line.strip())
xml+="</ds>"
f = open("myres.xml", "w")
f.write(str(xml))
f.close()
y_pred = np.array([#####])
y_test = np.array([@@@@@])
labels = ["Positive", "Neutral", "Negative"]

cm = confusion_matrix(y_test, y_pred)

disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=labels)

disp.plot(cmap=plt.cm.Blues)
plt.savefig("11.jpg")
plt.close()
plt.show()
var1=y_pred
var2=y_test 
plt. title ('Correlation between variable1 and variable2')  
plt. scatter (var1, var2)  
plt. plot (n. unique (var1), n.poly1d (n. polyfit (var1, var2, 1))(n.unique (var1)), color = 'green')  
plt. xlabel ('Positive')  
plt. ylabel ('Negative') 
plt.savefig("12.jpg")
plt.close()
plt.show() 
n = $$$$$
ratio = .95
n_0 = int((1-ratio) * n)
n_1 = int(ratio * n)

y = np.array([0] * n_0 + [1] * n_1)
# below are the probabilities obtained from a hypothetical model that doesn't always predict the mode
y_proba_2 = np.array(
    np.random.uniform(0, .7, n_0).tolist() +
    np.random.uniform(.3, 1, n_1).tolist()
)
y_pred_2 = y_proba_2 > .5

def plot_roc_curve(true_y, y_prob):
    """
    plots the roc curve based of the probabilities
    """
    
    fpr, tpr, thresholds = roc_curve(true_y, y_prob)
    plt.plot(fpr, tpr)
    plt.xlabel('False Positive ROC Rate')
    plt.ylabel('True Positive ROC Rate')

plot_roc_curve(y, y_proba_2)
print(f'model 2 AUC score: {roc_auc_score(y, y_proba_2)}')

#Two  lines to make our compiler able to draw:
plt.savefig("13.jpg")
plt.close()
plt.show()

	
	
