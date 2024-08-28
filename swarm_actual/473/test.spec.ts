export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const array0 = new Float32Array([0.0, 0.5, -0.25, 0.0, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, 0.5, -0.5, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, -0.75, 0.25, 0.5, 0.75, 1.0, 0.5, 1.0, 0.75, 0.75, 0.5, -0.75, -1.0, -0.5, -1.0, -0.75, 0.25, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, -0.25, 0.75, 0.75, -0.25, 0.0, 0.75, 0.5, -0.25, -1.0, 0.5, -0.5, -1.0, -1.0, -1.0, -0.25, 0.5, -0.75, 1.0, 0.25, 0.75, 0.0, 1.0, -0.5, 0.0, -0.5, -1.0, -1.0, 0.25, -0.25, -0.25, 0.0, 1.0, -0.75, 0.5, 0.75, 0.5, 0.5, 0.25, -0.25, 0.25, 1.0, -1.0, 0.75, 0.0, -1.0, -0.5, 0.0, 0.5, -0.5, 0.75, 0.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.5, 0.25, -0.5, ]);
    const array1 = new Float32Array([1.0, -1.0, 0.75, -1.0, 0.0, 0.5, 0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 0.25, -0.25, 0.5, 0.0, 0.5, 0.75, -0.5, -0.25, -1.0, 1.0, -0.5, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, -0.25, -1.0, -0.5, 0.0, 1.0, -1.0, 1.0, 1.0, -0.25, -0.25, -1.0, 0.0, -0.5, -0.75, 0.5, 1.0, -0.75, 1.0, 0.25, -0.75, -0.75, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, -1.0, 0.5, -0.75, 1.0, -0.5, -1.0, -0.25, 0.0, 1.0, -0.25, 0.5, -0.75, -0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 1.0, -0.75, -1.0, 0.0, 0.25, 1.0, -1.0, 0.75, 0.25, -0.75, 0.25, -1.0, 0.75, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, 0.0, -0.5, 0.75, 0.0, 0.0, -0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-0.5, 0.75, 0.5, 1.0, -0.25, 0.5, 0.0, 0.5, 0.25, 0.25, -0.75, 0.75, 1.0, -1.0, -0.75, 0.75, -1.0, 0.75, 0.5, -0.75, 0.75, 0.25, 1.0, -0.5, 0.75, 0.0, 0.0, 0.5, 0.5, -1.0, 0.0, -0.75, 0.75, 0.75, -0.25, -0.5, 0.75, 0.0, 0.75, -0.75, 0.25, -0.5, -0.25, -0.25, 0.75, 1.0, 0.75, -0.5, 0.75, -0.25, 0.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, 0.5, 0.0, 0.75, 0.5, 0.5, 0.0, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, -0.25, 1.0, -0.25, 0.25, 0.75, 0.0, -1.0, -1.0, 1.0, -0.5, 1.0, -0.75, -0.5, -0.5, 0.25, -0.5, -0.75, 0.25, -1.0, 0.25, 0.75, 0.25, -0.5, 0.25, 1.0, -0.75, 0.75, ]);
    const array3 = new Float32Array([-0.75, -0.5, 0.0, 0.25, 0.0, -0.75, 0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.75, -0.5, 1.0, -0.25, -0.75, 1.0, -0.75, 0.75, -1.0, -0.5, 1.0, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, 1.0, 0.5, -0.75, 0.25, -0.5, 0.5, 0.25, -0.5, -0.75, -1.0, -0.25, 0.25, 0.5, 1.0, 1.0, -0.5, -0.5, 0.25, 0.0, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, 1.0, 0.0, -0.5, -0.25, -0.25, -1.0, 1.0, 0.25, -0.25, 0.75, -1.0, 0.5, 0.0, 1.0, -1.0, 0.25, 0.75, -1.0, -0.25, -0.25, -1.0, 0.0, -1.0, -0.75, 0.25, 0.0, 0.25, -0.25, -1.0, -1.0, 0.75, 0.75, 0.0, -1.0, 0.5, 0.75, 0.25, 0.0, -1.0, 0.0, 0.0, -0.25, -1.0, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([0.5, -0.75, -0.25, 0.0, 0.0, -0.75, -1.0, 0.0, -0.25, 0.75, -1.0, -1.0, 0.25, 0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 0.75, -0.25, 0.75, -0.25, -1.0, -0.5, -0.75, 0.25, 0.75, -1.0, 0.75, 0.0, -0.25, 0.0, -1.0, 0.75, 0.25, -0.75, -0.5, 1.0, 1.0, 1.0, -1.0, 0.0, -0.25, -1.0, -0.75, 0.25, 1.0, 1.0, 0.75, 0.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.0, -0.75, 0.25, 0.75, 0.5, -0.5, -0.75, -0.75, -0.25, 0.5, 1.0, 0.75, 0.0, -0.25, 0.5, 0.25, -0.25, -1.0, -0.25, 0.75, 0.0, -0.5, 0.0, 0.5, -0.25, -1.0, 0.25, -0.75, 0.0, -0.25, 0.5, 1.0, -1.0, -1.0, -1.0, 0.5, -1.0, -0.25, 0.75, 1.0, 0.0, -0.5, 1.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array5 = new Float32Array([-0.75, -0.25, -0.5, 0.25, 0.0, 0.25, -0.5, 0.5, -1.0, 0.5, -0.25, -0.25, 0.0, 1.0, 0.75, -0.75, 0.25, 1.0, -1.0, 0.5, -0.75, -0.25, -1.0, 0.75, -0.25, -0.5, 0.75, 0.25, -0.25, -1.0, 0.25, 0.75, 0.0, 0.75, -0.5, 0.5, 0.5, 1.0, -1.0, 0.5, -0.25, 1.0, 0.0, 1.0, 0.5, -0.25, 0.5, 0.75, -0.5, -0.25, 0.25, 0.75, 0.0, 0.5, -0.5, -1.0, -0.25, 0.75, -0.25, 1.0, 0.5, -1.0, 0.0, 0.0, -0.75, -0.25, 0.75, -0.5, 0.75, 1.0, -1.0, -0.25, 0.0, -0.75, -1.0, -0.75, 0.75, 0.0, -0.25, 1.0, -0.25, 0.75, -0.75, 0.75, -0.75, -0.5, 1.0, 0.75, -0.25, 0.75, -0.75, -0.25, 1.0, -0.25, 1.0, -0.25, 0.0, 0.25, -1.0, 0.0, ]);
    device20.pushErrorScope("validation");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    command_encoder200.pushDebugGroup("mygroupmarker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array6 = new Float32Array([0.5, 0.25, -1.0, -0.5, -1.0, -1.0, 0.0, 0.5, -0.5, 0.75, 0.75, 1.0, 0.25, -0.25, -0.5, 0.75, -1.0, -0.5, 0.75, -1.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.5, 0.5, 0.75, -0.75, -0.25, -0.25, 0.5, -0.75, 0.25, -0.25, 0.25, -0.5, -1.0, 1.0, -1.0, -0.25, -1.0, -0.5, 0.25, -1.0, 0.75, -1.0, -0.5, 0.5, 1.0, -0.25, -0.75, -0.75, -0.75, 0.75, -1.0, 0.75, 0.75, -0.75, -1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, -1.0, -0.5, 0.0, 0.75, 0.5, 1.0, -1.0, 0.75, 0.0, 0.75, 0.0, 1.0, 1.0, 0.5, -0.5, -0.75, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.5, 0.5, -0.25, -0.25, -0.75, ]);
    device10.pushErrorScope("internal");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const array7 = new Float32Array([0.5, 1.0, 1.0, -0.25, -1.0, -0.25, 0.25, 1.0, -1.0, -0.5, 0.75, 0.75, 0.75, 0.5, 0.75, -0.25, 0.75, 1.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.25, 1.0, 0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 0.0, 0.25, 0.25, -0.25, 0.75, 0.5, -0.25, -0.25, -0.25, -0.5, 0.75, -0.5, 0.25, 0.75, 0.0, 0.75, 0.25, 0.75, 0.5, 0.25, 0.75, 0.75, 1.0, 0.5, -0.5, 1.0, -0.75, 0.0, -1.0, 1.0, -0.25, 0.0, -0.5, 0.0, 0.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.0, 0.25, 0.75, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 0.0, 1.0, 0.0, -0.25, -0.25, -1.0, 0.75, 0.0, -0.5, 1.0, 0.75, 1.0, 0.5, -0.75, -0.25, -0.25, -0.25, -1.0, -0.25, 0.0, ]);
    device10.pushErrorScope("internal");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder002.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    device50.pushErrorScope("validation");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    command_encoder002.insertDebugMarker("mymarker");
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0020.popDebugGroup()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const array8 = new Float32Array([1.0, -0.5, -0.25, 1.0, 0.5, -0.25, -0.25, 0.75, -0.5, -0.75, 0.5, -0.5, -0.75, 0.0, -0.5, 0.75, 0.5, 0.25, 0.0, 1.0, -1.0, -0.75, 0.5, 1.0, -0.5, 0.75, 0.25, 0.25, -1.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.25, -1.0, -0.5, -0.25, -1.0, 0.75, 0.75, -0.25, 0.0, 0.75, -0.5, -0.75, -0.5, 0.25, -0.75, 0.25, -0.5, 1.0, -0.75, -0.25, 0.75, -0.75, -1.0, 0.0, -0.5, 0.5, 0.5, 0.0, -1.0, 0.5, 0.0, -0.75, 1.0, 0.0, -0.5, 0.25, -0.25, 0.75, -0.25, -0.75, 0.0, -1.0, 1.0, -0.5, -1.0, 1.0, -0.5, 0.5, 0.75, 0.0, 0.25, -0.5, 1.0, -0.75, -0.5, -0.5, -0.25, -0.25, -1.0, -0.25, 0.5, -0.75, 0.75, -0.25, 0.5, -0.75, ]);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const array9 = new Float32Array([0.75, 0.75, 1.0, 0.0, 0.0, 0.5, 0.0, 0.5, -0.75, 0.75, 0.0, 0.25, 0.25, -1.0, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, 0.0, -1.0, 0.25, -0.25, -0.75, 0.25, -0.25, -1.0, 0.0, -1.0, -1.0, -0.75, -1.0, -0.5, 0.0, 0.0, -1.0, -0.5, 1.0, 0.5, 0.25, 0.25, 0.5, 0.0, -0.25, 0.5, -0.25, 0.25, 0.25, 0.0, 0.0, 1.0, -1.0, -0.5, 0.0, 0.25, 0.5, -0.5, 0.75, -0.25, -1.0, 0.25, -0.75, -0.75, 0.25, -0.25, 1.0, -0.75, 0.5, -1.0, 0.5, 0.75, 0.0, 0.0, -0.75, -1.0, 0.75, -1.0, -0.25, -0.75, 0.25, 1.0, -0.5, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.0, -0.75, 0.0, 0.75, 0.25, 0.0, -0.75, -1.0, 0.0, 0.25, 1.0, ]);
    device60.pushErrorScope("out-of-memory");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder400.popDebugGroup()
    command_encoder100.popDebugGroup()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder2000.popDebugGroup()
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder0040.popDebugGroup()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    device40.pushErrorScope("validation");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    const array10 = new Float32Array([0.75, -0.75, -0.75, 0.0, 1.0, 0.75, 1.0, -0.5, -0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 0.0, 0.5, 0.5, 0.0, -0.25, -0.75, 0.25, 0.75, 0.75, 0.5, 0.5, -0.25, 1.0, 0.25, -0.5, -1.0, 0.0, 0.75, 0.0, 0.75, -0.75, 1.0, -0.75, 0.5, -0.5, -1.0, 1.0, -0.75, 0.5, 0.5, -0.75, -0.5, 1.0, 0.75, 0.25, 0.25, -0.25, -0.25, 0.5, 1.0, -0.25, -0.75, -1.0, 0.0, 1.0, 0.25, -0.25, 0.0, -0.5, 0.25, 0.0, 0.25, -0.5, -0.25, 0.25, 0.5, 0.0, -0.75, -1.0, 0.75, -0.75, 0.25, -1.0, -0.75, -0.75, -1.0, -0.5, 0.25, -0.5, -0.25, 0.5, -0.75, 1.0, 0.75, 0.25, 1.0, -0.75, 0.0, -1.0, -1.0, -1.0, 0.5, -1.0, 1.0, 0.0, 0.75, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.popDebugGroup()
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder600.popDebugGroup()
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4000.popDebugGroup()
    
    const array11 = new Float32Array([0.5, 0.25, 0.0, -1.0, -0.5, -0.5, -1.0, 1.0, 1.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.25, -0.75, 0.5, 0.75, -0.25, 0.0, -0.75, 1.0, -0.25, -0.5, -0.5, -1.0, 0.25, 0.25, -0.25, 0.5, -0.75, 0.0, 0.5, 1.0, 0.75, -0.5, 0.0, 0.25, -1.0, -0.25, 0.25, -0.75, 0.75, -1.0, 0.25, -1.0, -0.25, -0.5, -0.25, -1.0, -0.25, -0.5, 1.0, 0.25, -0.75, 0.5, -0.5, 0.0, -1.0, -1.0, 0.5, 0.25, 0.25, 1.0, 0.25, 0.75, 0.25, 0.75, 0.5, 0.25, 0.75, -1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.75, 1.0, -1.0, -0.75, -0.25, 0.0, 0.75, 0.0, -0.5, 0.5, -1.0, -0.75, -0.75, -0.5, 0.5, 0.0, -1.0, -0.5, 1.0, -0.25, 1.0, -0.75, 0.0, ]);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder0020.popDebugGroup()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    
    command_encoder500.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder203.popDebugGroup()
    command_encoder001.insertDebugMarker("mymarker");
    device70.pushErrorScope("internal");
    
    device20.pushErrorScope("validation");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device50.pushErrorScope("internal");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    command_encoder500.pushDebugGroup("mygroupmarker")
    const array12 = new Float32Array([0.5, 1.0, 0.75, 0.5, 1.0, -1.0, 0.0, -0.25, 0.75, -0.75, -0.75, 0.25, -0.5, 0.25, -0.75, 0.25, 0.5, -0.75, 1.0, -1.0, 1.0, 0.0, 0.0, -1.0, -1.0, -0.75, 0.5, -0.25, 1.0, -0.5, -0.75, -0.5, -1.0, -1.0, -0.25, 0.75, 0.0, 0.25, -0.5, -0.5, -0.25, 1.0, 0.0, 0.25, 0.0, 0.25, -1.0, -0.75, -0.5, 0.0, -0.5, 0.75, 0.25, -1.0, 0.25, 0.5, 1.0, 0.5, 0.75, -1.0, 0.25, -0.25, -1.0, -1.0, 0.75, 0.0, 0.25, 0.75, 0.75, 0.0, -1.0, 0.25, -0.25, -0.25, -0.25, 0.75, -0.5, -0.5, 0.25, -1.0, 0.0, 0.5, 0.25, 0.75, -1.0, 0.25, 1.0, 0.25, -0.5, 0.0, 0.0, 1.0, 0.25, -0.75, 0.75, 0.5, 0.75, -0.25, 0.0, 0.75, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder500.popDebugGroup()
    
    
    command_encoder601.popDebugGroup()
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    compute_pass_encoder0020.popDebugGroup()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder204.insertDebugMarker("mymarker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder603.insertDebugMarker("mymarker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder0030.popDebugGroup()
    command_encoder602.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder4000.popDebugGroup()
    command_encoder203.pushDebugGroup("mygroupmarker")
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    device40.pushErrorScope("internal");
    device30.pushErrorScope("validation");
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const array13 = new Float32Array([0.25, 0.5, 0.75, -0.25, -0.5, -1.0, 0.5, 0.0, 0.5, -0.5, 0.0, -1.0, -1.0, 0.5, 0.0, 0.75, 0.75, -0.5, 0.5, -0.25, 0.25, 0.75, 1.0, 0.75, 0.5, -1.0, 0.0, 0.5, -0.25, 0.75, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, 0.25, 0.75, 0.75, 0.5, 0.0, -0.25, 1.0, -0.25, 0.0, -0.75, 0.0, -1.0, -0.75, -1.0, -1.0, -1.0, 0.0, 1.0, 1.0, -0.5, -0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 0.5, 0.25, 0.75, -0.25, 0.0, -0.25, 0.5, -1.0, 0.25, 0.0, 1.0, 0.5, -0.5, -0.25, 0.75, 0.5, 0.0, -0.25, -0.75, -0.25, 0.5, -0.25, -1.0, -0.75, 0.0, -0.25, 0.5, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, 0.25, 1.0, -1.0, -0.25, 0.75, ]);
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    command_encoder604.pushDebugGroup("mygroupmarker")
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    command_encoder207.insertDebugMarker("mymarker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    command_encoder204.popDebugGroup()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    compute_pass_encoder2050.popDebugGroup()
    
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    command_encoder206.pushDebugGroup("mygroupmarker")
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder208.insertDebugMarker("mymarker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2070.pushDebugGroup("group_marker")
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6010.popDebugGroup()
    device80.pushErrorScope("out-of-memory");
    device50.pushErrorScope("out-of-memory");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    compute_pass_encoder4000.popDebugGroup()
    command_encoder208.pushDebugGroup("mygroupmarker")
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    
    const array14 = new Float32Array([0.5, -0.75, 0.25, 1.0, 0.5, 0.5, -0.25, 0.0, -0.5, 0.75, -1.0, -0.75, -0.25, -0.25, -1.0, -1.0, 1.0, 0.5, 0.25, 1.0, -0.75, -1.0, 1.0, 0.0, -0.25, -0.25, -0.75, 1.0, -0.5, 0.5, 1.0, -0.25, -0.5, -0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.5, 0.25, -0.5, -1.0, 1.0, 0.75, 0.75, 0.0, 0.75, -0.25, 0.0, 0.5, 0.0, -0.5, 0.0, 0.25, -0.75, -0.75, -1.0, 1.0, 1.0, 0.0, 0.5, 0.0, 0.25, -0.25, -0.25, -0.25, 0.75, 0.75, 0.25, -0.25, 0.25, 0.75, -0.5, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, 0.75, -1.0, 0.75, 0.75, 0.5, 0.25, -1.0, 0.0, 0.25, 0.25, -0.25, 0.0, 0.25, 0.0, -0.5, 0.75, -1.0, ]);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2050.popDebugGroup()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    command_encoder503.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const command_encoder2010 = device20.createCommandEncoder({ label: "command_encoder2010" });
    
    device20.pushErrorScope("internal");
    command_encoder800.insertDebugMarker("mymarker");
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder2070.popDebugGroup()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device40.pushErrorScope("internal");
    
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const command_encoder2011 = device20.createCommandEncoder({ label: "command_encoder2011" });
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    command_encoder209.insertDebugMarker("mymarker");
    command_encoder208.insertDebugMarker("mymarker");
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder503.pushDebugGroup("mygroupmarker")
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    command_encoder2010.insertDebugMarker("mymarker");
    
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    compute_pass_encoder6000.popDebugGroup()
    
    
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    command_encoder2010.pushDebugGroup("mygroupmarker")
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    command_encoder503.insertDebugMarker("mymarker");
    
    compute_pass_encoder0000.popDebugGroup()
    command_encoder209.pushDebugGroup("mygroupmarker")
    device90.pushErrorScope("validation");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder503.popDebugGroup()
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder6040.popDebugGroup()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder2010.popDebugGroup()
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    command_encoder605.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    device30.pushErrorScope("internal");
    compute_pass_encoder2020.popDebugGroup()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder2011.pushDebugGroup("mygroupmarker")
    
    device60.pushErrorScope("internal");
    
    
    command_encoder502.popDebugGroup()
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    compute_pass_encoder0050.popDebugGroup()
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    command_encoder502.insertDebugMarker("mymarker");
    compute_pass_encoder2060.popDebugGroup()
    
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    const command_encoder2012 = device20.createCommandEncoder({ label: "command_encoder2012" });
    compute_pass_encoder6030.popDebugGroup()
    command_encoder103.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    command_encoder2012.insertDebugMarker("mymarker");
    command_encoder2012.insertDebugMarker("mymarker");
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    command_encoder2011.popDebugGroup()
    const compute_pass_encoder6060 = command_encoder606.beginComputePass({ label: "compute_pass_encoder6060" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder702.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    compute_pass_encoder2070.pushDebugGroup("group_marker")
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder503.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    command_encoder502.popDebugGroup()
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    
    const command_encoder2013 = device20.createCommandEncoder({ label: "command_encoder2013" });
    
    
    const compute_pass_encoder20120 = command_encoder2012.beginComputePass({ label: "compute_pass_encoder20120" });
    command_encoder605.popDebugGroup()
    const compute_pass_encoder20100 = command_encoder2010.beginComputePass({ label: "compute_pass_encoder20100" });
    compute_pass_encoder2000.popDebugGroup()
    
    
    compute_pass_encoder6000.popDebugGroup()
    
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    command_encoder209.popDebugGroup()
    command_encoder701.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder702.insertDebugMarker("mymarker");
    
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    command_encoder502.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const command_encoder607 = device60.createCommandEncoder({ label: "command_encoder607" });
    
    compute_pass_encoder2050.popDebugGroup()
    command_encoder605.insertDebugMarker("mymarker");
    
    compute_pass_encoder7000.popDebugGroup()
    device120.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pass_encoder8030 = command_encoder803.beginComputePass({ label: "compute_pass_encoder8030" });
    
    command_encoder208.insertDebugMarker("mymarker");
    const compute_pass_encoder12000 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12000" });
    command_encoder801.insertDebugMarker("mymarker");
    command_encoder103.popDebugGroup()
    command_encoder802.insertDebugMarker("mymarker");
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    compute_pass_encoder7030.pushDebugGroup("group_marker")
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    command_encoder605.insertDebugMarker("mymarker");
    
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    const compute_pass_encoder2090 = command_encoder209.beginComputePass({ label: "compute_pass_encoder2090" });
    const command_encoder608 = device60.createCommandEncoder({ label: "command_encoder608" });
    command_encoder608.insertDebugMarker("mymarker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    const command_encoder2014 = device20.createCommandEncoder({ label: "command_encoder2014" });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    
    command_encoder608.insertDebugMarker("mymarker");
    compute_pass_encoder2090.pushDebugGroup("group_marker")
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device20.pushErrorScope("internal");
    command_encoder401.insertDebugMarker("mymarker");
    const compute_pass_encoder2080 = command_encoder208.beginComputePass({ label: "compute_pass_encoder2080" });
    
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    
    command_encoder701.insertDebugMarker("mymarker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    
    const compute_pass_encoder6070 = command_encoder607.beginComputePass({ label: "compute_pass_encoder6070" });
    command_encoder702.insertDebugMarker("mymarker");
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder1201.insertDebugMarker("mymarker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    
    compute_pass_encoder20120.pushDebugGroup("group_marker")
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    compute_pass_encoder7030.popDebugGroup()
    device30.pushErrorScope("validation");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder8030.pushDebugGroup("group_marker")
    
    
    command_encoder103.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    command_encoder702.popDebugGroup()
    compute_pass_encoder6040.popDebugGroup()
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder502.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2040.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2090.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder2070.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder20120.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8030.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    command_encoder701.popDebugGroup()
}