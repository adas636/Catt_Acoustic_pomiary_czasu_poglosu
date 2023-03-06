;MASTER.GEO
;PROJECT=Sala

;----------------------------------------------------------------------------
; ZMIENNE
;----------------------------------------------------------------------------
GLOBAL X2=36
GLOBAL Y2=19
GLOBAL Y3=3
GLOBAL Z2=7
GLOBAL Z3=2,787
GLOBAL X3=3,9
;INCLUDE

;----------------------------------------------------------------------------
; MATERIA£Y
;----------------------------------------------------------------------------
;ABS absname < a125 a250 a500 a1000 a2000 a4000> L < s125 s250 ... s4kHz >

;baza matateria³ów
ABS tynk <2 3 3 4 4 5> L <20 30 40 40 50 50> {0 198 50}
ABS suf_podw <41 41 42 43 41 43> L <10 10 15 15 20 30>{213 213 0} ; sufit z paneli z we³ny mineralnej 
ABS szyba2 <18 10 5 2 2 1> L <10 15 20 30 40 50>{89 219 230}
ABS szyba <35 25 18 12 7 4> L <10 15 20 30 40 50> {117 186 255}
ABS tablica <2 2 3 3 4 5> L <10 15 20 30 40 50> {232 232 232}
ABS siedzenia <51 64 75 80 82 83> L <20 30 40 40 50 50>{0 128 64} ;bez widzów 36 47 57 62 62 60
ABS podloga <9 12 9 9.5 5.5 4> L <20 30 40 40 50 50> {0 140 140}
ABS drzwi <5 10 10 10 7 2> L<20 30 40 40 50 50>{149 149 149}
ABS podloga_plytki <2 2 2 2 3 3> L <20 30 40 40 50 50>{255 193 132}

;przypisanie materialu z bazy do konkretnej grugy p³aszczyzn
ABS sciana = tynk  ;materia³ scian 




;OFFSETCO
;OFFSETPL


CORNERS

;id x y z
1 0 0 0
2 X2 0 0
3 x(2) Y2 0
5 0 0 Z3
6 X2 0 Z3
4 0 y(3) 0 
7 0 -Y3 Z3
8 X2 -Y3 Z3
17 x(7) y(7) Z2
18 x(8) y(8) Z2
19 0 -0,572 z(5)
20 X2 -0,572 z(5)
29 0 -0,572 Z3+0,165
30 X2 -0,572 Z3+0,165
21 0 y(29)-0,2715 z(29)
22 X2 y(30)-0,2715 z(30)
23 0 y(21) z(29)+0,165
24 X2 y(22) z(30)+0,165
25 0 y(21)-0,544 z(23)
26 X2 y(22)-0,544 z(24)
27 0 y(21)-0,544 z(23)+0,165
28 X2 y(22)-0,544 z(24)+0,165
31 0 y(27)-0,2715 z(27)
32 X2 y(28)-0,2715 z(28)
33 0 y(27)-0,2715 z(31)+0,165
34 X2 y(28)-0,2715 z(32)+0,165

;drzwi dol jeden
35 0 -3 z(33)
36 X2 -3 z(34)
37 3 0 0
38 3+2,023 0 0
39 x(38) 0 2,319

;drzwi dol dwa
40 3 0 2,319
41 X2-3 0 0
42 x(41)-2,023 0 0
43 x(41) 0 2,319
44 x(42) 0 z(43)

;drzwi gora jeden
45 36-6,375 -3 z(35)
46 x(45)+0,97 -3 z(35)
47 x(46) -3 z(46)+2,016
48 x(45) -3 z(47)

;drzwi gora dwa
49 x(46)-7,271 -3 z(35)
50 x(49)-0,97 -3 z(35)
51 x(50) -3 z(47)
52 x(49) -3 z(47)

;drzwi gora trzy
53 9,722 -3 z(35)
54 x(53)+0,97 -3 z(35)
55 x(53)+0,97 -3 z(47)
56 9,722 -3 z(47)

;kolumna jeden
57 7,991 0 z(5)
58 x(57)+0,40 0 z(5)
59 x(58) 0 Z2
60 x(57) 0 Z2

61 7,991 -0,344 z(5)
62 x(57)+0,40 -0,344 z(5)
63 x(58) -0,344 Z2
64 x(57) -0,344 Z2

