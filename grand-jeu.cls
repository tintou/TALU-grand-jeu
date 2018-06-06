\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{grand-jeu}[Grand Jeu, V1.0]

% classe de base

\LoadClass[a4paper, 12pt]{article}

% extensions

\RequirePackage[a4paper, margin={1cm,2cm}]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage{fontspec}
\RequirePackage[french]{babel}
\RequirePackage{ifthen}
\RequirePackage{xcolor}
\RequirePackage{lastpage}
\setmainfont{Lato}
\setsansfont{Montserrat}

\definecolor{energie}{HTML}{FFAC00}
\definecolor{debrouillard}{HTML}{008DFF}
\definecolor{rayonnement}{HTML}{6E00B0}
\definecolor{solidaire}{HTML}{B60505}
\definecolor{esperance}{HTML}{8E8E8E}
\definecolor{respectueux}{HTML}{047F00}

\def \categoriecolor {black}
\def \headerimage {images/header.pdf}

% commandes personnelles
\newcommand{\titre}[2][0]{ \def \@numero{#1} \title{#2} }
\newcommand{\categorie}[1]{
    \def \@categorie{#1}
     \ifthenelse
      {\equal{Énergie}{#1}}
      {\def \@categorie{Solar Impulse}
       \def \categoriecolor {energie}
       \def \headerimage {images/header-jaune.pdf}}
      {}
     \ifthenelse
      {\equal{Débrouillard}{#1}}
      {\def \@categorie{Roseta}
       \def \categoriecolor {debrouillard}
       \def \headerimage {images/header-bleu.pdf}}
      {}
     \ifthenelse
      {\equal{Rayonnement}{#1}}
      {\def \@categorie{Nozomi}
       \def \categoriecolor {rayonnement}
       \def \headerimage {images/header-violet.pdf}}
      {}
     \ifthenelse
      {\equal{Solidaire}{#1}}
      {\def \@categorie{SETI}
       \def \categoriecolor {solidaire}
       \def \headerimage {images/header-rouge.pdf}}
      {}
     \ifthenelse
      {\equal{Espérance}{#1}}
      {\def \@categorie{Curiosity}
       \def \categoriecolor {esperance}
       \def \headerimage {images/header-blanc.pdf}}
      {}
     \ifthenelse
      {\equal{Respectueux}{#1}}
      {\def \@categorie{ISS}
       \def \categoriecolor {respectueux}
       \def \headerimage {images/header-vert.pdf}}
      {}
}

\newenvironment{liste-materiel}
{
    \newcommand{\materiel}[1]{ \item{ ##1 } }
    \textbf{\sffamily Matériel :}
    \vspace{0.2cm}

    \begin{minipage}{0.9\textwidth}
    \begin{itemize}
}
{
    \end{itemize}
    \end{minipage}
    \vspace{0.5cm}
}

\newenvironment{regles}
{
    \textbf{\sffamily Règles du jeu :}
    \vspace{0.2cm}

    \begin{minipage}{0.9\textwidth}
}
{
    \end{minipage}
    \vspace{0.5cm}
}

\newenvironment{imaginaire}
{
    \textbf{\sffamily Imaginaire :}
    \vspace{0.2cm}

    \begin{minipage}{0.9\textwidth}
}
{
    \end{minipage}
    \vspace{0.5cm}
}

\newenvironment{installation}
{
    \textbf{\sffamily Installation :}
    \vspace{0.2cm}

    \begin{minipage}{0.9\textwidth}
}
{
    \end{minipage}
    \vspace{0.5cm}
}

\newenvironment{moments-stop}
{
    \textbf{\sffamily Moments Unisson dans le jeu :}

Pour indiquer à tout le monde l’avancement du temps de jeu (signal : À DÉFINIR)

\begin{itemize}
\item{Pour indiquer à tout le monde l’avancement du temps de jeu.}
\item{A ¼ de la progression : DANSE : tout le monde chante le chant du rassemblement (Pré-refrain \& refrain).}
\item{A ½ de la progression : CHANT  : tout le monde danse la macarena pendant environ 30 secondes.}
\item{Goûter (une fois le moment STOP passé).}
\item{A ¾ de la progression : STATUE : tout le monde immobile pendant environ 30 secondes.}

\end{itemize}
}
{
    \vspace{0.5cm}
}

\AtBeginDocument {
\textbf{\sffamily Vous êtes responsable de votre jeu, de la sécurité et de l’amusement.}

\textbf{\sffamily Les jeunes ne peuvent pas commencer tant que toute l’équipe n’est pas présente.}

\vspace{0.5cm}
}

% En-tête et pied de page
\pagestyle{fancy}

\fancyhead{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\addtolength{\headheight}{52mm}
\addtolength{\textheight}{-52mm}

\addtolength{\footskip}{1cm}
\addtolength{\textheight}{-1cm}

\chead{
    \hspace*{1cm}
    \includegraphics[width=196mm]{\headerimage}
}
\rhead {
    \textsf{FICHE D'ANIMATION \\ {\color{\categoriecolor}\@title -- \@categorie}}
    \vspace*{1cm}
}
\lfoot {
    \hspace*{-1.5cm}
    \includegraphics[width=92mm]{images/lfooter.pdf}
}
\cfoot{
    \vspace{-1cm}
     \ifthenelse
      {\pageref{LastPage} > 1}
      {--\thepage / \pageref{LastPage}--}
      {}
     \ifthenelse
      {\@numero > 0}
      {\color{\categoriecolor}\no \@numero}
      {}
}
\rfoot
{
    \includegraphics[width=70mm]{images/essonne.pdf}
}

