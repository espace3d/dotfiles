# /etc/zsh/zshrc: system-wide .zshrc file for zsh(1).
#
# This file is sourced only for interactive shells. It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#
# Global Order: zshenv, zprofile, zshrc, zlogin

#DEPENDANCES NECESSAIRES :
# sudo apt-get install -y autojump pdftk imagemagick msmtp unrar mplayer

#CHARGEMENT DE AUTOJUMP
. /usr/share/autojump/autojump.sh

#COMPLETION
autoload -U bashcompinit
bashcompinit
autoload -U compinit
compinit

#AMELIORATION COMPLETION
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BDésolé, pas de résultats pour : %d%b'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

#Pour éviter de proposer un élément déjà présent lors d'un cp, mv ou rm : 
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:mv:*' ignore-line yes
zstyle ':completion:*:cp:*' ignore-line yes

#Sur Ubuntu, on utilise souvent sudo, donc il peut être intéressant d'avoir la complétion lorsque la #commande n'est pas dans votre $PATH
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
			     /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

#COMPLETION SOUS BASH
autoload -U bashcompinit
bashcompinit

#PROMPT
autoload -U colors && colors
autoload -U promptinit
setopt PROMPT_CR
setopt PROMPT_SP
promptinit
export PS1="CHEMIN:  %d   %F{blue}DATE:  %D{%a %d %b  %H:%M:%S}       
-->%f  %F{white}%f"


#prompt suse

#HISTORY
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt appendhistory auto_cd auto_pushd nomatch notify correct
#IGNORER COMMANDES DOUBLONS
setopt hist_ignore_all_dups
#IGNORER COMMANDES PRECEDES D'UN ESPACE
setopt hist_ignore_space

#CD AUTO
setopt autocd

#CORRECTION
setopt correctall

#VARIABLES ZSH
setopt nocaseglob
setopt extendedglob

#SUPPORT DES MIMES
autoload -U zsh-mime-setup
autoload -U zsh-mime-handler
zsh-mime-setup

#SUPER FONCTION INTERNES
autoload -U zfinit
zfinit
#zcalc : une calculatrice (plus besoin de bc ou autres expr)
#zargs : un super xargs
#zmv : une commande permettant de faire du renommage/déplaçage en masse de fichiers. 
#zftp : un client ftp natif

# CASE-INSENSITIVE (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## case-insensitive (all) completion
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
## case-insensitive,partial-word and then substring completion
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#EXPORT ZSHRC >
alias zshdropbox='cp $HOME/.zshrc $HOME/Dropbox/dotfiles/'
#IMPORT ZSHRC 

alias dropboxzsh='cp $HOME/Dropbox/dotfiles/.zshrc $HOME/'
#COPY TO DROPBOX
alias copytodropbox='cp $HOME/.zshrc $HOME/Dropbox/dotfiles/ && cp -R $HOME/.config/nvim/ $HOME/Dropbox/dotfiles/ && cp -R $HOME/.config/awesome/ $HOME/Dropbox/dotfiles/ && cp .vim/plugged/vim-snippets/snippets/javascript/javascript-phaser.snippets ~/Dropbox/dotfiles/vim-snippets/snippets/javascript/'
alias dropboxtosyst='sudo cp -R $HOME/Dropbox/dotfiles/nvim $HOME/.config/ && cp -R $HOME/Dropbox/dotfiles/awesome $HOME/.config/ && cp ~/Dropbox/dotfiles/.zshrc $HOME/ && cp ~/Dropbox/dotfiles/nvim/snippets/javascript-phaser.snippets ~/.vim/plugged/vim-snippets/snippets/javascript/'


#CODAGE
alias origin='cd ~/Bureau/ && cp ~/Dropbox/index.html . && cp ~/Dropbox/index.js . && cp ~/Dropbox/bubblexxx.github.io/src/util.js &&  cp ~/Dropbox/phaser.min.js . & gnome-terminal -x vim index.js & gnome-terminal -x firefox index.html 2>/dev/null'

#EDITER INIT.VIM - NVIM
alias vic='nvim ~/.config/nvim/init.vim'


#ALIAS GAMES ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	alias delco='extract result.zip && rm result.zip && rm android-armv7-release-unsigned.apk android-x86-debug.apk android-x86-release-unsigned.apk'
alias se='cd ~/Dropbox/bubblexxx.github.io/ && sudo python -m SimpleHTTPServer' 
alias ht='cd ~/Dropbox/bubblexxx.github.io/ & chromium-browser "127.0.0.1:8000" & gvim ~/Dropbox/bubblexxx.github.io/src/main.js & firefox "www.youtube.com"'
alias ga='browser-sync start --server --files "*/*.*" & firefox "https://developer.mozilla.org/fr/docs/Web/JavaScript" & chromium-browser "https://www.youtube.com" & code .' 
alias vip='vim -p *'
alias pi=' cd ~/Dropbox/states/src/ && gnome-terminal -x vim -p ~/Dropbox/states/src/* & cd ~/Dropbox/"js liens" && grep "^URL=" *.url | cut -d= -f2 | xargs firefox &' 

