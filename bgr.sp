* Option
.option post

* Source
vdd	vdd	0	1.8


* BGR
M03	3	3	vdd	vdd	cmosp	w=5u	l=2u
M04	vbg	3	vdd	vdd	cmosp	w=5u	l=2u
M05	1	2	vdd	vdd	cmosp	w=5u	l=2u
M06	2	3	vdd	vdd	cmosp	w=5u	l=2u
M07	2	3	0	0	cmosn	w=5u	l=2u

Q01	3	1	4	MOD1	m=24
Q02	1	1	0	MOD1	m=1

r01	4	0	8.215k
r02	vbg	1	60k


* Output
.dc	temp	-25	75	1
.dc	vdd	0	1.8	0.1
.op

*Device model
.MODEL MOD1 NPN
.include tsmc018.mod

.end