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
\RequirePackage{arydshln}
\setmainfont[Ligatures=TeX]{Lato}
\setsansfont[Ligatures=TeX]{Montserrat}

% commandes personnelles

\newcommand{\langue}{\emph} % mots en langues étrangères
\newcommand{\citital}{\emph} % citation en italique
\newcommand{\nomprog}{\texttt} % nom de programme en police teletype
\newcommand{\titre}[1]{ \title{#1} }
\newcommand{\categorie}[1]{ \def \@categorie{#1} }

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

\newenvironment{moments-stop}
{
    \textbf{\sffamily Moments STOP dans le jeu :}

Pour indiquer à tout le monde l’avancement du temps de jeu (signal : À DÉFINIR)

\begin{itemize}
    \item{À ¼ de progression : STATUE, tous immobiles pendant 30 secondes.}
    \item{À ½ de progression : CHANT, tous chantent le chant du rassemblement (refrain et pré-refrain)}
    \item{À ¾ de progression : DANSE, tous dansent la macarena pendant 30 secondes.}
    \item{Goûter}
\end{itemize}
}
{
    \vspace{0.5cm}
}

\AtEndDocument {
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
    \includegraphics[width=196mm]{images/header.pdf}
}
\rhead {
    \textsf{FICHE D'ANIMATION \\ \@title -- \@categorie }
    \vspace*{1cm}
}
\lfoot {
    \hspace*{-1.5cm}
    \includegraphics[width=92mm]{images/lfooter.pdf}
}
\cfoot{
    \vspace{-1cm}
    --\thepage--
}
\rfoot
{
    \includegraphics[width=70mm]{images/essonne.pdf}
}
