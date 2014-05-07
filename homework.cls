% Class for formatting Homework
% Kevin Joyce 2011
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2011/02/10 Homework Class file by Kevin Joyce]
\LoadClassWithOptions{assessment}
\RequirePackage{etoolbox}


\renewcommand{\title}{\lhead } 
\newcommand{\course}{\chead }
\renewcommand{\docdate}{\rhead }

\newcommand{\makename}{Name:\underline{\hspace{8cm}}\par}

%%%%%%%%%%%%%%%% solution version 2 %%%%%%%%%%%%%%%%%%%%%
% Until I figure this out, I am leaving it alone
%
%\RequirePackage{comment}
%\AtBeginDocument{\excludecomment{solution}}
%% This sets the @showsolutions variable
%\newcommand{\showsolutions}[1]{
%  \newcommand{\@showsolutions}{#1} % set @showsolutions variable
%  \includecomment{solution}
%}
%
%\specialcomment{solution}
%  {
%      \par {\bf Solution: }{}
%      \begin{quote}
%      \setlength{\parindent}{2em}
%      \par\mbox{\,}
%  }
%  { 
%      \end{quote}\qed 
%      \setlength{\parindent}{0em}
%  }
%%%%%%%%%%%%%%%%%% solution version 1 %%%%%%%%%%%%%%%%%%%%%%%%
%% OLD implementation of solution... things where I reference
%% solution parts will break upon compilation... oh well
%% fix that bridge when you get there
\newenvironment{solution}[1][null]
  {
      \par \textbf{Solution: }
	\ifthenelse{\NOT\equal{#1}{null}}{to part #1 }{}
      \begin{quote}
      \setlength{\parindent}{2em}
      \par\mbox{\,}
  }
  { 
      \end{quote}\qed 
      \setlength{\parindent}{0em}
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{subproblems}
  { \begin{enumerate}[(a)] 
    \def\subprob{ \item }
  }
  { \end{enumerate} }

\newcounter{ppnum}
\newenvironment{problems}
  { \setcounter{ppnum}{0}
    \def\hproblem{
      \refstepcounter{ppnum}
      \par{\bf Problem \arabic{ppnum}.}
    }
    \def\hproblemsh{
      \vspace{2cm}
      \hproblem 
    }
  }
  {}
\newenvironment{aproblems}
  {\begin{problems}}
  {\end{problems}}

%\newcommand{\Hint}{ {\it Hint:} }
\newcommand{\pref}[1]{ {\bf Problem \ref{#1}}}

\renewcommand{\subproblem}[1] {  
  \nopagebreak[4]
  \stepcounter{spnum}
  \hangindent=1cm 
  \hangafter=0
  \textbf{(\alph{spnum})} {\ifdef{\@showsolutions}{\it}{} #1 \par }
}
\ProcessOptions\relax
