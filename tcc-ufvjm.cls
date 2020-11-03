%% TCC-UFVJM.CLS, v-1.0 luiz.aquino
%%
%%
%%   Licence: LPPL (LaTeX Project Public License)
%%     You can change this file in the terms of LPPL
%%     (http://www.latex-project.org/lppl.html)
%% 
%%   Licenca: LPPL (LaTeX Project Public License)
%%     Esta licenca diz basicamente que se voce editar o codigo desta
%%     classe, mesmo localmente (no seu micro), voce DEVE RENOMEAR o arquivo
%%     da classe!! Como sempre, nao eh dada nenhuma garantia.
%%     Para o texto completo da licenca, favor seguir o endereco
%%        http://www.latex-project.org/lppl.html
%%
%%   Classe para confecção de TCC de acordo com as normas exigidas 
%%   pela Universidade Federal dos Vales do Jequitinhonha e Mucuri, 
%%   através da Resolução no. 15 do CONSEPE, de 21 de Maio de 2010.
%%   Vide: http://www.ufvjm.edu.br/prograd/tcc.html.
%%
%%   Esta classe foi desenvolvida por Prof. Luiz Cláudio Mesquita de Aquino,
%%   Se você tiver críticas, sugestões ou correções, por favor entrar em contato
%%   no endereço contato@professoraquino.com.br.
%%   
%%   Esta classe foi obtida modificando a classe "monografia.cls" do Prof. Maxwell Mariano de Barros, 
%%   do DEMAT/UFMA (http://www.demat.ufma.br). Vide: http://www.demat.ufma.br/monografia.php.
%%
%%   Author (class): Luiz Cláudio Mesquita de Aquino.
%%        defining commands:
%%       \instituicao
%%       \sigla
%%       \instituicaoendereco
%%       \unidadeacademica
%%       \curso
%%       \cidade
%%       \ano
%%       \titulo
%%       \subtitulo
%%       \nomeautorum
%%       \sobrenomeautorum
%%       \emailautorum
%%       \nomeautordois
%%       \sobrenomeautordois
%%       \emailautordois
%%       \nomeautortres
%%       \sobrenomeautortres
%%       \emailautortres
%%       \nomeautorquatro
%%       \sobrenomeautorquatro
%%       \emailautorquatro
%%       \nomeautorcinco
%%       \sobrenomeautorcinco
%%       \emailautorcinco
%%       \nomeautorseis
%%       \sobrenomeautorseis
%%       \emailautorseis
%%       \orientador
%%       \ttorientador
%%       \instorientador
%%       \coorientador
%%       \ttcoorientador
%%       \instcoorientador
%%       \examinadorum
%%       \ttexaminadorum
%%       \instexaminadorum
%%       \examinadordois
%%       \ttexaminadordois
%%       \instexaminadordois
%%       \examinadortres
%%       \ttexaminadortres
%%       \instexaminadortres
%%       \examinadorquatro
%%       \ttexaminadorquatro
%%       \instexaminadorquatro
%%       \examinadorcinco
%%       \ttexaminadorcinco
%%       \instexaminadorcinco
%%       \CDU
%%       \areas
%%       \npaginas
%%       \errata
%%       \listadefiguras
%%       \listadetabelas
%%       \sumario
%%       \iniciarapendice
%%       \iniciaranexo
%%       \exibirautorizacao
%% 
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%% 
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tcc-ufvjm}
              [2001/04/21 v1.4e
 Standard LaTeX document class]

%%Sempre faz a indentação (o recuo) do primeiro parágrafo de um capítulo/seção.
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue
%%

%%Todas as tabelas e figuras com legenda do mesmo tamanho da fonte da nota de rodapé.
%%Ex.: Se o tamanho de fonte padrão do texto for 12pt, as legendas ficarão com aproximadamente 10pt de tamanho.
%%Obs.: * Nas listas de tabelas e figuras, aparece o rótulo "Tabela" e "Figura" antes da numeração.
%%      * Para mudar isso, troque o primeiro "fnum@#1" a seguir por "the#". Se fizer essa troca, 
%%        altere também o valor de 5em na linha com o comando "\l@figure{\@dottedtocline{1}{1.5em}{5em}}".
\long\def\@caption#1[#2]#3{\par\addcontentsline{\csname ext@#1\endcsname}{#1}{%
   \protect\numberline{\csname fnum@#1\endcsname}{\ignorespaces #2}}
   \begingroup \@parboxrestore \footnotesize\setstretch{1}
        \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
   \endgroup}

\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue

\newif\if@openright
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}

