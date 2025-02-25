(
SynthDef(\zwhite, {
	var out = \out.kr(0);
	var pan = \pan.kr(0);
	var amp = \amp.kr(1) * (-12.dbamp);
	var gate = \gate.kr(1);
	var attack = \atk.kr(0.01);
	var decay = \dec.kr(0.3);
	var sustain = \sus.kr(0.5);
	var release = \rel.kr(1);
	var env = EnvGen.kr(Env.adsr(attack, decay, sustain, release), gate, doneAction:2);
	var sig = WhiteNoise.ar(amp);
	Out.ar(out, Pan2.ar(sig * env, pan));
}).add;

SynthDef(\zpink, {
	var out = \out.kr(0);
	var pan = \pan.kr(0);
	var amp = \amp.kr(1) * (-12.dbamp);
	var gate = \gate.kr(1);
	var attack = \atk.kr(0.01);
	var decay = \dec.kr(0.3);
	var sustain = \sus.kr(0.5);
	var release = \rel.kr(1);
	var env = EnvGen.kr(Env.adsr(attack, decay, sustain, release), gate, doneAction:2);
	var sig = PinkNoise.ar(amp);
	Out.ar(out, Pan2.ar(sig * env, pan));
}).add;

SynthDef(\zbrown, {
	var out = \out.kr(0);
	var pan = \pan.kr(0);
	var amp = \amp.kr(1) * (-12.dbamp);
	var gate = \gate.kr(1);
	var attack = \atk.kr(0.01);
	var decay = \dec.kr(0.3);
	var sustain = \sus.kr(0.5);
	var release = \rel.kr(1);
	var env = EnvGen.kr(Env.adsr(attack, decay, sustain, release), gate, doneAction:2);
	var sig = BrownNoise.ar(amp);
	Out.ar(out, Pan2.ar(sig * env, pan));
}).add;

SynthDef(\zsine, {
	var out = \out.kr(0);
	var pan = \pan.kr(0);
	var amp = \amp.kr(1) * (-12.dbamp);
	var freq = \freq.kr(440);
	var feedback = \feedback.kr(0);
	var gate = \gate.kr(1);
	var attack = \atk.kr(0.01);
	var decay = \dec.kr(0.3);
	var sustain = \sus.kr(0.5);
	var release = \rel.kr(0);
	var env = EnvGen.kr(Env.adsr(attack, decay, sustain, release), gate, doneAction:2);
	var sig = SinOscFB.ar(freq, feedback, amp);
	Out.ar(out, Pan2.ar(sig * env, pan));
}).add;

SynthDef(\zsaw, {
	var out = \out.kr(0);
	var pan = \pan.kr(0);
	var amp = \amp.kr(1) * (-12.dbamp);
	var freq = \freq.kr(440);
	var gate = \gate.kr(1);
	var attack = \atk.kr(0.01);
	var decay = \dec.kr(0.3);
	var sustain = \sus.kr(0.5);
	var release = \rel.kr(0);
	var env = EnvGen.kr(Env.adsr(attack, decay, sustain, release), gate, doneAction:2);
	var sig = Saw.ar(freq, amp);
	Out.ar(out, Pan2.ar(sig * env, pan));
}).add;

SynthDef(\zpulse, {
	var out = \out.kr(0);
	var amp = \amp.kr(1) * (-12.dbamp);
	var pan = \pan.kr(0);
	var freq = \freq.kr(440);
	var width = \width.kr(0.5);
	var gate = \gate.kr(1);
	var attack = \atk.kr(0.01);
	var decay = \dec.kr(0.3);
	var sustain = \sus.kr(0.5);
	var release = \rel.kr(0);
	var env = EnvGen.kr(Env.adsr(attack, decay, sustain, release), gate, doneAction:2);
	var sig = Pulse.ar(freq, width, amp);
	Out.ar(out, Pan2.ar(sig * env, pan));
}).add;
)
