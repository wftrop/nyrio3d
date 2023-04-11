from gcodeparser import GcodeParser
import math


def gcodetri(X):
    for i in range (len (X)):
        X[i]=X[i].gcode_str
        X[i]=X[i].split( )
        G,t=X[i],0
        for j in range (len (X[i])):
            if (t==1):
                G.remove(G[l])
            elif(G[j]==";"):
                G.remove(G[j])
                t=1
                l=j
    return (X)

def MVT(ligne):
    X,Y,Z,F,E=-1,-1,-1,-1,-1
    if ligne[0]=="G1" or ligne[0]=="G0":
        for j in range (len(ligne)-1):
            coord=ligne[j+1]
            if coord[0]=="X":
                X= float(coord.lstrip(coord[0]))
            elif coord[0]=="Y":
                Y= float(coord.lstrip(coord[0]))
            elif coord[0]=="Z":
                Z= float(coord.lstrip(coord[0]))
            elif coord[0]=="F":
                F= float(coord.lstrip(coord[0]))
            elif coord[0]=="E":
                E= float(coord.lstrip(coord[0]))
        
        return(X,Y,Z,F,E)
    elif ligne[0]=="G28":
        X=float(0)
        Y=float(0)
        Z=float(0)
        F=float(1200)
        E=float(0)
        return(X,Y,Z,F,E)


def remplacement(T): # remplace -1 par la valeur précédente
    for i in range(len(T)):
        if T[i]==-1:
            T[i]=T[i-1]
    return(T)

def distance(A,B): # calcule la distance entre 2 points
    (xA , yA , zA , fA, eA) = A
    (xB , yB , zB , fB, eB) = B
    return math.sqrt((xA-xB)**2 + (yB-yA)**2)

def droite(A,B): # calcule les paramètres de la droite
    (xA , yA , zA , fA, eA) = A
    (xB , yB , zB , fB, eB) = B
    if xA == xB:
        return (1 , 0 , -xA)
    a = - (yB - yA)/(xB - xA)
    c = -a*xA - yA
    return (a , 1 , c)

def appartient( droite , point , precision): # return true quand le point appartient à la droite avec une certaine précision
    (a , b , c ) = droite
    (xA , yA , zA , fA , eA ) = point
    return abs(a*xA + b*yA + c) <= precision

def reducepoints(points,precision, distanceMinimale): # réduit les points du fichier
    nPoints = list()
    nPoints.append(points[0])
    for i in range(1,len(points)-1):
        if(distance(nPoints[-1],points[i])>distanceMinimale):
            nPoints.append(points[i])
        else:
            if points[i-1][0] == points[i][0] and points[i-1][1] == points[i][1] and points[i-1][2] == points[i][2]:
                continue #si coordonnées de i et i-1 sont les mêmes on passe au suivant

            (a , b , c) = droite( points[i-1], points[i])
            if appartient((a , b , c), points[i+1],precision):
                if points[i+1]==points[-1]:
                    nPoints.append(points[-1])
                continue #si la droite de i et i-1 et le point i+1 appartient à la meme droite on continue
            else :
                if points[i+1]==points[-1]:
                    nPoints.append(points[-1])
                    nPoints.append(points[i])
                else : 
                    nPoints.append(points[i])
            
    return nPoints


def gcodeToNyiryoCode(fichierGcode):
    with open('fichierGcode', 'r') as f:  
      gcode = f.read()
    List , x_gcode , y_gcode , z_gcode , f_gcode , e_gcode=[],[],[],[],[],[]
    Gcode=GcodeParser(gcode).lines
    Gcode=gcodetri(Gcode)

    for i in range (len(Gcode)):
    #for i in range (155,185):
        Val=MVT(Gcode[i])
        List.append(Val)
    for i in range(len(List)):
        if List[i]!=None:
            Temp=List[i]
            x_gcode.append(Temp[0])
            y_gcode.append(Temp[1])
            z_gcode.append(Temp[2])
            f_gcode.append(Temp[3])
            e_gcode.append(Temp[4])

    x_gcode=remplacement(x_gcode)
    y_gcode=remplacement(y_gcode)
    z_gcode=remplacement(z_gcode)
    f_gcode=remplacement(f_gcode)
    e_gcode=remplacement(e_gcode)

    points = [(x_gcode[i],y_gcode[i],z_gcode[i],f_gcode[i],e_gcode[i]) for i in range(len(x_gcode))]
    nouveauxPoints = reducepoints(points,0.1,1)
    x=[i[0] for i in nouveauxPoints]
    y=[i[1] for i in nouveauxPoints]
    z=[i[2] for i in nouveauxPoints]
    f=[i[3] for i in nouveauxPoints]
    e=[i[4] for i in nouveauxPoints]