\newif\if@capitulomaiusculo
\@capitulomaiusculofalse
\DeclareOption{capitulomaiusculo}{\@capitulomaiusculotrue}

%%Configuração Padrão
%a4paper - (Tamanho do papel: A4)
%12pt - (Tamanho da fonte: 12pt)
%twoside - (Impressão frente e verso)
%onecolumn - (O corpo do texto tem apenas uma coluna)
%final - (Versão final. Para um rascunho, use a opção draft)
%openright - Todos os capítulos começam no anverso da folha (páginas ímpares). 
%            Se necessário, coloca uma página par em branco para forçar o 
%            começo do próximo capítulo em uma página ímpar.
\ExecuteOptions{a4paper,12pt,twoside,onecolumn,final,openright}

\ProcessOptions
\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{1.5}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

%%Novas Definições
\def\titulo#1{\gdef\@titulo{#1}}
\def\subtitulo#1{\gdef\@subtitulo{#1}\sb@ttrue} 
%
\def\nomeautorum#1{\gdef\@nomeautorum{#1}}
\def\sobrenomeautorum#1{\gdef\@sobrenomeautorum{#1}}
\def\@autorum{\@nomeautorum\ \@sobrenomeautorum}
\def\emailautorum#1{\gdef\@emailautorum{#1}}
%
\def\nomeautordois#1{\gdef\@nomeautordois{#1}\@exibirautordoistrue}
\def\sobrenomeautordois#1{\gdef\@sobrenomeautordois{#1}}
\def\@autordois{\@nomeautordois\ \@sobrenomeautordois}
\def\emailautordois#1{\gdef\@emailautordois{#1}}
%
\def\nomeautortres#1{\gdef\@nomeautortres{#1}\@exibirautortrestrue}
\def\sobrenomeautortres#1{\gdef\@sobrenomeautortres{#1}}
\def\@autortres{\@nomeautortres\ \@sobrenomeautortres}
\def\emailautortres#1{\gdef\@emailautortres{#1}}
%
\def\nomeautorquatro#1{\gdef\@nomeautorquatro{#1}\@exibirautorquatrotrue}
\def\sobrenomeautorquatro#1{\gdef\@sobrenomeautorquatro{#1}}
\def\@autorquatro{\@nomeautorquatro\ \@sobrenomeautorquatro}
\def\emailautorquatro#1{\gdef\@emailautorquatro{#1}}
%
\def\nomeautorcinco#1{\gdef\@nomeautorcinco{#1}\@exibirautorcincotrue}
\def\sobrenomeautorcinco#1{\gdef\@sobrenomeautorcinco{#1}}
\def\@autorcinco{\@nomeautorcinco\ \@sobrenomeautorcinco}
\def\emailautorcinco#1{\gdef\@emailautorcinco{#1}}
%
\def\nomeautorseis#1{\gdef\@nomeautorseis{#1}\@exibirautorseistrue}
\def\sobrenomeautorseis#1{\gdef\@sobrenomeautorseis{#1}}
\def\@autorseis{\@nomeautorseis\ \@sobrenomeautorseis}
\def\emailautorseis#1{\gdef\@emailautorseis{#1}}
%
\def\grau#1{\gdef\@grau{#1}}
\def\curso#1{\gdef\@curso{#1}}
\def\areas#1{\gdef\@areas{#1}}
\def\CDU#1{\gdef\@CDU{#1}\@exibirfichacattrue}
\def\npaginas#1{\gdef\@npaginas{#1}}
\def\ano#1{\gdef\@ano{#1}}
\def\cidade#1{\gdef\@cidade{#1}}
%
\def\orientador#1{\gdef\@orientador{#1}}
\def\instorientador#1{\gdef\@instorientador{#1}}
\def\ttorientador#1{\gdef\@ttorientador{#1}}
%
\def\ttcoorientador#1{\gdef\@ttcoorientador{#1}}
\def\coorientador#1{\gdef\@coorientador{#1}\@coorienttrue}
\def\instcoorientador#1{\gdef\@instcoorientador{#1}}
%
\def\examinadorum#1{\gdef\@examinadorum{#1}}
\def\ttexaminadorum#1{\gdef\@ttexaminadorum{#1}}
\def\instexaminadorum#1{\gdef\@instexaminadorum{#1}}
%
\def\examinadordois#1{\gdef\@examinadordois{#1}}
\def\ttexaminadordois#1{\gdef\@ttexaminadordois{#1}}
\def\instexaminadordois#1{\gdef\@instexaminadordois{#1}}
%
\def\examinadortres#1{\gdef\@examinadortres{#1}\@extrestrue}
\def\ttexaminadortres#1{\gdef\@ttexaminadortres{#1}}
\def\instexaminadortres#1{\gdef\@instexaminadortres{#1}}
%
\def\examinadorquatro#1{\gdef\@examinadorquatro{#1}\@exquatrotrue}
\def\ttexaminadorquatro#1{\gdef\@ttexaminadorquatro{#1}}
\def\instexaminadorquatro#1{\gdef\@instexaminadorquatro{#1}}
%
\def\examinadorcinco#1{\gdef\@examinadorcinco{#1}\@excincotrue}
\def\ttexaminadorcinco#1{\gdef\@ttexaminadorcinco{#1}}
\def\instexaminadorcinco#1{\gdef\@instexaminadorcinco{#1}}
%
\def\instituicao#1{\gdef\@instituicao{#1}}
\def\sigla#1{\gdef\@sigla{#1}}
\def\instituicaoendereco#1{\gdef\@instituicaoendereco{#1}}
\def\unidadeacademica#1{\gdef\@unidadeacademica{#1}}
\def\setcurso{Curso de \@curso}
\def\@assinatura#1#2#3{
    \rule{10.0cm}{0.1mm} \\
    {#1 #2 -- #3}\\
    \vfill
}