;kolumna dwa
65 x(57)+9,624 0 z(5)
66 x(65)+0,40 0 z(5)
67 x(66) 0 Z2
68 x(65) 0 Z2

69 x(65) -0,344 z(5)
70 x(66) -0,344 z(5)
71 x(67) -0,344 Z2
72 x(68) -0,344 Z2

;kolumna trzy
73 x(69)+9,616 0 z(5)
74 x(73)+0,40 0 z(5)
75 x(74) 0 Z2
76 x(73) 0 Z2

77 x(73) -0,344 z(5)
78 x(74) -0,344 z(5)
79 x(75) -0,344 Z2
80 x(76) -0,344 Z2

;balustrady
81 0 0 z(5)+1,1
82 7,991 0 z(5)+1,1
83 x(82)+0,40 0 z(82)
84 x(82)+9,624 0 z(82)
85 x(84)+0,40 0 z(82)
86 x(84)+9,616 0 z(82)
87 x(86)+0,40 0 z(82)
88 36 0 z(82)

;tablica1
89 x(57)-0,4 0,7 z(5)
90 x(58)+0,4 0,7 z(5)
91 x(90) 0,7 z(90)+0,9
92 x(89) 0,7 z(91)

;tablica2
93 x(73)-0,4 0,7 z(5)
94 x(74)+0,4 0,7 z(93)
95 x(94) 0,7 z(93)+0,9
96 x(93) 0,7 z(95)

;tablica3
97 x(57)-0,4 Y2-0,7 z(5)
98 x(58)+0,4 Y2-0,7 z(5)
99 x(90) Y2-0,7 z(90)+0,9
100 x(89) Y2-0,7 z(91)

;tablica4
101 x(73)-0,4 Y2-0,7 z(5)
102 x(74)+0,4 Y2-0,7 z(93)
103 x(94) Y2-0,7 z(93)+0,9
104 x(93) Y2-0,7 z(95)

;sciana szyba rog lewo
105 0 Y2-2 2,95
106 0 Y2 2,95
107 0 Y2 Z2
108 0 Y2-2 Z2

;sciana szyba 
109 X2 y(106) 2,95
110 X2 y(107) Z2

;sciana szyba rog prawo
111 X2 Y2-2 z(109)
112 X2 Y2-2 z(110)

;kolumny sciana szyba
113 3 Y2 2,95
114 x(113)+0,4 Y2 z(113)
115 x(114) Y2 Z2
116 x(113) Y2 z(115)

117 x(57) y(113) z(113)
118 x(117)+0,4 y(114) z(114)
119 x(118) y(115) z(115)
120 x(117) y(116) z(116)

121 x(117)+X3 y(117) z(117)
122 x(118)+X3 y(118) z(118)
123 x(119)+X3 y(119) z(119)
124 x(120)+X3 y(120) z(120)

125 x(121)+X3 y(121) z(121)
126 x(122)+X3 y(122) z(122)
127 x(123)+X3 y(123) z(123)
128 x(124)+X3 y(124) z(124)

129 x(125)+X3 y(125) z(125)
130 x(126)+X3 y(126) z(126)
131 x(127)+X3 y(127) z(127)
132 x(128)+X3 y(128) z(128)

133 x(129)+X3 y(129) z(129)
134 x(130)+X3 y(130) z(130)
135 x(131)+X3 y(131) z(131)
136 x(132)+X3 y(132) z(132)

137 x(133)+X3 y(129) z(129)
138 x(137)+0,4 y(130) z(130)
139 x(138) y(135) z(135)
140 x(137) y(136) z(136)

141 x(137)+X3 y(137) z(137)
142 x(138)+X3 y(138) z(138)
143 x(139)+X3 y(139) z(139)
144 x(140)+X3 y(140) z(140)

145 x(141)+X3 y(141) z(141)
146 x(142)+X3 y(142) z(142)
147 x(143)+X3 y(143) z(143)
148 x(144)+X3 y(144) z(144)

