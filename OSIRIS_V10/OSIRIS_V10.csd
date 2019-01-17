<Cabbage>
;Background & Logo
form caption("Osiris"), size(870, 700), pluginid("Osiris"), colour("0, 0, 0")
image file("speakerBackground.jpg"), bounds(0, 0, 870, 700), outlinecolour("0, 0, 0"), tofront()
image file("OSIRIS_galactic.png"), bounds(210, 20, 376, 180), tofront(), outlinecolour("0, 0, 0")

;Keyboard
keyboard bounds(5, 590, 790, 100), mouseoeverkeycolour("153, 51, 225"), whitenotecolour("0, 230, 0")

;LED
;checkbox bounds(370, 160, 40, 40), channel("midiOn"), text(""), shape("round")  colour(0,  255, 0), active(0)

;Preset Directory
combobox bounds(180, 10, 100, 25), channel("combobox"), populate("*.snaps")

;Open Preset
filebutton bounds(100, 10, 60, 25), channel("but1"), text("Open"), mode("directory")

;Save Preset
filebutton bounds(20, 10, 60, 25), channel("but1"), text("Save"), mode("snapshot")

;Output Gain
vslider bounds(800, 10, 50, 680), channel("volume"), range(0, 1.5, .6, 1, .01), text("Output"), trackercolour("0, 210, 0"), imgfile("slider", "mix_fader.png"), valuetextbox(1)

