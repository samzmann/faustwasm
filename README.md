I made a simple custom DSP in `test/sam1.dsp`

It has two sliders for `freq` and `depth`. Thos parameters will be exposed as `sam1/freq` and `sam1/depth`. As far as I understand we must create UI elements to expose parameters. Later, we can choose to render this UI or not (in this test it isn't).

To build, first run `npm run build` (required on first build to build faust libraries).
Then run `npm run b`, it runs `scripts/faust2wasm.js`, and overwrites the `test/out` dir. Feel free to modify the `b` script in package.json.

You need to serve that folder on a local server, eg. `python3 -m http.server 8080`, and then open the `index.html` file.

You can modify `test/out/index.js`: for example you can call `faustNode.getParamValue('/sam1/freq')` to modify the `freq` param.

Available methods are documented in [FaustDspInstance.ts](https://github.com/grame-cncm/faustwasm/blob/master/src/FaustDspInstance.ts) and other files in the src dir of the [faustwasm Github](https://github.com/grame-cncm/faustwasm).