\def\exibirautorizacao{
\chapter*{AUTORIZA\c C\~AO}
\thispagestyle{empty}
Autorizo a reprodu\c c\~ao e/ou divulga\c c\~ao total ou parcial do presente trabalho, por
qualquer meio convencional ou eletr\^onico, desde que citada a fonte.
\par\par
\@cidade, \rule{0.8cm}{0.01cm} / \rule{0.8cm}{0.01cm} / \rule{1.6cm}{0.01cm}.
\par
\begin{center}
\rule{10.0cm}{0.1mm}\par
\@autorum\par
\@emailautorum\par
\if@exibirautordois
\rule{10.0cm}{0.1mm}\par
\@autordois\par
\@emailautordois\par
\fi
\if@exibirautortres
\rule{10.0cm}{0.1mm}\par
\@autortres\par
\@emailautortres\par
\fi
\if@exibirautorquatro
\rule{10.0cm}{0.1mm}\par
\@autorquatro\par
\@emailautorquatro\par
\fi
\if@exibirautorcinco
\rule{10.0cm}{0.1mm}\par
\@autorcinco\par
\@emailautorcinco\par
\fi
\if@exibirautorseis
\rule{10.0cm}{0.1mm}\par
\@autorseis\par
\@emailautorseis\par
\fi
\@instituicao\par
\@instituicaoendereco
\end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@exibirautordois    \@exibirautordoisfalse
\newif\if@exibirautortres    \@exibirautortresfalse
\newif\if@exibirautorquatro  \@exibirautorquatrofalse
\newif\if@exibirautorcinco   \@exibirautorcincofalse
\newif\if@exibirautorseis    \@exibirautorseisfalse
\newif\if@coorient           \@coorientfalse
\newif\if@extres             \@extresfalse
\newif\if@exquatro           \@exquatrofalse
\newif\if@excinco            \@excincofalse
\newif\if@exibirerrata       \@exibirerratafalse
\newif\if@exibirfichacat     \@exibirfichacatfalse
\newif\ifsb@t                \sb@tfalse
\newif\ifre@s                \re@sfalse
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\if@titlepage
  \newcommand\maketitle{
  %Criar capa.
  \@folhadecapa

  %Criar a folha de rosto.
  %A folha de rosto será contada como a primeira página, 
  %mas não será exibida sua numeração.
  \@folhaderosto

  %Exibir numeração em romano nas páginas. A Ficha Catalográfica deve ser contada como ii.
  \pagenumbering{roman}

  %Exibir ficha catalográfica, caso \CDU tenha sido usado.
  %Caso contrário, deixar uma página em branco depois da folha de rosto. Essa será a página ii.
  \if@exibirfichacat
     \@fichacatalografica
  \else
     \cleardoublepage
  \fi

  %Exibir Errata, caso \errata tenha sido usado.
  \if@exibirerrata
     \@folhadeerrata
  \fi

  %Criar ficha de aprovação.
  \@fichadeaprovacao

  %Fixar alguns parâmetros.
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   %Prevents figures from going at top of page.
      \@maketitle
    \fi
    \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
\parindent=1.25cm
\topmargin-0.5cm
\voffset-0.5cm
\footskip1cm
\oddsidemargin0.5cm
\evensidemargin0cm
\textwidth15cm 
\textheight23.7cm
\parskip5.8pt
\headsep.4cm
\marginparwidth 40pt \marginparsep 10pt
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \LARGE \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \LARGE \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\def\@capituloformato{\thechapter\space}

\def\@chapter[#1]#2{
                    \if@capitulomaiusculo
                       \def\@titulocurto{\MakeUppercase{#1}}
                       \def\@titulolongo{\MakeUppercase{#2}}
                    \else
                       \def\@titulocurto{#1}
                       \def\@titulolongo{#2}
                    \fi
                    \ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                    \fi
                    \addcontentsline{toc}{chapter}{\@capituloformato\@titulocurto}%
                    \chaptermark{\@titulocurto}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{\@titulolongo}]%
                    \else
                      \@makechapterhead{\@titulolongo}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
    {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \bfseries
        \@capituloformato
    \fi
    \bfseries #1\par\nobreak
  }}

%FAZER: colocar título em maíusculo quando @capitulomaiusculotrue. 
%       Substituir #1 por MakeUppercase{#1} não está funcionando. Descobrir porque.
\def\@schapter#1{
                 \if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}

\def\@makeschapterhead#1{%
  {\parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
   \begin{center}\bfseries  #1\par\nobreak\end{center}
  }}

%Fixar um espaço de carácter entre o número da (sub)seção e seu título.
\renewcommand*{\@seccntformat}[1]{\csname the#1\endcsname\space}

\newcommand\section{\@startsection{section}{1}{\z@}%
                                  {-\f@size pt}%\f@size pt = Tamanho atual da fonte.
                                  {\f@size pt}%
                                  {\normalfont\normalsize\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-\f@size pt}
                                     {\f@size pt}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                        {-\f@size pt}
                                        {\f@size pt}%
                                        {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                       {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi

\newenvironment{agradecimento}
{\chapter*{\MakeUppercase{Agradecimento}}}
{\clearpage}

\newenvironment{resumo}[1][resumo]
{\chapter*{\MakeUppercase{#1}}}
{\clearpage}

%Esse ambiente não coloca indentação nos parágrafos (comando \parindent\z@).
\newenvironment{abreviaturas}
{\chapter*{\MakeUppercase{Lista de Abreviaturas}}\parindent\z@}
{\clearpage}

%Esse ambiente não coloca indentação nos parágrafos (comando \parindent\z@).
\newenvironment{siglas}
{\chapter*{\MakeUppercase{Lista de Siglas}}\parindent\z@}
{\clearpage}

%Esse ambiente não coloca indentação nos parágrafos (comando \parindent\z@).
\newenvironment{simbolos}
{\chapter*{\MakeUppercase{Lista de S\'imbolos}}\parindent\z@}
{\clearpage}

%Esse ambiente não coloca indentação nos parágrafos (comando \parindent\z@).
\newenvironment{glossario}
{\chapter*{\MakeUppercase{Gloss\'ario}}\parindent\z@
\addcontentsline{toc}{chapter}{\MakeUppercase{Gloss\'ario}}}
{\clearpage}

\newenvironment{epigrafe}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   .0em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \setlength{\leftmargin}{4cm}
                        \advance\leftmargin 9.0em}%
                \item\relax\vfil\null\vfill}
               {\endlist\newpage}

\newenvironment{dedicatoria}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   .0em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \setlength{\leftmargin}{3cm}
                        \advance\leftmargin 9.0em}%
                \clearpage
                \item\relax\vfil\null\vfill}
               {\endlist\newpage}

\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}

\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\providecommand{\setstretch}[1]{\def\baselinestretch{#1}\@currsize}

\newenvironment{citacao}
  {\begin{flushright}\begin{minipage}{12cm}\footnotesize\setstretch{1}}
  {\end{minipage}\end{flushright}}

\newenvironment{comentario}
  {\begin{flushright}\begin{minipage}{8cm}\setstretch{1}}
  {\end{minipage}\end{flushright}}

\if@compatibility
\newenvironment{titlepage}
    {
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}
      \setcounter{page}\z@
    }
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}
      \setcounter{page}\@ne
    }
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi

\newcommand\iniciarapendice{
  \setcounter{chapter}{0}
  \setcounter{section}{0}
  \def\@capituloformato{AP\^ENDICE\space\thechapter\space --\space}
  \gdef\@chapapp{\appendixname}
  \gdef\thechapter{\@Alph\c@chapter}}

\newcommand\iniciaranexo{
  \setcounter{chapter}{0}
  \setcounter{section}{0}
  \def\@capituloformato{ANEXO\space\thechapter\space --\space}
  \gdef\@chapapp{Anexo}
  \gdef\thechapter{\@Alph\c@chapter}}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}

\newcommand\annex{\par
  \setcounter{chapter}{0}
  \setcounter{section}{0}
  \gdef\@chapapp{\appendixname}
  \gdef\thechapter{\@Roman\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}

\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

\newlength\abovecaptionskip
\newlength\belowcaptionskip
%%Fixar um espaço maior entre o corpo da tabela e a sua legenda,
%%que deve ficar na parte superior da mesma.
\setlength\abovecaptionskip{0\p@}
\setlength\belowcaptionskip{10\p@}

\long\def\@makecaption#1#2{
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}

\newcommand\tableofcontents{
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\titulosumario
        \@mkboth{\titulosumario}{\titulosumario}}

    \@starttoc{toc}
    \if@restonecol\twocolumn\fi

    %Forçar que o primeiro capítulo comece como página 1.
    \cleardoublepage

    %Depois do Sumário, exibir em algarismos arábicos a numeração das páginas.
    \pagenumbering{arabic}
    }

\newcommand*\l@part[2]{
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}
    \addvspace{2.25em \@plus\p@}
    \setlength\@tempdima{3em}
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
  \fi}

%%Formato do comando \@dottedtocline:
%%\@dottedtocline{<nível>}{<indentação>}{<largura do número>}{<título>}{<página>}

\newcommand*\l@chapter[2]{\setstretch{1.241}\@dottedtocline{1}{0.0cm}{2.0em}{\textbf{#1}}{#2}}
\newcommand*\l@section{\setstretch{1}\@dottedtocline{1}{0.5cm}{2.0em}}
\newcommand*\l@subsection{\setstretch{1}\@dottedtocline{2}{1.0cm}{2.9em}}
\newcommand*\l@subsubsection{\setstretch{1}\@dottedtocline{3}{1.5cm}{4.0em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{2.0cm}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{2.5cm}{6em}}

\newcommand\listoffigures{
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listadefigurastitulo}
      %%Para exibir a Lista de Figuras no Sumário, retire o comentário da linha abaixo.
      %\addcontentsline{toc}{chapter}{\listadefigurastitulo}
      \@mkboth{\listadefigurastitulo}{\listadefigurastitulo}
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{5em}}

\newcommand\listoftables{
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listadetabelastitulo}
    %%Para exibir a Lista de Tabelas no Sumário, retire o comentário da linha abaixo.
    %\addcontentsline{toc}{chapter}{\listadetabelastitulo}
      \@mkboth{\listadetabelastitulo}{\listadetabelastitulo}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    }

\let\sumario\tableofcontents
\let\listadefiguras\listoffigures
\let\listadetabelas\listoftables

\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\chapter*{\referenciatitulo}
      \addcontentsline{toc}{chapter}{\referenciatitulo}
      \@mkboth{\referenciatitulo}{\referenciatitulo}
      \list{\@biblabel{\@arabic\c@enumiv}}
           {\settowidth\labelwidth{\@biblabel{#1}}
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty

\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indicetitulo}]
                \@mkboth{\MakeUppercase\indicetitulo}
                        {\MakeUppercase\indicetitulo}
                \addcontentsline{toc}{chapter}{\indicetitulo}
                \parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{0.5cm}}
\newcommand\subsubitem{\@idxitem \hspace*{1.0cm}}
\newcommand\indexspace{\par}

%%Fixar linha (filete) com 3cm para separar o texto da nota de rodapé.
\renewcommand\footnoterule{
  \kern-3\p@
  \hrule width 3cm height 0.4\p@
  \kern2.6\p@}

\@addtoreset{footnote}{chapter}

\newcommand\@makefntext[1]{
    \parindent 1em
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}

%\titulosumario será usado no lugar de \contentsname, pois ao usar o pacote babel o valor de 
%\contentsname seria reescrito.
\newcommand\titulosumario{SUM\'ARIO}

%\listadefigurastitulo será usado no lugar de \listfigurename, pois ao usar o pacote babel 
%o valor de \listfigurename seria reescrito.
\newcommand\listadefigurastitulo{LISTA DE FIGURAS}

%\listadetabelastitulo será usado no lugar de \listtablename, pois ao usar o pacote babel 
%o valor de \listtablename seria reescrito.
\newcommand\listadetabelastitulo{LISTA DE TABELAS}

%\referenciatitulo será usado no lugar de \bibname, pois ao usar o pacote babel 
%o valor de \bibname seria reescrito.
\newcommand\referenciatitulo{REFER\^ENCIAS}

%\indicetitulo será usado no lugar de \indexname, pois ao usar o pacote babel 
%o valor de \indexname seria reescrito.
\newcommand\indicetitulo{\'INDICE}

\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\annexname{Annex}
\newcommand\abstractname{Abstract}
\newcommand\resumoname{Resumo}
\newcommand\resumename{R\'{e}sum\'{e}}
\newcommand\summaryname{Abstract}
\newcommand\orientname{Orientador}
\newcommand\epigrafename{}

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi

  %%O padrão de estilo para todas as páginas será "plain".
  \AtBeginDocument{\pagestyle{plain}}

  %%Redefinir o estilo de página "plain"
  \renewcommand{\ps@plain}{
    \renewcommand{\@oddhead}{}
    \renewcommand{\@evenhead}{}

    %%Número da página tem fonte com tamanho de aproximadamente 10 pt
    %%quando o texto padrão tiver 12 pt.
    \renewcommand{\@oddfoot}{\normalfont\footnotesize\hfil\thepage\hfil}
    \renewcommand{\@evenfoot}{\@oddfoot}
    %Para \chapter* mostrar o cabecalho
    \let\@mkboth\markboth%
    %Definindo a maneira como o comando o \chapter marca o cabecalho
    \renewcommand{\chaptermark}[1]{
      \markboth
         {\ifnum \c@secnumdepth >\m@ne
              \thechapter\ \ 
          \fi
          ##1}
         {\ifnum \c@secnumdepth >\m@ne
              \thechapter\ \ 
          \fi
          ##1}
    }
    \renewcommand{\sectionmark}[1]{
      \markright{
        \ifnum \c@secnumdepth >\z@
          \thesection\ 
        \fi
        ##1}
    }
  } 

%%Fixar espaço simples entre linhas para as notas de rodapé.
\let\footnoteoriginal\footnote
\renewcommand{\footnote}[1]{{\setstretch{1}\footnoteoriginal{#1}}}

\newcommand*\@folhadecapa{
  \clearpage
  \thispagestyle{empty}
  \lineskip .0em
  \begin{center}
  \begin{tabular}{c}
  {\expandafter\MakeUppercase\expandafter{\@instituicao}}\\
  {\expandafter\MakeUppercase\expandafter{\@unidadeacademica}}\\
  {\expandafter\MakeUppercase\expandafter{\setcurso}}
  \hfill  
  \end{tabular}      
  \end{center}
  \vfill
  \begin{center}
  \ifsb@t 
     {\expandafter\MakeUppercase\expandafter{\textbf{\@titulo}}\ }{\@subtitulo}
    \else
     {\expandafter\MakeUppercase\expandafter{\textbf{\@titulo}}}
  \fi
     \vfill
     \begin{flushright}
        \textbf{\@autorum}\par
        \if@exibirautordois\textbf{\@autordois}\par\fi
        \if@exibirautortres\textbf{\@autortres}\par\fi
        \if@exibirautorquatro\textbf{\@autorquatro}\par\fi
        \if@exibirautorcinco\textbf{\@autorcinco}\par\fi
        \if@exibirautorseis\textbf{\@autorseis}\par\fi
     \end{flushright}
    \vfill
    \@cidade\par\@ano
  \end{center}
}

\newcommand*\@folhaderosto{
    \clearpage
    \thispagestyle{empty}
    \begin{center}
    {\expandafter\MakeUppercase\expandafter{\@instituicao}}\\
    {\expandafter\MakeUppercase\expandafter{\@unidadeacademica}}\\
  \vfill
  \ifsb@t 
    {\expandafter\MakeUppercase\expandafter{\textbf{\@titulo}}\ }
    {\@subtitulo}
   \else
    {\expandafter\MakeUppercase\expandafter{\textbf{\@titulo}}}
  \fi
  \end{center}
  \vfill
  \begin{flushright}
    \textbf{\@autorum}\par
    \if@exibirautordois\textbf{\@autordois}\par\fi
    \if@exibirautortres\textbf{\@autortres}\par\fi
    \if@exibirautorquatro\textbf{\@autorquatro}\par\fi
    \if@exibirautorcinco\textbf{\@autorcinco}\par\fi
    \if@exibirautorseis\textbf{\@autorseis}\par\fi
     Orientador(a):\par
     \textbf{\@orientador}\par
     \if@coorient
           Co-orientador(a):\par
           \textbf{\@coorientador}\par
     \fi
  \end{flushright}
  \vfill
  \begin{comentario}
      Trabalho de Conclus\~ao de Curso apresentado ao Curso
      de \@curso, como parte dos requisitos
      exigidos para a conclus\~ao do curso.
  \end{comentario}
 \vfill
 \begin{center}
  \@cidade\par\@ano
 \end{center}
}

\newcommand{\errata}[1]{
 \@exibirerratatrue
 \def\@folhadeerrata{ 
   \clearpage
   \chapter*{\MakeUppercase{Errata}} #1
 } 
}

\newcommand*\@fichacatalografica{
 \clearpage
 \setstretch{1}%Espaço simples entre linhas.
 \vfil\null
 \lineskip .0em
 \vfill
 \fbox{
   \begin{tabular}{p{12.0cm}}
       \@sobrenomeautorum, \@nomeautorum\if@exibirautordois; \@sobrenomeautordois, \@nomeautordois\fi
       \if@exibirautordois ; \@sobrenomeautortres, \@nomeautortres\fi
       \if@exibirautordois ; \@sobrenomeautorquatro, \@nomeautorquatro\fi
       \if@exibirautordois ; \@sobrenomeautorcinco, \@nomeautorcinco\fi
       \if@exibirautordois ; \@sobrenomeautorseis, \@nomeautorseis\fi . \\
       \@titulo\ \ifsb@t \@subtitulo\ \fi / 
       \@autorum\if@exibirautordois ; \@autordois\fi
       \if@exibirautortres ; \@autortres\fi
       \if@exibirautorquatro ; \@autorquatro\fi
       \if@exibirautorcinco ; \@autorcinco\fi
       \if@exibirautorseis ; \@autorseis\fi
       \ - \@ano .\\
       \@npaginas .p                \\
                                     \\
       \@areas\ I. T\'itulo. \\
       \hfill CDU \@CDU
    \end{tabular}}
   \setstretch{1.241}%Espaço de 1,5 entre linhas.
}

\newcommand*\@fichadeaprovacao{
  \clearpage
  \lineskip .0em
    \begin{center}
    \ifsb@t 
     {\bfseries\expandafter\MakeUppercase\expandafter{\@titulo}\ }
     {\@subtitulo}
    \else
     {\expandafter\MakeUppercase\expandafter{\@titulo}}
   \fi 
  \vfill
        \textbf{\@autorum}\par
        \if@exibirautordois\textbf{\@autordois}\par\fi
        \if@exibirautortres\textbf{\@autortres}\par\fi
        \if@exibirautorquatro\textbf{\@autorquatro}\par\fi
        \if@exibirautorcinco\textbf{\@autorcinco}\par\fi
        \if@exibirautorseis\textbf{\@autorseis}\par\fi
     Orientador(a):\\
     {\bfseries  \@orientador \par}
     \if@coorient
           Co-orientador(a):\\
           {\bfseries  \@coorientador \par}
      \fi
  \vfill
  \end{center}
  \begin{comentario}
      Trabalho de Conclus\~ao de Curso apresentado ao Curso
      de \@curso, como parte dos requisitos
      exigidos para a conclus\~ao do curso.
  \end{comentario}
  \vfill
  \begin{flushright}
   APROVADO em \rule{0.8cm}{0.01cm} / \rule{0.8cm}{0.01cm} / \rule{1.6cm}{0.01cm}.
  \end{flushright}
 \vfill
 \begin{center}
    \@assinatura{\@ttexaminadorum}{\@examinadorum}{\@instexaminadorum}
    \@assinatura{\@ttexaminadordois}{\@examinadordois}{\@instexaminadordois}
    \if@extres \@assinatura{\@ttexaminadortres}{\@examinadortres}{\@instexaminadortres} \fi
    \if@exquatro \@assinatura{\@ttexaminadorquatro}{\@examinadorquatro}{\@instexaminadorquatro} \fi
    \if@excinco \@assinatura{\@ttexaminadorcinco}{\@examinadorcinco}{\@instexaminadorcinco} \fi
    \@assinatura{\@ttorientador}{\@orientador}{\@instorientador}
 \end{center}
}

\endinput
%%
%% End of file `tcc-ufvjm'.