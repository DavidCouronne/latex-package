\ProvidesClass{cornouaille}[2018/09/13 v1.0 cornouaille class]
\NeedsTeXFormat{LaTeX2e}[1995/06/01]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

%Les packages persos chargés
\RequirePackage{apmep}
\RequirePackage{dcmaths}
\RequirePackage{dccornouaille}
\RequirePackage{dctikz}
\RequirePackage{dccours}

%Les packages pstricks
\RequirePackage{pst-plot,pst-tree,pstricks,pst-node,pst-func}
\RequirePackage{pst-eucl}
\RequirePackage{pstricks-add}
\RequirePackage{pst-all}

%Pour les tableaux de valeur et de variation
\RequirePackage{tkz-tab}

%Mise en page
\RequirePackage{geometry}
%En test
\geometry{a4paper,width=17.8cm,height=25cm
,marginparsep=0cm %Pas de séparateur de marge
,marginparwidth=0cm %Pas de notes de marge 
}

%\geometry{a4paper,left=1cm, right=1cm , top=1cm , bottom=2.5cm} %Mise en page APMEP
%\setlength{\textheight}{25cm} %Hauteur du texte
\setlength{\headheight}{0.5cm} %Hauteur Entête (minimum 0.5cm sinon le package fancyhd plante...)
\setlength\parindent{0mm} %Supprime l'indentation de façon permanente

%Ecrire en français, symboles divers et mise en forme
%\RequirePackage[frenchb]{babel}
\RequirePackage{polyglossia}
\setdefaultlanguage{french}
\newcommand{\og}{\char 19} %ourvir les guillemets
\newcommand{\fg}{\char 20}
\RequirePackage{eurosym} %Pour le symbole euro: \euro
\RequirePackage{enumitem}
\RequirePackage{fourier} %Pour les symboles standards
\RequirePackage[np]{numprint} % Permet de mettre en forme les nombres
\RequirePackage{colortbl} %Pour colorer les tableaux
\RequirePackage{diagbox} %Charge slashbox, calc, keyval, fp, pit2e Permet de faire des diagonales dans un tableau
\RequirePackage{multicol} %Pour écrire sur plusieurs colonnes

%Les fontes
\RequirePackage{fontspec}
%\setmainfont{Arial}

%Pour l'importation Sesamath
\RequirePackage{sesatikz}

%Les liens hypertextes
\RequirePackage[xetex,colorlinks=true,pdfstartview=FitV,linkcolor=blue,citecolor=blue,urlcolor=blue]{hyperref}

%%%%%%%%%%%%%%%%%
%Auteur
%%%%%%%%%%%%%%%%%
\hypersetup{%
pdfauthor = David Couronn\'e,
%pdfsubject = {},
%pdftitle = {},
allbordercolors = white,
pdfstartview=FitH,
colorlinks=true,
linkcolor=blue
} 

\renewcommand{\C}{\mathbb{C}} %Le package hyperref écrase la commande pour l'ensemble C des complexes...


%Commande pour changer facilement le nom d'auteur:
\newcommand{\Auteur}[1]{%
\hypersetup{pdfauthor = #1}
}

%Nouveau type de colonne dans tabularx: C qui correspond à X centré
\newcolumntype{C}{>{\centering\arraybackslash}X}

%On écrit les maths tout le temps en grand
\everymath{\displaystyle}