149 x(21)+1 y(19) z(5)
150 x(149) y(19) z(29)
151 x(149) y(21) z(19)
152 x(21)+1 y(21) z(19)
153 x(29)+1 y(29) z(29)
154 x(21)+1 y(21) z(21)
155 x(154) y(154) z(23)
156 x(23)+1 y(23) z(23)
157 x(25)+1 y(25) z(25)
158 x(157) y(157) z(27)
159 x(61)-0.3 y(19) z(19)
160 x(62)+0.3 y(19) z(19)
161 x(159) y(159) z(29)
162 x(160) y(160) z(29)
163 x(161) y(21) z(161)
164 x(162) y(21) z(161)
165 x(163) y(163) z(23)
166 x(164) y(164) z(23)
167 x(163) y(163) z(19)
168 x(165) y(25) z(25)
169 x(166) y(25) z(25)
170 x(31)+1 y(31) z(31)
171 x(168) y(168) z(27)
172 x(169) y(169) z(27)
173 x(168) y(31) z(31)
174 x(169) y(31) z(31)
175 x(173) y(173) z(33)
176 x(174) y(174) z(33)
177 x(170) y(170) z(33)
178 x(170) y(170) z(25)
179 x(173) y(173) z(25)
180 x(69)-0.3 y(19) z(69)
181 x(70)+0.3 y(19) z(70)
182 x(180) y(180) z(29)
183 x(181) y(181) z(29)
184 x(182) y(23) z(29)
185 x(183) y(23) z(29)
186 x(184) y(184) z(165)
187 x(185) y(185) z(165)
188 x(186) y(168) z(186)
189 x(187) y(168) z(186)
190 x(188) y(188) z(171)
191 x(189) y(189) z(171)
192 x(190) y(173) z(171) 
193 x(191) y(173) z(171)
194 x(192) y(192) z(33)
195 x(193) y(193) z(33)
196 x(166) y(166) z(5)
197 x(186) y(186) z(5)

;schody 4
198 x(77)-0.3 y(20) z(20)
199 x(78)+0.3 y(20) z(20)
200 x(198) y(198) z(29)
201 x(199) y(199) z(29)
202 x(200) y(185) z(29)
203 x(201) y(185) z(29)
204 x(202) y(202) z(187)
205 x(203) y(203) z(187)
206 x(204) y(189) z(187)
207 x(205) y(189) z(187)
208 x(206) y(206) z(190)
209 x(207) y(207) z(190)
210 x(208) y(192) z(208)
211 x(209) y(192) z(209)
212 x(210) y(210) z(34)
213 x(211) y(211) z(34)

;schody 5
214 x(20)-1 y(20) z(20)
215 x(214) y(214) z(200)
216 x(20) y(20) z(200) 
217 x(215) y(202) z(215)
218 x(216) y(202) z(216)
219 x(217) y(217) z(204)
220 x(218) y(218) z(204)
221 x(219) y(206) z(219)
222 x(220) y(206) z(220)
223 x(221) y(221) z(208)
224 x(222) y(222) z(208)
225 x(223) y(211) z(223)
226 x(224) y(211) z(224)
227 x(225) y(225) z(34)
228 x(226) y(226) z(34)

;pod2
229 x(169) y(176) z(169)
230 x(188) y(194) z(188)

;pod3
231 x(185) y(185) z(20)
232 x(202) y(202) z(20)
233 x(193) y(193) z(189)
234 x(210) y(210) z(189)

;pod4
235 x(205) y(205) z(20)
236 x(219) y(219) z(20)
237 x(211) y(211) z(205)
238 x(225) y(225) z(205)

;widownia1
239 x(177) y(177) z(177)+0.4
240 x(158) y(158) z(239)
241 x(171) y(171) z(239)
242 x(175) y(175) z(239)

243 x(155) y(155) z(155)+0.4
244 x(165) y(165) z(243)
245 x(149) y(149) z(243)
246 x(159) y(159) z(243)

;widownia2
247 x(229) y(229) z(241)
248 x(230) y(230) z(247)
249 x(188) y(188) z(247)
250 x(169) y(169) z(247)

251 x(166) y(166) z(166)+0.4
252 x(186) y(186) z(251)
253 x(180) y(180) z(251)
254 x(160) y(160) z(251)

;widownia3
255 x(195) y(195) z(195)+0.4
256 x(212) y(212) z(255)
257 x(206) y(206) z(255)
258 x(189) y(189) z(255)

259 x(187) y(187) z(187)+0.4
260 x(204) y(204) z(259)
261 x(198) y(198) z(259)
262 x(181) y(181) z(259)

;widownia4
263 x(213) y(213) z(213)+0.4
264 x(227) y(227) z(263)
265 x(221) y(221) z(263)
266 x(207) y(207) z(263)

