import("stdfaust.lib");

// Parameters
baseFreq = 440; // Base frequency of the sine wave

// Expose parameters using UI elements
// modFreq = hslider("modFreq[style:knob]", 1.0, 0.1, 10.0, 0.1);
// modDepth = hslider("modDepth[style:knob]", 100, 0, 200, 1);

modFreq = hslider("freq",1,1/10,100,0.1) : si.smoo;
modDepth = hslider("depth",100,100,2000,0.1) : si.smoo;

// Modulated frequency: base frequency + slow sine wave modulation
modulatedFreq = baseFreq + (modDepth * os.osc(modFreq));

process = os.osc(modulatedFreq);
