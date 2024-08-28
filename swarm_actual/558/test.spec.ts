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
    const array0 = new Float32Array([0.25, 0.25, -0.5, -0.25, 0.5, 0.75, 0.5, 1.0, 0.75, 0.5, 0.5, 0.25, 0.75, -0.25, 0.25, 0.25, -0.5, 1.0, 0.75, 0.25, 0.0, -0.25, -0.25, 1.0, 0.75, 0.75, 0.75, -1.0, -1.0, -1.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.75, -1.0, -0.25, -0.5, 0.75, -0.25, -0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.25, -0.25, 0.75, -0.5, -0.5, -0.5, -0.5, 0.75, 0.75, -0.75, 1.0, 0.5, 0.5, 0.75, -0.25, -0.75, 0.25, 1.0, -0.5, 0.5, -0.75, 0.0, -0.25, -0.75, -1.0, -0.5, 0.75, -0.25, 0.75, 0.0, -0.25, -0.75, 1.0, 0.75, 0.0, 1.0, 0.75, 0.0, 0.25, -1.0, 0.5, -0.25, -0.5, 1.0, -1.0, -0.75, 0.25, 0.75, -1.0, 1.0, 0.25, 0.25, 0.75, ]);
    const array1 = new Float32Array([0.0, -1.0, -1.0, 0.25, -0.75, -0.5, -0.75, 0.5, 0.75, -1.0, 0.5, -0.5, 0.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.75, 1.0, 0.0, -1.0, -0.25, -0.25, -0.75, 1.0, -0.75, 0.75, -0.5, -1.0, 0.25, 0.25, -1.0, -0.75, 0.25, 0.0, -0.25, -0.5, 0.75, -0.5, 0.25, 0.5, -0.5, -0.5, -0.5, 0.25, 0.75, 0.25, -0.5, -1.0, 0.25, 0.5, 0.5, -0.75, -0.25, 0.25, 0.5, 0.5, 0.0, 0.75, 0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, -0.5, 0.75, 0.5, -1.0, 0.75, -1.0, 0.5, 0.25, 0.0, 1.0, -0.75, 0.75, 1.0, 0.25, -0.5, 0.0, -0.25, -0.5, 0.25, 0.75, -0.75, 0.0, -0.25, 1.0, 0.0, 0.25, 0.0, 0.5, 0.0, -1.0, -0.75, 0.25, -1.0, ]);
    const array2 = new Float32Array([-0.75, -0.75, -0.75, 0.25, 0.25, 1.0, 0.25, -0.25, 0.25, 1.0, -1.0, 0.25, -0.75, -0.75, -0.75, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 0.75, -0.5, 0.75, -0.25, -0.5, 0.75, 0.5, 0.0, 0.75, -0.5, -0.75, -0.25, 0.25, -0.25, -0.5, -1.0, 0.25, -0.75, 1.0, 0.25, 0.0, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, -0.25, -0.75, 0.75, 0.75, -1.0, 0.25, 0.5, -0.5, -1.0, 0.0, 0.5, 1.0, 0.75, -0.25, 0.0, 0.0, -0.75, 0.25, -0.5, -0.75, 0.0, -0.5, -0.5, -0.75, 1.0, -0.25, 0.75, 1.0, 0.25, -1.0, -0.75, 0.75, -0.75, 0.75, -0.25, 0.0, 1.0, -1.0, 0.0, 0.0, 0.0, -0.5, -0.5, -1.0, 0.25, 0.5, 0.0, -0.75, -1.0, 0.25, 0.75, 1.0, ]);
    const array3 = new Float32Array([0.75, 0.25, -0.5, 0.5, -0.75, -1.0, -0.75, -1.0, 0.5, -0.75, 0.0, -1.0, -1.0, -1.0, -1.0, 0.0, 0.25, -0.75, 0.25, -1.0, -0.75, 0.5, -1.0, 0.0, -0.25, -0.75, 1.0, 0.5, 0.75, -1.0, 0.0, -1.0, 0.75, 0.25, 0.25, 0.75, 0.5, 0.75, -0.75, 1.0, -0.25, -0.25, 0.25, 0.5, -1.0, 1.0, 0.25, 1.0, 0.5, 0.5, -0.25, 0.75, 0.5, -0.5, 0.75, -1.0, 0.75, 0.0, -1.0, 0.0, -1.0, 0.25, 1.0, 0.5, -1.0, 0.0, 1.0, -0.75, -0.5, -0.25, -0.5, -0.25, -1.0, 1.0, -0.25, -0.75, -0.75, 1.0, 0.0, 0.75, 0.0, 0.0, -0.5, 0.25, 0.75, 0.75, 0.0, -0.25, -0.25, -0.25, 0.25, -0.75, 0.75, -0.5, 0.0, -0.5, 0.25, 0.0, -0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([0.75, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, -0.5, 0.5, 0.25, 0.25, -0.75, -0.5, -1.0, -0.75, 0.75, -0.75, -1.0, 0.5, 0.75, 0.5, 1.0, 1.0, 0.75, -0.75, -0.75, -0.5, 0.75, 0.0, -0.25, 0.25, 1.0, -0.75, 0.5, 0.5, -0.75, 0.25, -1.0, -0.5, -0.25, 0.25, 0.25, -0.75, 0.0, -0.75, 1.0, -1.0, -1.0, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 0.25, 0.75, 0.0, -0.75, 0.5, -0.5, -0.25, -0.75, -0.25, -0.5, 0.0, 0.25, 0.25, -1.0, -0.25, 0.0, -1.0, 0.25, -0.75, 1.0, 0.0, -0.25, 1.0, 0.25, 0.0, 0.75, 0.75, -1.0, -0.5, -0.75, -0.75, 1.0, 0.25, 1.0, 0.25, -0.75, -1.0, -0.75, 0.0, 0.25, 0.25, 0.5, -0.25, -1.0, 0.25, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array5 = new Float32Array([-0.25, -0.75, -0.75, -0.75, 0.25, 0.75, -0.25, 0.25, 0.5, -0.75, 0.0, 0.25, 0.5, -0.5, -0.75, 0.0, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, -1.0, 0.75, 0.5, 0.0, 0.75, -0.75, 1.0, -0.25, 0.0, 0.5, 1.0, 0.75, -0.75, 0.0, 0.5, -0.25, 1.0, -1.0, 0.0, 0.0, 1.0, -0.25, -0.5, -1.0, 0.0, -0.5, -0.5, 1.0, 0.0, 0.0, -0.75, 0.25, 0.5, 0.25, -0.75, -0.25, 0.0, -0.25, -0.5, 0.75, -0.5, 0.25, -1.0, 1.0, -0.5, 1.0, -0.25, -0.25, -0.25, 1.0, 1.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, 0.75, 1.0, 1.0, 0.0, 0.75, 0.75, 1.0, -0.25, -1.0, 0.75, 0.5, -0.25, 0.75, ]);
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder100.popDebugGroup();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device00.pushErrorScope("validation");
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder102.popDebugGroup();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder000.popDebugGroup();
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder003.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    const array6 = new Float32Array([0.75, -1.0, -0.25, -0.5, 0.5, -0.5, 0.25, 0.75, 0.5, 0.0, -0.75, -0.5, -0.75, 0.75, 0.0, -0.5, 1.0, 0.0, 0.0, 1.0, -0.5, 0.0, 0.25, -0.5, 0.75, -1.0, -0.25, 0.25, -0.5, 0.0, -1.0, -0.5, 1.0, 0.5, 0.0, 0.5, 0.5, -0.75, -1.0, -0.25, 1.0, -0.5, 0.0, -0.5, 1.0, -1.0, -0.5, -0.75, 0.0, -0.5, 0.75, 0.0, -0.25, 0.5, -0.5, -0.25, 0.5, -0.25, 0.5, 0.5, 1.0, 1.0, 0.5, -0.75, 0.25, -0.5, 0.25, 0.0, 0.25, -0.25, -0.75, -0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.5, 0.75, -0.5, -1.0, 0.5, -1.0, -0.5, 0.5, -0.25, 1.0, -1.0, 0.5, 0.25, -0.25, 0.5, 0.25, -0.5, 0.5, -1.0, -0.5, 0.5, -1.0, -0.75, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    command_encoder004.insertDebugMarker("mymarker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    command_encoder004.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder1050.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    command_encoder206.insertDebugMarker("mymarker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1050.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder206.insertDebugMarker("mymarker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.pushErrorScope("internal");
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder204.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder206.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const array7 = new Float32Array([-1.0, -0.75, 0.75, -0.5, -1.0, -0.25, -0.25, 0.0, 0.75, 0.25, 0.0, 0.0, 0.5, 0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 1.0, 0.75, -0.5, -0.75, 0.0, 1.0, 0.25, 0.0, 1.0, -1.0, -0.75, -1.0, 0.25, -0.5, -0.75, 0.5, -1.0, -0.75, -1.0, -1.0, 0.0, 0.5, -0.75, 0.5, 0.5, 0.25, 0.25, 0.25, -1.0, -0.25, 0.25, -0.5, 0.0, -0.5, 0.0, 0.25, 0.5, -0.5, 0.75, 0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -1.0, -0.5, -0.5, -0.75, 0.25, 0.25, -0.75, 0.25, -0.5, 0.5, 0.5, -0.75, -0.5, 0.25, 1.0, 0.5, 0.5, 0.0, 0.5, -0.5, -1.0, 0.25, -0.5, -0.5, -0.25, -1.0, 1.0, -0.5, 1.0, 1.0, -0.75, 1.0, -1.0, -0.5, 1.0, 0.5, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder204.insertDebugMarker("mymarker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    command_encoder106.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    const array8 = new Float32Array([1.0, 0.25, -0.5, 0.75, -0.25, -1.0, 0.75, 1.0, -0.75, 0.25, 0.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, -0.25, -0.75, 0.75, 0.75, -0.25, 0.0, -0.5, -0.5, -0.75, 0.0, -0.5, -1.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.75, -0.5, 0.0, 0.75, -0.75, 0.0, 0.75, 1.0, -0.25, 0.0, -0.5, -0.5, -0.5, 0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 0.75, -1.0, 0.5, 1.0, 0.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, -0.25, -0.5, -0.25, 0.5, 0.25, 0.75, 0.25, 0.0, 0.0, 0.25, 0.75, 0.75, 0.0, 1.0, 0.25, -1.0, 0.0, -1.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.75, -0.25, -0.5, 0.5, 0.25, -1.0, 0.0, -1.0, 0.25, -0.5, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder2020.insertDebugMarker("marker")
    command_encoder106.insertDebugMarker("mymarker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder1070.insertDebugMarker("marker")
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder1080.insertDebugMarker("marker")
    device30.pushErrorScope("validation");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder2040.insertDebugMarker("marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    command_encoder106.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder109.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder001.popDebugGroup();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder102.popDebugGroup();
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    command_encoder1010.pushDebugGroup("mygroupmarker")
    command_encoder109.pushDebugGroup("mygroupmarker")
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder109.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    const compute_pass_encoder10100 = command_encoder1010.beginComputePass({ label: "compute_pass_encoder10100" });
    const array9 = new Float32Array([-0.75, 0.75, -0.25, -1.0, 0.5, 1.0, -0.5, 0.25, 0.25, -0.75, -0.75, 1.0, -0.5, -0.5, 1.0, 0.5, 0.0, -0.5, 1.0, 1.0, -0.25, 1.0, -0.5, -0.75, -0.25, 1.0, -1.0, 0.25, -0.25, -1.0, 0.5, -0.25, -0.5, 0.25, -1.0, -0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 1.0, -0.75, 0.25, 0.5, 0.5, -0.75, 0.5, -1.0, -0.75, 0.0, 1.0, -1.0, -1.0, -1.0, 1.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.0, 0.75, -0.25, 0.5, -0.25, 1.0, -0.75, -0.5, -0.5, 1.0, -0.75, -0.25, -0.25, 0.0, 1.0, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.5, 0.25, 0.75, -0.5, -0.25, 0.25, -0.75, 0.25, 1.0, -0.75, 1.0, 0.75, -1.0, 1.0, -0.75, 0.25, -0.75, 0.75, ]);
    command_encoder109.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder301.pushDebugGroup("mygroupmarker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder106.insertDebugMarker("mymarker");
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder109.insertDebugMarker("mymarker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    compute_pass_encoder10100.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const array10 = new Float32Array([-0.25, -0.75, -0.5, 0.0, 0.5, 0.75, 0.5, 0.75, -0.25, 0.75, 1.0, -0.75, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, 0.0, 0.5, 1.0, 0.0, 0.0, 0.75, 0.75, 0.0, -0.5, 0.5, 0.5, -0.25, 0.0, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 0.75, -0.5, -1.0, -0.75, 0.25, 0.75, 0.75, 1.0, -0.25, 0.5, 0.5, 0.25, 0.75, -1.0, -1.0, -0.5, 0.25, 0.25, 0.75, 0.5, 0.75, -1.0, -0.75, 0.0, -0.25, -1.0, -1.0, -1.0, 0.75, 0.25, 0.5, 0.0, 0.75, -0.75, 0.25, 0.25, 0.5, 1.0, 0.25, 1.0, -0.75, 0.0, 0.25, 1.0, 0.0, 0.5, -0.25, -0.5, 0.0, -0.75, -1.0, -1.0, 1.0, -0.75, 0.5, -0.5, -0.25, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder2060.insertDebugMarker("marker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder2040.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder002.popDebugGroup();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder1070.insertDebugMarker("marker")
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder2060.insertDebugMarker("marker")
    command_encoder109.insertDebugMarker("mymarker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const array11 = new Float32Array([0.5, -1.0, 1.0, -0.25, 1.0, 0.0, -1.0, -0.5, -0.25, 0.0, -0.5, 0.0, -1.0, 0.75, 1.0, -1.0, 0.0, 0.25, -1.0, 0.25, 0.0, 0.75, 0.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.5, -0.25, 0.5, 0.25, 0.75, -0.5, 0.25, 0.75, 0.5, -0.75, -1.0, -0.5, 0.75, -0.5, 1.0, -0.25, 0.0, -0.25, 0.0, -1.0, -0.75, 0.5, -0.25, 0.0, 1.0, -0.5, -1.0, -1.0, -0.5, -0.75, 0.5, -0.25, -0.5, -0.75, -1.0, -0.5, -0.25, -0.25, -1.0, 0.5, 1.0, -0.75, 0.25, 1.0, 0.5, -0.25, 0.0, 0.75, -0.75, -0.5, 0.5, 1.0, 0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -0.5, -1.0, -0.75, -0.75, 0.5, 0.75, -0.75, 1.0, 0.5, 0.5, 0.5, 0.0, -0.25, -0.75, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1080.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    compute_pass_encoder10100.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    compute_pass_encoder1080.insertDebugMarker("marker")
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder109.insertDebugMarker("mymarker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder1050.insertDebugMarker("marker")
    command_encoder301.insertDebugMarker("mymarker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device50.pushErrorScope("out-of-memory");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder202.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1090 = command_encoder109.beginComputePass({ label: "compute_pass_encoder1090" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder10110 = command_encoder1011.beginComputePass({ label: "compute_pass_encoder10110" });
    compute_pass_encoder1090.pushDebugGroup("group_marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder1012 = device10.createCommandEncoder({ label: "command_encoder1012" });
    device40.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder1060.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder102.popDebugGroup();
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder10110.pushDebugGroup("group_marker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2060.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device70.pushErrorScope("validation");
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    command_encoder1012.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    compute_pass_encoder10100.insertDebugMarker("marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder10100.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    command_encoder700.insertDebugMarker("mymarker");
    render_bundle_encoder302.popDebugGroup();
    compute_pass_encoder2070.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder5000.insertDebugMarker("marker")
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device60.pushErrorScope("validation");
    compute_pass_encoder2060.insertDebugMarker("marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    command_encoder700.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder102.popDebugGroup();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder10110.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    compute_pass_encoder10110.insertDebugMarker("marker")
    compute_pass_encoder6010.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder2070.pushDebugGroup("group_marker")
    command_encoder006.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder208.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const array12 = new Float32Array([1.0, -1.0, 0.25, 1.0, 0.75, -0.5, -0.75, 0.25, -0.5, 0.25, 0.5, -0.25, 0.0, 0.0, -0.5, -0.5, -0.25, 0.75, -0.75, 0.0, -0.25, -0.75, 0.5, -0.25, -0.75, 1.0, 0.0, -1.0, -0.75, 1.0, -0.25, 0.5, -0.75, -0.5, 1.0, -1.0, 0.75, -1.0, 0.25, 0.75, -0.5, 0.5, -0.75, 0.25, 0.75, 1.0, -1.0, -0.75, 0.0, 0.25, -0.25, 1.0, 0.0, -0.75, -0.75, 0.5, -0.75, -0.5, -0.5, 0.0, 0.0, 0.25, 1.0, 0.75, -1.0, 0.75, -0.5, -0.75, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -0.25, -0.5, 0.25, -1.0, 0.5, 1.0, -0.75, -0.75, -0.75, 0.25, -0.5, 0.5, 0.5, 0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.25, -0.75, ]);
    command_encoder208.insertDebugMarker("mymarker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder1070.insertDebugMarker("marker")
    command_encoder604.insertDebugMarker("mymarker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder1060.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    command_encoder604.pushDebugGroup("mygroupmarker")
    command_encoder603.insertDebugMarker("mymarker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    command_encoder007.pushDebugGroup("mygroupmarker")
}