267 x(205) y(205) z(205)+0.4
268 x(219) y(219) z(267)
269 x(214) y(214) z(267)
270 x(199) y(199) z(267)

;punkty dodatkowe sciany boczne
271 x(105) y(105) 0
272 x(111) y(111) 0

;punkty dodatkowe drzwi jeden
273 x(40) y(40) z(5)
274 x(39) y(39) z(5)
275 x(44) y(44) z(5)
276 x(43) y(43) z(5)

;punkty dodatkowe drzwi dwa
277 x(56) y(56) z(18)
278 x(55) y(55) z(18)
279 x(51) y(51) z(18)
280 x(52) y(52) z(18)
281 x(48) y(48) z(18)
282 x(47) y(47) z(18)

;poprawki sciany schody
283 x(229) y(229) z(33)
284 x(230) y(230) z(33)
285 x(233) y(233) z(33)
286 x(234) y(234) z(33)
287 x(237) y(237) z(33)
288 x(238) y(238) z(33)

loop(11,i,1,4,1,x(i),y(i),Z2)	;loop(id_start,i,i_start,i_stop,i_step,x_expr,y_expr,z_expr)

PLANES

;[id name  /   / absname  ]
;[id name  /   / (a /  / a_abs) (b /  / b_abs) ]

[1 podloga / 1-4 / podloga]
[2 sufit \ 11-14 / suf_podw]
[3 sciana / 1 5 273 37 / suf_podw] 
[166 sciana / 40 273 274 39 / suf_podw]  
[167 sciana / 38 274 275 42 / suf_podw]
[168 sciana / 44 275 276 43 / suf_podw]    
[169 sciana / 41 276 6 2 / suf_podw]  

[4 sciana \ 1 11 108 271 / suf_podw]
[164 sciana \ 271 105 106 4 / suf_podw]
[5 sciana / 4 3 109 106 / suf_podw]
[6 sciana / 2 12 112 272 / suf_podw]
[165 sciana / 272 111 109 3 / suf_podw]
[7 sciana \ 5 6 20 19 / podloga_plytki]
[8 sciana / 35 17 277 53 / sciana]
[171 sciana / 56 277 278 55 / sciana]
[172 sciana / 54 278 279 50 / sciana]
[173 sciana / 51 279 280 52 / sciana]
[174 sciana / 49 280 281 45 / sciana]
[175 sciana / 48 281 282 47 / sciana]
[176 sciana / 46 282 18 36 / sciana]


  
[9 sciana \ 17 18 12 11 / sciana]
[10 sciana \ 5 7 17 11 / suf_podw]
[11 sciana \ 8 6 12 18 / suf_podw]
[12 sciana \ 19 149 150 29 / podloga_plytki]
[13 sciana \ 29 153 154 21 / podloga_plytki]
[14 sciana \ 21 154 155 23 / podloga_plytki]
[15 sciana \ 23 156 157 25 / podloga_plytki]
[16 sciana \ 25 157 158 27 / podloga_plytki]
[17 sciana \ 27 158 170 31 / podloga_plytki]
[18 schody2 \ 173 174 176 175 / podloga_plytki]
[19 sciana \ 33 34 36 35 / podloga_plytki]
[20 drzwi1 \ 37 38 39 40 / drzwi]
[21 drzwi2 / 41 42 44 43 / drzwi]
[22 drzwi3 \ 45 46 47 48 / drzwi]
[23 drzwi4 / 49 50 51 52 / drzwi]
[24 drzwi5 \ 53 54 55 56 / drzwi]
[25 kolumna1 \ 57 58 59 60 / sciana]
[26 kolumna1 / 61 62 63 64 / sciana]
[27 kolumna1 / 57 61 64 60 / sciana]
[28 kolumna1 \ 58 62 63 59 / sciana]

[29 kolumna2 \ 65 66 67 68 / sciana]
[30 kolumna2 / 69 70 71 72 / sciana]
[31 kolumna2 / 65 69 72 68 / sciana]
[32 kolumna2 \ 66 70 71 67 / sciana]

[33 kolumna3 \ 73 74 75 76 / sciana]
[34 kolumna3 / 77 78 79 80 / sciana]
[35 kolumna3 / 73 77 80 76 / sciana]
[36 kolumna3 / 78 74 75 79 / sciana]

