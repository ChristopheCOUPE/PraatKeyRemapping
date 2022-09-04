;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;  This script remaps keys for PRAAT  ;;;;;;;;;;;;;;;;;;;;;;;
;;;  Script created by Christophe Coupé - christophe.coupe1@univ-lyon3.fr  ;;;
;;;;;;;;;;;;;;;;;;;;;;  last updated on 12/05/2022  ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SetTitleMatchMode, 2	
#IfWinActive, TextGrid		; faire fonctionner ce script uniquement sur la fenêtre TextGrid en cours d'utilisation
					; allows this script to be active only on windows containing 'TextGrid' as part of their title

Space::Tab				; lire la portion audio sélectionnée avec la touche 'espace'
	Return			; allows the use of space key instead of tab key

RButton::^F1			; insérer une frontière sur la tire 1 avec un clique droit
	Return			; inserts boundary with rightclick on tier 1

XButton2::!Backspace		; supprimer la frontière sélectionnée en utilisant le bouton n°5 de la souris (fonctionne seulement si la souris a des boutons supplémentaires) 
	Return			; deletes selected boundary using mouth button n°5 (provided your mouse has such a button)
	
XButton1::				; chercher un mot en utilisant le bouton n°4 de la souris (fonctionne seulement si la souris a des boutons supplémentaires)
	send	^f			; deletes selected boundary using mouth button n°4 (provided your mouse has such a button)
	Return

WheelUp::				; zoomer sur la tire (spectrogramme et signal compris) en faisant tourner la molette (souris) vers le haut
	send ^i			; zoom in using wheel up
	Return

WheelDown::				; dézoomer sur la tire (spectrogramme et signal compris) en faisant tourner la molette (souris) vers le bas
	send ^o			; zoom out using wheel down
	Return

$!WheelUp::				; naviguer sur les intervalles à droite en maintenant la touche ALT enfoncée et en faisant tourner la molette (souris) vers le haut
	send !{Right}		; moves to closest interval on right side (ALT + wheel up)
	Return

$!WheelDown::			; naviguer sur les intervalles à gauche en maintenant la touche ALT enfoncée et en faisant tourner la molette (souris) vers le bas
	send !{Left}		; moves to closest interval on left side (ALT + wheel down)
	Return

MButton::				; agrandir l'intervalle sélectionné en appuyant sur la molette (souris)
	send	^n			; enlarges the currently selected interval (press wheel button)
	Return

#IfWinActive 

Escape::				; désactiver le script en cours d'utilisation (appuyer sur la touche 'échap')
ExitApp				; deactivates currently running script using the 'Esc' key
Return