cot() {cd ~/Dropbox/$* &&  browser-sync start --server --files "src/*.js" & firefox "https://developer.mozilla.org/fr/docs/Web/JavaScript" & firefox "https://www.youtube.com" & cd Dropbox/$*/src/ & gnome-terminal -x nvim -p ~/Dropbox/$*/src/*.js}




#ALIAS MAISON ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
alias sound='amixer -D pulse sset Master 5%+'
alias dec='pkill awesome'
alias fact='libreoffice $HOME/Dropbox/fact/FACTURIERBERTRAND.xls'
alias k='killall'
alias lt='ls -c --color=auto -l -t -h --reverse'
alias ca='cd .. && ls'
alias rr='rm -r'
alias an='firefox "192.168.1.3:8888"'
alias infopaquet='dpkg -L'
alias zi='sudo apt-get install -y'
alias pu='sudo apt-get remove --purge'
alias ge='sudo gedit'
alias cx='sudo chmod +x'
alias up='sudo apt-get update'
alias upg='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoclean'
alias list='sudo gedit /etc/apt/sources.list'
alias config='cd && nvim .zshrc'
alias applyconfig='source ~/.zshrc'
alias dor='sudo shutdown -P now'
alias reboot='sudo reboot'
alias fx='firefox &'

#alias ht='cd ~/Dropbox/bubblexxx.github.io/ && browser-sync start --server --files "*.html, src/*.js, assets/*" & cd ~/Dropbox/bubblexxx.github.io/src/ && gvim main.js & firefox "www.youtube.com"'

#alias pir='sudo python -m SimpleHTTPServer 80'
alias rs='shred -n 35 -z -u'
alias trouve="find . -iname" 
alias na='nautilus . --no-desktop &'
alias to='mplayer $HOME/Dropbox/SCRIPT/voice-system-activated.wav 2>/dev/null'
alias rpdfplus='for i in **/*.(pdf|PDF) ; do rpdf "$i" ; done'
alias convertplus='for i in **/*.(png|PNG) ; do convert "$i" "${i/.???/.jpg}" ; done'

#ALIAS OUVERTURE PAR DEFAUT 
alias -s doc="libreoffice"
alias -s pdf="evince"


alias corona='env WINEPREFIX="/home/syst/.wine" wine C:\\Program\ Files\ \(x86\)\\Corona\ Labs\\Corona\ SDK\\Corona\ Simulator.exe'

alias co='env WINEPREFIX="/home/syst/.wine" wine C:\\Program\ Files\ \(x86\)\\Corona\ Labs\\Corona\ SDK\\Corona\ Simulator.exe & sublime-text & firefox "http://wxlua.developpez.com/tutoriels/lua/general/cours-complet/" "http://docs.coronalabs.com/api/index.html" "http://forums.coronalabs.com/" "https://translate.google.com/" "http://youtube.com" "http://pixelartor.com/" & nautilus ~/Dropbox'

#ALIAS EXEMPLE DE SCRIPT
alias fos='cat $HOME/Dropbox/SCRIPT/exempledecode'
#alias code='gedit $HOME/Dropbox/SCRIPT/exempledecode & firefox "http://abs.traduc.org/abs-5.0-fr/ch03.html" &'

#ALIAS RETEXT
alias re='retext && libreoffice ~/Documents/*.html && rm ~/Documents/*.html'

#ALIAS RADIO
alias pure='wget http://www.static.rtbf.be/radio/purefm/m3u/pure_128k.m3u && mplayer pure_128k.m3u'
alias mint='firefox http://mint.radio.fr/broadcast_info.jsf &'

#ALIAS MAISON
alias cli='/media/$USER/echange/clients'

#ALIAS RESEAU
alias hor='libreoffice /home/$USER/Dropbox/fact/FACTURIERBERTRAND.xls'
alias listing='firefox /run/user/1000/gvfs/smb-share:server=192.168.1.200,share=data/"canevas archicad"/"LE3.0 NE JAMAIS DEPLACER"/list.html'
alias cl='cd /media/data/Clients && ls -l -t -h --reverse'
alias res='cd /media/data && ls -l -t -h --reverse || /run/user/1000/gvfs/smb-share:server=192.168.1.200,share=data && ls'

canevas() {mkdir /home/$USER/.gvfs/"data sur 192.168.1.200"/Clients/$1 && cp -R /home/$USER/.gvfs/"data sur 192.168.1.200"/Clients/"ACANEVAS CLIENT"/* /home/$USER/.gvfs/"data sur 192.168.1.200"/Clients/$1 && mplayer $HOME/Dropbox/SCRIPT/voice-system-activated.wav 2>/dev/null} 

#FONCTIONS INTERNET
y() {firefox "http://www.youtube.com/results?search_type=&search_query=$*&aq=f" 2>/dev/null &} 
Y() {firefox "http://www.youtube.com/results?search_type=&search_query=$*&aq=f" 2>/dev/null &} 
p() {firefox "http://maps.google.com?q=$*" 2>/dev/null &} 
P() {firefox "http://maps.google.com?q=$*" 2>/dev/null &} 
i() {firefox "http://images.google.be/images?q=$*" 2>/dev/null &}
I() {firefox "http://images.google.be/images?q=$*" 2>/dev/null &}
g() {firefox "http://www.$1" 2>/dev/null &}
G() {firefox "http://www.$1" 2>/dev/null &}
u() {firefox "http://www.google.fr/search?hl=fr&q=$*+site%3Adoc.ubuntu-fr.org" 2>/dev/null &}
U() {firefox "http://www.google.fr/search?hl=fr&q=$*+site%3Adoc.ubuntu-fr.org" 2>/dev/null &}
f() {firefox "http://www.google.fr/search?q=$*+site%3Aforum.ubuntu-fr.org" 2>/dev/null &}
F() {firefox "http://www.google.fr/search?q=$*+site%3Aforum.ubuntu-fr.org" 2>/dev/null &}
r() {firefox "http://www.google.fr/search?q=$*" 2>/dev/null &}
R() {firefox "http://www.google.fr/search?q=$*" 2>/dev/null &}

#FONCTIONS MAIL
me() {echo "$*" | msmtp espace3d@gmail.com}
ma() {echo "$*" | msmtp cathlaurent@hotmail.com}
meric() {echo "$*" | msmtp meric.hzl@gmail.com}
lurquin() {echo "$*" | msmtp architectelurquin@gmail.com}

#FONCTIONS ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
s() {sleep "$1"m && mplayer $HOME/Dropbox/SCRIPT/voice-system-activated.wav 2>/dev/null}
c() {cd "$*" && lt} 
mk() {mkdir "$1" && cd "$1"}



#FONCTIONS COMPLEXES ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
#CREE UN DOSSIER ET COPIE DES FICHIERS DEDANS > USAGE : mkp pathdossier fichier(s)
mkp()
{
mon_dir="$1"; shift
mkdir -p "$mon_dir" && cp "$@" "$mon_dir"
}

#REGROUPE LES PDF DANS UN SEUL FICHIER ET REDUIT SA TAILLE > USAGE: gpdf nomfichier (fichier1,2,3 optionnel)
gpdf() 
{
if [ "$#" -eq 1 ]; then
	if [ "$#" -eq 0 ]; then 
		echo "vous devez indiquer le nom final du fichier"
	elif [[ $1 == *.(pdf|PDF) ]]; then
		echo "vous ne devez pas mettre l'extension, nous la mettons pour vous"
	else 
		pdftk *.(pdf|PDF) cat output "$1".pdf && gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=out.pdf "$1".pdf && mv out.pdf "$1".pdf && mplayer $HOME/Dropbox/SCRIPT/voice-system-activated.wav && ls -l -t -h
	fi
else 
	group="$1"; shift
pdftk "$@" cat output "$group".pdf && gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=out.pdf "$group".pdf && mv out.pdf "$group".pdf && mplayer $HOME/Dropbox/SCRIPT/voice-system-activated.wav && ls -l -t -h
fi
}

#REDUIT LA TAILLE D'UN PDF
rpdf() 
{
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=out.pdf "$1"
nouveau=$1
mv out.pdf ${nouveau%.*}.pdf && mplayer $HOME/Dropbox/SCRIPT/voice-system-activated.wav && ls -l -t -h
}

# EXTRAIT TOUS LES FORMATS D'ARCHIVES
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.tar.xz)    tar xvJf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *.xz)        unxz $1        ;;
      *.exe)       cabextract $1  ;;
      *)           echo "\`$1': unrecognized file compression" ;;
    esac
  else
    echo "\`$1' is not a valid file"
  fi
}

#TELEPORTATION AVEC LA CONSOLE
tel()
{
setopt nocaseglob
PS3='Choisissez le fichier à ouvrir : ' # Affiche l'invite.

echo

select fichier in **/"$1"*
do
  
  cd "$fichier" 
  echo
  break  #  Qu'arriverait-il s'il n'y avait pas de 'break' ici ?
         #+ fin.
done
}

#TELEPORTATION AVEC NAUTILUS
rep()
{
setopt nocaseglob
PS3='Choisissez le fichier à ouvrir : ' # Affiche l'invite.

echo

select fichier in **/"$1"*
do
  
  nautilus "$fichier" 
  echo
  break  #  Qu'arriverait-il s'il n'y avait pas de 'break' ici ?
         #+ fin.
done
}
 
#CHERCHE ET OUVRE LES FICHIERS LIBREOFFICE/OFFICE
libre()
{
setopt nocaseglob
PS3='Choisissez le fichier libreoffice à ouvrir : '
echo
select fichier in **/"$1"*(ods|xls|doc|odt)
do
  libreoffice "$fichier"
  echo
  break
done
}

#CHERCHE ET OUVRE LES FICHIERS PDF
ev()
{
setopt nocaseglob
PS3='Choisissez le fichier pdf à ouvrir : '
echo
select fichier in **/"$1"*pdf
do 
   if [ -f /share/evince ]; then
   evince "$fichier"
   else
   okular "$fichier"
   fi
echo
break
done
}

#SCRIPT REDUCTION IMAGES +ZIP
reduire()
{
convert *.(jpg|JPG|BMP|bmp|png|PNG|JPEG) imagered.jpeg
mogrify -resize 1600x1200 *.jpeg     
mkdir imagesreduites
cp *.jpeg imagesreduites
zip imagesreduites/imagesreduites.zip *.jpeg
rm *.jpeg
mplayer $HOME/Dropbox/SCRIPT/voice-system-activated.wav 2>/dev/null
cd imagesreduites
ls -l -t -h
}

#LECTURE DE FICHIERS MUSICAUX ET VIDEOS
mp()
{
setopt nocaseglob
PS3='Choisissez le fichier musical ou vidéo à ouvrir : '
echo
select fichier in **/*"$1"*(mp3|mp4|mkv|flv|wav|mpeg|avi|ogg)
do
  mplayer "$fichier"
  echo
  break
done
}

#AFFICHAGE PAR EXTENSION
yls()
{
    local filetype=""
    local oldtype=""

    LC_ALL=C ls -l $1 \
        | grep -v "^total" \
        | sort \
        | sed -r -e 's/^(d.*)$/\1 [Dossier]/' -e 's/^(l.*)$/\1 [Lien symbolique]/' -e 's/^([^d].*)\.([^\.~]+)(~?)$/\1\.\2\3 [\2]/' \
        | sed -r -e 's/^(.*[^]])$/NULL\t\1/' -e 's/^(.*) \[([^]]+)\]$/\2\t\1/' \
        | sort -i \
        | while read line; \
          do \
            filetype=$(echo "$line" | cut -d$'\t' -f1); \
            if ! echo "$filetype" | grep -iq "^${oldtype}$"; \
            then \
                [[ "$oldtype" != "" ]] && echo; 
                echo -e "$(echo $filetype | sed 's/NULL/Aucune extension/') \n---------------------------------------------------------"; \
                oldtype="$filetype"; \
            fi; \
            echo "$line" | sed -r 's/^[^\t]+\t//'; \
          done
type noglob >/dev/null || alias noglob=''
}


#AFFICHAGE STRUCTURE DOSSIER + FICHIERS SCINDES
sls ()
{
fichiers=$(ls -l -t -h -c --color * 2>/dev/null)
dossiers=$(ls -l -t -h -c --color -F 2>/dev/null| grep /)
[ ! -d $dossiers ] &&
echo -e /n echo "\033[36m$PWD DOSSIERS\033[36m" && echo "-------------------------------------------------" && echo "\033[37m$dossiers" && echo ;

[ ! -e $fichiers ] && echo "\033[36m$PWD FICHIERS" && echo "-------------------------------------------------" && echo "\033[37m$fichiers";
} 

#TODOTASK
d()
{
group="$1"; shift
not="$@"
sleep "$group"m && notify-send "$not" & mplayer /home/$USER/Dropbox/Leopard\ Sounds/Print\ Complete.wav 2>/dev/null
echo "$not" >> "$HOME"/Dropbox/todolist
reponse=$(zenity --timeout 5 --question --text "Veux-tu reporter cette tache ? <b>"$not"</b>")
if [[ "$reponse?" -eq 0 ]]; then
sleep 30m && notify-send "$not" && mplayer /home/$USER/Dropbox/Leopard\ Sounds/Print\ Complete.wav 
fi
}

export ANDROID_HOME=/home/systeme/android-studio/
export PATH=${PATH}:/home/systeme/android-studio/tools
export JAVA_HOME=/usr/lib/jvm/java-1.9.0-openjdk-amd64
export PATH=${PATH}:/usr/lib/jvm/java-1.9.0-openjdk-amd64/bin/