[37 balustrada1 / 5 81 82 57 / szyba2]
[38 balustrada2 / 58 83 84 65 / szyba2]
[39 balustrada3 / 66 85 86 73 / szyba2]
[40 balustrada4 / 74 87 88 6 / szyba2]

[41 tablica1 \ 89 90 91 92 / tablica]
[42 tablica2 \ 93 94 95 96 / tablica]
[43 tablica3 / 97 98 99 100 / tablica]
[44 tablica4 / 101 102 103 104 / tablica]

[45 szybaroglewo / 105 106 107 108 / szyba]
[47 szybarogprawo / 109 111 112 110 / szyba]

[46 szyba1 / 106 113 116 107 / szyba]
[155 szyba2 / 114 117 120 115 / szyba]
[156 szyba3 / 118 121 124 119 / szyba]
[157 szyba4 / 122 125 128 123 / szyba]
[158 szyba5 / 126 129 132 127 / szyba]
[159 szyba6 / 130 133 136 131 / szyba]
[160 szyba7 / 134 137 140 135 / szyba]
[161 szyba8 / 138 141 144 139 / szyba]
[162 szyba9 / 142 145 148 143 / szyba]


[48 kolumnaszyba1 / 113 114 115 116 / sciana]
[49 kolumnaszyba2 / 117 118 119 120 / sciana]
[50 kolumnaszyba3 / 121 122 123 124 / sciana]
[51 kolumnaszyba4 / 125 126 127 128 / sciana]
[52 kolumnaszyba5 / 129 130 131 132 / sciana]
[53 kolumnaszyba6 / 133 134 135 136 / sciana]
[54 kolumnaszyba7 / 137 138 139 140 / sciana]
[55 kolumnaszyba8 / 141 142 143 144 / sciana]
[56 kolumnaszyba9 / 145 146 147 148 / sciana]
[57 schody2 \ 159 160 162 161 / podloga_plytki]
[58 schody2 \ 161 162 164 163 / podloga_plytki]
[59 schody2 \ 163 164 166 165 / podloga_plytki]
[61 schody2 \ 165 166 169 168 / podloga_plytki]
;[60 pod1 \ 149 159 167 152 / podloga_plytki]
;[62 siedzenia1 \ 159 161 163 167 / podloga_plytki]
;[63 siedzenia1 \ 152 167 165 155 / podloga_plytki]
;[64 siedzenia1 \ 149 152 154 153 / podloga_plytki]
[65 schody2 \ 168 169 172 171 / podloga_plytki]
[66 schody2 \ 171 172 174 173 / podloga_plytki]
[67 pod1 \ 31 170 177 33 / podloga_plytki]
[68 pod1 \ 156 165 168 157 / podloga_plytki]
;[69 pod1 \ 168 171 173 179 / podloga_plytki]
;[70 pod1 / 157 158 170 178 / podloga_plytki]
;[71 pod1 \ 178 179 175 177 / podloga_plytki]
[72 schody3 \ 180 181 183 182 / podloga_plytki]
[73 schody3 \ 182 183 185 184 / podloga_plytki]
[74 schody3 \ 184 185 187 186 / podloga_plytki]
[75 schody3 \ 186 187 189 188 / podloga_plytki]
[76 schody3 \ 188 189 191 190 / podloga_plytki]
[77 schody3 \ 190 191 193 192 / podloga_plytki]
[78 schody3 \ 192 193 195 194 / podloga_plytki]
;[79 schody3 / 180 197 184 182 / podloga_plytki]
;[80 pod2 \ 160 180 197 196 / podloga_plytki]
;[81 pod2 \ 160 196 164 162 / podloga_plytki]

[82 schody4 \ 198 199 201 200 / podloga_plytki]
[83 schody4 \ 200 201 203 202 / podloga_plytki]
[84 schody4 \ 202 203 205 204 / podloga_plytki]
[85 schody4 \ 204 205 207 206 / podloga_plytki]
[86 schody4 \ 206 207 209 208 / podloga_plytki]
[87 schody4 \ 208 209 211 210 / podloga_plytki]
[88 schody4 \ 210 211 213 212 / podloga_plytki]

