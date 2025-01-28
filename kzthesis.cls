% -----------------------------------------------------------------------------
% kzthesis.cls  v 1.1.3
%
% 機能 pLaTeX2e class file for master's & graduation thesis in Kawamura
%   & Kanaoka lab.
%
% 履歴 2002.12.09 v100 作成．
%   2003.01.10 v110 参考文献が目次の項目に入るようにした．
%   2003.02.11 v111 用紙の横方向のマージンを片面印刷用に変更．
%   2003.03.28 v112 細部の修正．
%   2008.01.13 v113 細部の修正．bm package の導入など．
%
%                           Created by Dr. Katsuya KANAOKA, Ritsumeikan Univ.
%                    Copyright (c) 2008 MMSE Laboratory. All rights reserved.
% -----------------------------------------------------------------------------


\ProvidesClass{kzthesis}[2008/01/13 v113]  % クラス名の記述

%
% load a class and packages
%
\NeedsTeXFormat{pLaTeX2e}      % フォーマットファイルの指定（日本語を使用する）
\LoadClass[12pt,a4paper]{jbook}     % 本クラスファイルは jbook をもとにする

%\RequirePackage[dvipdfm]{graphicx}    % グラフィック (PDF)
\RequirePackage[dvips]{graphicx}    % グラフィック (PostScript)
\RequirePackageWithOptions{amssymb}
\RequirePackageWithOptions{amsmath}
\RequirePackageWithOptions{amsfonts}
\RequirePackageWithOptions{bm}     % for bold math
\RequirePackageWithOptions{array}
% \RequirePackageWithOptions{graphicx}
% \RequirePackageWithOptions{caption}
% \RequirePackageWithOptions{tikz}
% \RequirePackageWithOptions{pgfplots} 
% \pgfplotsset{compat=1.18}
%
% define original commands
%
\newcommand{\atan}{\mathop{\textrm{atan}}\nolimits}
\newcommand{\diag}{\mathop{\textrm{diag}}\nolimits}
\newcommand{\rank}{\mathop{\textrm{rank}}\nolimits}

\newcommand{\mi}[1]{\mathit{#1}}    % 数式添字用イタリック

\newcommand{\Eq}[1]{(\ref{eq:#1})}
\newcommand{\Fig}[1]{図~\ref{fig:#1}}   % この日本語化は要確認
\newcommand{\FIG}[1]{\textbf{図~\ref{fig:#1}}}
\newcommand{\Table}[1]{表~\ref{table:#1}}
\newcommand{\TABLE}[1]{\textbf{表~\ref{table:#1}}}
\newcommand{\Cite}[1]{\cite{bib:#1}}
\newcommand{\etal}{\textit{et al.}}    % et の後にピリオドはつけない

%
% page layout parameters
%
\setlength{\voffset}{-1.0in}   % 基準点を用紙左上隅にする
\setlength{\hoffset}{-1.0in}

%\addtolength{\voffset}{1.0mm}   % 出力時の補正値（縦方向）
%\addtolength{\hoffset}{1.0mm}   % 出力時の補正値（横方向）

\setlength{\topmargin}{10mm}
\setlength{\headheight}{5mm}
\setlength{\headsep}{10mm}
\setlength{\textheight}{247mm}
\setlength{\footskip}{15mm}

\setlength{\oddsidemargin}{35mm}
\setlength{\evensidemargin}{35mm}  % 片面印刷の場合 35mm 両面印刷の場合 25mm にする
\setlength{\textwidth}{150mm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparwidth}{0mm}

\pagestyle{plain}      % 柱文言指定
\flushbottom       % ページの長さを一定にする

%
% paragraph parameters
%
\setlength{\parindent}{1zw}    % 段落先頭の字下げ幅（漢字一文字分）

%
% float parameters
%
\setcounter{topnumber}{2}    % 頁の上部に入れることのできるフロート数の最大値
\setcounter{bottomnumber}{2}   % 頁の下部に入れることのできるフロート数の最大値
\setcounter{totalnumber}{4}    % 頁に出力することのできるすべてのフロートの最大値
\renewcommand\topfraction{0.9}   % 頁の上 9 割までフロートで占めて可
\renewcommand\bottomfraction{0.9}  % 頁の下 9 割までフロートで占めて可
\renewcommand\textfraction{0.1}   % 頁に最低必要な本文の割合
\renewcommand\floatpagefraction{0.5} % フロートだけの頁に最低必要なフロートの割合

%
% define maketitle
%
\newcommand{\makeMtitle}{%
 \begin{titlepage}%
  \null\vfil
  \begin{center}%
   \lineskip 1.6zh
   {\LARGE 2011年度 修士論文\par}%
   \vskip  5zh%
   {\Large \@date \par}%
   \vskip 10zh%
   {\LARGE \@title \par}%
   \vskip 10zh%
   {\Large 主査 \\ 立命館大学 理工学部　教授　馬　書根\par}%
   \vskip 2zh%
   \vskip 10zh%
   {\LARGE 立命館大学大学院 理工学研究科 \\ \@author \par}%
  \end{center}\par
  \vfil\null
 \end{titlepage}%
}
\newcommand{\makeBtitle}{%
 \begin{titlepage}%
  \null\vfil
  \begin{center}%
   \lineskip 1.6zh
%   {\LARGE \@date 年度卒業論文\par}%
   {\LARGE 2011年度 卒業論文\par}%
   \vskip 10zh%
   {\LARGE \@title \par}%
   \vskip 10zh%
   {\Large 指導教員 \\ 立命館大学 理工学部　教授　馬　書根\par}%
   \vskip 10zh%
   {\LARGE 立命館大学 理工学部 \\ \@author \par}%
  \end{center}\par
  \vfil\null
 \end{titlepage}%
}

%
% change titles
%
\renewcommand{\prepartname}{第\hspace{0.25zw}}
\renewcommand{\postpartname}{\hspace{0.25zw}部}
\renewcommand{\prechaptername}{第\hspace{0.25zw}}
\renewcommand{\postchaptername}{\hspace{0.25zw}章}
\renewcommand{\contentsname}{目次}
\renewcommand{\figurename}{図}
\renewcommand{\tablename}{表}
\renewcommand{\bibname}{参考文献}
\renewcommand{\appendixname}{付録}

%
% bibliography settings
%
\renewenvironment{thebibliography}[1]{%
 \chapter*{\bibname
  \addcontentsline{toc}{chapter}{\bibname}%   文献を目次に加えるために追加 (2003.01.10)
  \@mkboth{\bibname}{\bibname}}%
  \list{\@biblabel{\@arabic\c@enumiv}}%
   {\settowidth\labelwidth{\@biblabel{#1}}%
   \leftmargin\labelwidth
   \advance\leftmargin\labelsep
   \@openbib@code
   \usecounter{enumiv}%
   \let\p@enumiv\@empty
   \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty\clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
 {\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}\endlist}


% -----------------------------------------------------------------------------
% end of kzthesis.h
% -----------------------------------------------------------------------------