;Pitch Envelope
groupbox bounds(10, 475, 280, 93), text("Pitch Envelope"), colour(80, 80, 80), alpha(.65)
rslider bounds(12, 500, 65, 65), channel("pAtt"), range(0, 1, 0.01, 1, .01), text("Attack"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")
rslider bounds(80, 500, 65, 65), channel("pDec"), range(0, 1, 5, 1, .01), text("Decay"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")
rslider bounds(148, 500, 65, 65), channel("pSus"), range(0, 1, 0.5, 1, .01), text("Sustain"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")
rslider bounds(216, 500, 65, 65), channel("pRel"), range(0, 1, 0.01, 1, .01), text("Release"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")

;Amplitude Envelope
groupbox bounds(505, 475, 280, 93), text("Amplitude Envelope"), colour(80, 80, 80), alpha(.65)
rslider bounds(512, 500, 65, 65), channel("aAtt"), range(0, 1, 0.01, 1, .01), text("Attack"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")
rslider bounds(580, 500, 65, 65), channel("aDec"), range(0, 1, .5, 1, .01), text("Decay"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")
rslider bounds(648, 500, 65, 65), channel("aSus"), range(0, 1, 0.5, 1, .01), text("Sustain"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")
rslider bounds(716, 500, 65, 65), channel("aRel"), range(0, 1, 1, 1, .01), text("Release"), trackercolour("0, 180, 0"), colour("10, 10, 10, 0"), imgfile("background", "tp.png")


;LFO Depth Knob
image file("knob_08_shadow_001.png"), bounds(250, 370, 120, 120), tofront(), outlinecolour("0, 0, 0")
image bounds(250, 370, 120, 120), file("knob_08_001.png"), identchannel("depth")
rslider bounds(250, 370, 120, 120), channel("lfo"), range(0, 1, 0, 1, .01), text("LFO Depth"), trackercolour("0, 210, 0, 0"), alpha(0),/*imgfile("slider", "Knobby.png")*/ imgfile("background", "tp.png"), ;alpha(0)
chnset   gko, "lfo"

;LFO Rate Knob
image file("knob_08_shadow_001.png"), bounds(430, 370, 120, 120), tofront(), outlinecolour("0, 0, 0")
image bounds(430, 370, 120, 120), file("knob_08_001.png"), identchannel("rate")
rslider bounds(450, 370, 100, 100), channel("lfo_rate"), range(0, 220, 0, 1, .01), text("LFO Rate"), trackercolour("0, 210, 0, 0"), /*imgfile("slider", "knob_06_001.png"),*/ imgfile("background", "tp.png"), alpha(0)
chnset   gkrate, "lfo_rate"

;Distortion Knob
rslider bounds(640, 60, 100, 135), channel("dist"), range(0, 1, 0, 1, .01), text("Distortion"), trackercolour("0, 210, 0, 0"), imgfile("slider", "metalKnob2.png"), imgfile("background", "tp.png"), rotate(0, 57.5, 75), valuetextbox(1), textcolour("0, 210, 0")
chnset kdist, "dist"

;Tone Knob
rslider bounds(640, 230, 100, 135), channel("cuttoff"), range(0, 20000, 20000, 1, .01), text("Tone"), trackercolour("0, 210, 0, 0"), imgfile("slider", "metalKnob2.png"), imgfile("background", "tp.png"), rotate(0, 57.5, 75), valuetextbox(1), textcolour("0, 210, 0")
chnset kcut, "cuttoff"

;Fine Tune Knob
rslider bounds(50, 60, 100, 135), channel("fine_tune"), range(-50, 50, 0, 1, .01), text("Fine Tune"), trackercolour("0, 210, 0, 0"), imgfile("slider", "metalKnob2.png"), imgfile("background", "tp.png"), rotate(0, 57.5, 75), valuetextbox(1), textcolour("0, 210, 0")

;Glide Knob
rslider bounds(50, 230, 100, 135), channel("glide"), range(0, 1, 0, 1, .01), text("Glide"), trackercolour("0, 210, 0, 0"), imgfile("slider", "metalKnob2.png"), imgfile("background", "tp.png"), rotate(0, 57.5, 75), valuetextbox(1), textcolour("0, 210, 0")
chnset   gkglide, "glide"

;Sample Menu
image file("tp2.png"), bounds(260, 220, 280, 120), corners(9)
image file("gC2.png"), bounds(250, 210, 300, 140), alpha(.9), tofront()
combobox bounds(260, 220, 280, 120), alpha(.68), channel("type"), items("SP808_Amp.wav", "BD-808_C1.wav", "House_Bass_C1.wav", "LMD_808.wav", "Zaytoven_808.wav"), align("centre"), colour("0, 255, 0"), fontcolour("0, 0, 0")
chnset   gktype, "type"


;LFO Wave Menu
;combobox bounds(310, 475, 180, 93), channel("lfo_wave"), channeltype("float"), items("Sine", "Triangle", "Square (Bipolar)", "Square (Unipolar)", "Saw"), align("centre"), colour("0,0,0"), fontcolour("0, 225, 0")
;chnset   gkwave, "lfo_wave"
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-+rtmidi=NULL -M0 --midi-key-cps=3

-odac

</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 128
nchnls = 2
0dbfs = 1.0



;channels
chn_k "glide",3
chn_k "type",1
chn_k "cuttoff",3
chn_k "lfo",3
chn_k "lfo_rate",3
chn_k "lfo_wave",3
chn_k "dist",3
chn_k "aRel",3
chn_k "aSus",3
chn_k "aDec",3
chn_k "aAtt",3
chn_k "pRel",3
chn_k "pSus",3
chn_k "pDec",3
chn_k "pAtt",3
chn_k "volume",3
chn_k "fine_tune", 3



gasig init 0
gadist init 0
gafilt init 0
gabus init 0

gifn	ftgen	0,0, 257, 9, .5,1,270
;gifn	ftgen	0,0, 257, 9, .5,1,270,1.5,.33,90,2.5,.2,270,3.5,.143,90,4.5,.111,270


;maxalloc 1, 3

instr 5

kstatus, kchan, kdata1, kdata2 midiin 

kled chnget "midiOn"
if changed(kstatus)==1 then

    if (kstatus==128) then
    prints "note on"
	chnset kled>0 ? k(1) : k(0), "midiOn"
	
	elseif (kstatus==144) then
	prints "note off"
	chnset kled>0 ? k(0) : k(1), "midiOn"

endif
endif
endin


instr 1
;MAIN, INPUT

;Midi In 
icps cpsmidi
ivel	ampmidi	0.4

gktype init 0

;Amplitude Envelope

gkAAtt = .05
gkADec = .2
gkASus = .2
gkARel = .6

gkAAtt  = chnget:k("aAtt")
gkADec  = chnget:k("aDec")	
gkASus  = chnget:k("aSus")	
gkARel  = chnget:k("aRel")

gaEnv		linsegr		0,i(gkAAtt)+0.0001, 0.5,i(gkADec),i(gkASus),i(gkARel),0			;AMPLITUDE ENVELOPE


;Pitch Envelope
gkPAtt = .01
gkPDec = .05
gkPSus = .5
gkPRel = .01

kpenv linsegr		0,i(gkPAtt)+0.0001, 0.5,i(gkPDec),i(gkPSus),i(gkPRel),0			;PITCH ENVELOPE

gkPAtt	 = chnget:k("pAtt")
gkPDec	 = chnget:k("pDec")
gkPSus	 = chnget:k("pSus")
gkPRel	 = chnget:k("pRel")

;Update Envelopes
ktrig	changed	gkAAtt, gkADec, gkASus, gkARel, gkPAtt, gkPDec, gkPSus, gkPRel

 if ktrig==1 then
  reinit	UpdateEnv
 endif
 UpdateEnv:
 gkAAtt		=	i(gkAAtt)
 gkADec		=	i(gkADec)
 gkASus		=	i(gkASus)
 gkARel		=	i(gkARel)
 
 gkPAtt		=	i(gkPAtt)
 gkPDec		=	i(gkPDec)
 gkPSus		=	i(gkPSus)
 gkPRel		=	i(gkPRel)
 rireturn



;Fine-Tune Knob
ktune = chnget:k("fine_tune")

;Convert to Base Frequency, Smooth Out
ktune = (ktune * 0.0004) + 1
ktune		port		ktune, .001


;Volume Slider
kGain 		invalue 	"volume"
kGain = chnget:k("volume")


;Portamento 
gkglide = chnget:k("glide")

;Convert Note Frequency to Base Frequency 
kcCon = .083 * ktune
kcps	= icps * kcCon
kfr = kcps * kpenv
kfreq		portk		kfr, gkglide


galfo init 0
kres = kfreq + galfo

;Menu 
gktype invalue "type"
gktype = chnget:k("type")

if (gktype == 0) then
;dummy

elseif (gktype == 1) then
asig1, asig2 diskin2 "SP808_Amp.wav", kres, 0, 0, 0, 2

elseif (gktype == 2) then
asig1, asig2 diskin2 "BD-808_C1.wav", kres, 0, 0, 0, 2

elseif (gktype == 3) then
asig1, asig2 diskin2 "House_Bass_C1.wav", kres, 0, 0, 0, 2

elseif (gktype == 4) then
asig1, asig2 diskin2 "LMD_808.wav", kres, 0, 0, 0, 2

elseif (gktype == 5) then
asig1, asig2 diskin2 "Zaytoven_808.wav", kres, 0, 0, 0, 2

;elseif (gktype == 6) then
;asig1, asig2 diskin2 "", kres, 0, 0, 0, 2

;elseif (gktype == 7) then
;asig1, asig2 diskin2 "", kres, 0, 0, 0, 2

;elseif (gktype == 8) then
;asig1, asig2 diskin2 "", kres, 0, 0, 0, 2


endif

;glide
;portk

	gabus += gadist
	gabus += gafilt
	

	gabus += asig1
	gabus += asig2 
	
	gasig += asig1
	
	a1 = (asig1*gaEnv) ;* kgain
	a2 = (asig2*gaEnv) ;* kgain
	
	outs a1*kGain, a2*kGain
		 
	
endin


;DISTORTION
instr 2
amon, amon monitor

;Dist Slider
kdist 	invalue 	"dist"
kdist = chnget:k("dist")
kdist		port		kdist, .01	 
 
adist 	distort	amon, kdist, gifn

	gadist += adist
	
	afin balance amon, adist
	
	outs adist, adist
	gadist  = 0	;clear
	
endin


;FILTER
instr 3

amon, amon monitor
kcut invalue "cuttoff"
kcut = chnget:k("cuttoff")

kcut		port		kcut, .01	
kenv2		linsegr		0, 		 .001, 		1, 	 .01, 	1, 	.1, 0
	
	afilt  lowpass2 amon, kcut, 6	
	gafilt += afilt
	
	outs afilt, afilt
	
endin

;LFO
instr 4

gko = chnget:k("lfo")
gkwave = chnget:k("lfo_wave")
gkrate = chnget:k("lfo_rate")

;Improve LFO Depth and Rate knob functionality 
if metro(80) == 1 then
        if changed(gko) == 1 then
            SMessage sprintfk "rotate(%f, 60, 50)", (gko*3.14159265359)*1.5
            chnset SMessage, "depth"
        endif
    endif
    
if metro(100) == 1 then
        if changed(gkrate) == 1 then
            SMessage sprintfk "rotate(%f, 60, 50)", (gkrate*3.14159265359)*1.5
            chnset SMessage, "rate"
        endif
    endif   

galfo lfo gko, gkrate, i(gkwave)

ktriglfo	changed	gkwave
 if ktriglfo==1 then
  reinit	UpdateLfo
 endif
 UpdateLfo:
 gkwave		=	i(gkwave)
 rireturn
 
printk2 gkwave

endin



</CsInstruments>
<CsScore>

;f 1 0 0 1 "SP808_Amp.wav" 0 0 0


i1 0 z
;i5 0 z
i2 0 z
i3 0 z
i4 0 z


</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>693</x>
 <y>80</y>
 <width>692</width>
 <height>680</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>90</r>
  <g>202</g>
  <b>20</b>
 </bgcolor>
 <bsbObject version="2" type="BSBKnob">
  <objectName>fine tune</objectName>
  <x>92</x>
  <y>79</y>
  <width>74</width>
  <height>70</height>
  <uuid>{eb49e632-83f6-4e6c-9379-139ba63036e4}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>-50.00000000</minimum>
  <maximum>50.00000000</maximum>
  <value>-15.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBVSlider">
  <objectName>volume</objectName>
  <x>625</x>
  <y>8</y>
  <width>34</width>
  <height>60</height>
  <uuid>{ab87a025-d64a-4fbb-9141-abe268095dd0}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.98333333</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>-1.00000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>606</x>
  <y>73</y>
  <width>75</width>
  <height>25</height>
  <uuid>{9849e1eb-2dc2-4897-aa32-3a06800e8e1b}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>Output</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>16</fontsize>
  <precision>3</precision>
  <color>
   <r>186</r>
   <g>184</g>
   <b>182</b>
  </color>
  <bgcolor mode="background">
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBDropdown">
  <objectName>type</objectName>
  <x>221</x>
  <y>187</y>
  <width>235</width>
  <height>50</height>
  <uuid>{b4a30aad-7df9-4e6c-95c6-5258e9fe43f0}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <bsbDropdownItemList>
   <bsbDropdownItem>
    <name>SP808_Amp</name>
    <value>0</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>BD_808</name>
    <value>1</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>House Bass</name>
    <value>2</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>LMD_808</name>
    <value>3</value>
    <stringvalue/>
   </bsbDropdownItem>
  </bsbDropdownItemList>
  <selectedIndex>0</selectedIndex>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>221</x>
  <y>77</y>
  <width>234</width>
  <height>88</height>
  <uuid>{bb0ba648-dade-456c-8344-de6de46290f4}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>OSIRIS</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>80</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>115</r>
   <g>250</g>
   <b>255</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>92</x>
  <y>149</y>
  <width>74</width>
  <height>26</height>
  <uuid>{cd830c72-1e50-42f4-8c27-ae393027cffb}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>Fine Tune</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>16</fontsize>
  <precision>3</precision>
  <color>
   <r>208</r>
   <g>207</g>
   <b>206</b>
  </color>
  <bgcolor mode="background">
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>pAtt</objectName>
  <x>113</x>
  <y>336</y>
  <width>44</width>
  <height>49</height>
  <uuid>{42ad56d3-f944-4039-90c8-7493a84c69ec}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.07000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>glide</objectName>
  <x>94</x>
  <y>181</y>
  <width>70</width>
  <height>69</height>
  <uuid>{a9cdddb7-56ef-488b-8dd6-2d657eb2762d}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>91</x>
  <y>253</y>
  <width>73</width>
  <height>25</height>
  <uuid>{1f29003a-1419-40bb-bb9b-212111bf59e9}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>Glide</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>16</fontsize>
  <precision>3</precision>
  <color>
   <r>174</r>
   <g>174</g>
   <b>174</b>
  </color>
  <bgcolor mode="background">
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>pDec</objectName>
  <x>164</x>
  <y>336</y>
  <width>43</width>
  <height>49</height>
  <uuid>{29adae32-3438-44d9-9fb4-1a41892abd3e}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>pSus</objectName>
  <x>213</x>
  <y>337</y>
  <width>44</width>
  <height>49</height>
  <uuid>{2f207b0e-c4a0-4bdb-9fa9-fc55c6c7e730}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>pRel</objectName>
  <x>265</x>
  <y>336</y>
  <width>44</width>
  <height>49</height>
  <uuid>{2f9add97-76a2-4c98-97fa-03d9b35c4a67}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>103</x>
  <y>302</y>
  <width>225</width>
  <height>32</height>
  <uuid>{83c23997-d884-4b3a-bd1d-21c22d7caaf0}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>Pitch Envelope</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>20</fontsize>
  <precision>3</precision>
  <color>
   <r>183</r>
   <g>183</g>
   <b>183</b>
  </color>
  <bgcolor mode="background">
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>2</borderradius>
  <borderwidth>3</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>aAtt</objectName>
  <x>370</x>
  <y>336</y>
  <width>44</width>
  <height>49</height>
  <uuid>{05cd9893-789b-4fdc-8a1b-5972489239ae}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>aDec</objectName>
  <x>422</x>
  <y>336</y>
  <width>43</width>
  <height>49</height>
  <uuid>{2090927e-95a6-49e1-aa36-23f50b6dfb64}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.01000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>aSus</objectName>
  <x>471</x>
  <y>336</y>
  <width>44</width>
  <height>49</height>
  <uuid>{c6d4190d-6855-44d5-ba7e-26a22b032fe5}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>1.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>aRel</objectName>
  <x>523</x>
  <y>336</y>
  <width>44</width>
  <height>49</height>
  <uuid>{bbb1adef-f27a-49ae-b20c-5e417f0ec380}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>361</x>
  <y>302</y>
  <width>225</width>
  <height>32</height>
  <uuid>{1222ea86-15f7-485d-812e-30bf693838d0}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>Amp Envelope</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>20</fontsize>
  <precision>3</precision>
  <color>
   <r>183</r>
   <g>183</g>
   <b>183</b>
  </color>
  <bgcolor mode="background">
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBScope">
  <objectName/>
  <x>143</x>
  <y>479</y>
  <width>400</width>
  <height>150</height>
  <uuid>{fc1cc925-450f-41ac-8031-ab302e827df5}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <value>-255.00000000</value>
  <type>scope</type>
  <zoomx>2.00000000</zoomx>
  <zoomy>1.00000000</zoomy>
  <dispx>1.00000000</dispx>
  <dispy>1.00000000</dispy>
  <mode>0.00000000</mode>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>dist</objectName>
  <x>498</x>
  <y>75</y>
  <width>74</width>
  <height>70</height>
  <uuid>{a813785d-82f3-4da2-88fa-e19e90b8596b}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>-50.00000000</minimum>
  <maximum>50.00000000</maximum>
  <value>-50.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>498</x>
  <y>144</y>
  <width>74</width>
  <height>26</height>
  <uuid>{d393b7db-7944-4477-9d25-4dd5a201e0fc}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>Distortion
</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>16</fontsize>
  <precision>3</precision>
  <color>
   <r>208</r>
   <g>207</g>
   <b>206</b>
  </color>
  <bgcolor mode="background">
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBKnob">
  <objectName>cuttoff</objectName>
  <x>498</x>
  <y>175</y>
  <width>70</width>
  <height>69</height>
  <uuid>{40f27c57-56ac-4140-92e0-e3317b130c00}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>20000.00000000</maximum>
  <value>20000.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>0.01000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>496</x>
  <y>248</y>
  <width>73</width>
  <height>25</height>
  <uuid>{9d51a9b9-99b1-48fc-92cc-ac776147408f}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>Tone</label>
  <alignment>center</alignment>
  <font>Luminari</font>
  <fontsize>16</fontsize>
  <precision>3</precision>
  <color>
   <r>174</r>
   <g>174</g>
   <b>174</b>
  </color>
  <bgcolor mode="background">
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