[89 schody5 \ 214 20 216 215 / podloga_plytki]
[90 schody5 \ 215 216 218 217 / podloga_plytki]
[91 schody5 \ 217 218 220 219 / podloga_plytki]
[92 schody5 \ 219 220 222 221 / podloga_plytki]
[93 schody5 \ 221 222 224 223 / podloga_plytki]
[94 schody5 \ 223 224 226 225 / podloga_plytki]
[95 schody5 \ 225 226 228 227 / podloga_plytki]

;[96 pod2 \ 196 197 186 166 / podloga_plytki]
[97 pod2 \ 166 186 188 169 / podloga_plytki]
;[177 pod2 \ 169 188 230 229 / podloga_plytki]
;[98 pod2 \ 229 230 194 176 / podloga_plytki]
;[99 pod2 \ 169 229 174 172 / podloga_plytki]
;[100 pod2 \ 188 190 192 230 / podloga_plytki]

;[101 pod3 / 181 231 232 198 / podloga_plytki]
;[102 pod3 \ 231 232 204 187 / podloga_plytki]
;[103 pod3 \ 181 231 185 183 / podloga_plytki]
;[104 pod3 \ 198 200 202 232 / podloga_plytki]
[105 pod3 / 187 189 206 204 / podloga_plytki]
;[106 pod3 / 189 233 234 206 / podloga_plytki]
;[107 pod3 /189 191 193 233 / podloga_plytki]
;[108 pod3 /206 234 210 208 / podloga_plytki]
;[109 pod3 /233 195 212 234 / podloga_plytki]

;[110 pod4 /199 235 236 214 / podloga_plytki]
;[111 pod4 /235 205 219 236 / podloga_plytki]
[112 pod4 /205 207 221 219 / podloga_plytki]
;[113 pod4 /207 237 238 221 / podloga_plytki]
;[114 pod4 /237 213 227 238 / podloga_plytki]

[115 wid1 / 157 240 241 168 / siedzenia]
[116 wid1 / 240 239 242 241 / siedzenia]
[117 wid1 \ 158 240 239 170 / siedzenia]
[118 wid1 / 171 241 242 173 / siedzenia]
[119 wid1 \ 177 239 242 175 / siedzenia]

[120 wid1 / 149 245 246 159 / siedzenia]
[121 wid1 / 245 243 244 246 / siedzenia]
[122 wid1 / 153 154 243 245 / siedzenia]
[123 wid1 \ 156 243 244 165 / siedzenia]
[124 wid1 / 161 246 244 163 / siedzenia]

[125 wid2 / 169 250 249 188 / siedzenia]
[126 wid2 / 250 247 248 249 / siedzenia]
[127 wid2 \ 172 250 247 174 / siedzenia]
[128 wid2 \ 283 247 248 284 / siedzenia]
[129 wid2 \ 190 192 248 249 / siedzenia]

[130 wid2 \ 160 180 253 254 / siedzenia]
[131 wid2 / 251 252 253 254 / siedzenia]
[132 wid2 / 162 164 251 254 / siedzenia]
[133 wid2 \ 166 251 252 186 / siedzenia]
[134 wid2 \ 182 184 252 253 / siedzenia]

[135 wid3 / 189 258 257 206 / siedzenia]
[136 wid3 / 255 256 257 258 / siedzenia]
[137 wid3 \ 191 258 255 193 / siedzenia]
[138 wid3 \ 285 255 256 286 / siedzenia]
[139 wid3 \ 208 210 256 257 / siedzenia]

[140 wid3 / 181 262 261 198 / siedzenia]
[141 wid3 / 259 260 261 262 / siedzenia]
[142 wid3 \ 183 262 259 185 / siedzenia]
[143 wid3 \ 187 259 260 204 / siedzenia]
[144 wid3 / 200 261 260 202 / siedzenia]

[145 wid4 / 207 266 265 221 / siedzenia]
[146 wid4 / 263 264 265 266 / siedzenia]
[147 wid4 \ 209 266 263 211 / siedzenia]
[148 wid4 \ 287 263 264 288 / siedzenia]
[149 wid4 / 223 265 264 225 / siedzenia]

[150 wid4 / 199 270 269 214 / siedzenia]
[151 wid4 / 267 268 269 270 / siedzenia]
[152 wid4 \ 201 270 267 203 / siedzenia]
[153 wid4 \ 205 267 268 219 / siedzenia]
[154 wid4 / 215 269 268 217 / siedzenia]

[177 szyb9 \ 147 110 109 146 / szyba]