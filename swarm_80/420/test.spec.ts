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
    
    const array0 = new Float32Array([1.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.5, 1.0, 1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.0, 0.0, -0.75, -1.0, -1.0, 1.0, 0.0, -0.75, 0.75, 0.75, 0.75, 0.75, -1.0, 0.5, 0.75, 0.75, 0.25, -0.5, 0.5, -0.25, 0.0, -0.5, -1.0, 0.25, 0.75, 0.75, 1.0, -0.75, -0.75, 0.5, 0.5, 1.0, -0.75, -1.0, 1.0, 0.75, -1.0, -0.5, -0.5, 0.0, -0.75, -0.5, -0.5, 0.0, -0.5, -0.25, -0.5, 0.25, 0.5, 1.0, 0.5, 0.25, 0.0, 0.75, -0.75, 0.25, 0.25, 0.0, -1.0, 0.0, 0.25, 0.0, 0.5, -0.25, 0.75, -0.5, 0.5, 0.5, -0.75, -0.75, -0.25, -0.25, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, 0.5, 0.0, -0.75, 0.75, -0.75, -1.0, 0.0, 1.0, ]);
    
    
    const array1 = new Float32Array([0.75, 0.0, 1.0, 1.0, 0.75, -1.0, 0.5, 0.5, -0.5, -0.25, 1.0, -0.75, -1.0, -0.5, 1.0, -0.25, -1.0, 0.25, -0.5, 0.5, -0.75, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -0.5, -1.0, 0.5, 0.0, -0.75, 0.25, 1.0, -1.0, -0.25, 0.5, 1.0, 0.0, 0.0, -0.25, 0.75, 0.0, 0.5, 1.0, 0.75, -1.0, 0.75, 1.0, -0.25, -1.0, -0.25, 1.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 0.25, -0.75, -0.75, 0.25, 0.25, -1.0, -0.75, 1.0, -0.25, -1.0, 0.5, 0.5, -0.75, -0.75, 0.0, -0.25, -1.0, 1.0, 0.0, 1.0, -1.0, 0.75, 0.0, 1.0, 0.25, -0.5, -0.25, -0.75, 0.25, 0.5, 0.0, -0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([0.0, -0.25, 1.0, -0.5, 0.25, -0.5, 1.0, 1.0, -0.25, 0.0, 1.0, 0.5, 0.0, -1.0, 0.25, 0.75, 0.0, 0.5, 0.75, 0.75, -0.25, -0.75, 0.75, 0.25, -0.25, 1.0, -0.25, 0.5, -0.5, 0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.75, 0.75, 0.5, 0.5, -0.25, -1.0, 1.0, 0.5, -0.75, 0.75, -0.25, 1.0, -0.5, -0.25, 0.75, 0.25, 1.0, 0.0, 1.0, 0.75, 0.5, 0.25, 0.0, 0.0, 0.25, -0.25, 0.5, -0.75, -0.5, -1.0, 0.5, 0.75, 0.75, -1.0, 0.0, -0.75, 0.25, -0.75, -1.0, -0.25, 1.0, 1.0, -1.0, -0.25, -0.75, -1.0, 0.25, 0.0, -0.25, 0.25, -1.0, 0.25, -1.0, -1.0, 0.25, -0.5, -1.0, -0.25, -0.25, -0.5, -1.0, -0.25, -0.25, -0.75, ]);
    const array3 = new Float32Array([-0.75, 0.25, 0.0, -0.75, -1.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.25, -0.5, 0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 0.5, 0.75, 0.0, 1.0, 0.75, -0.75, 1.0, -0.25, 0.75, 0.75, -1.0, 0.5, 0.0, -1.0, 1.0, 0.0, 0.0, 0.75, 0.25, 0.25, -1.0, -0.5, -0.75, -0.5, -0.25, 0.25, -0.75, 1.0, 1.0, -0.75, 0.25, 0.5, 0.0, -1.0, 0.0, 0.0, 0.25, -0.25, 1.0, 0.5, -0.5, -0.25, 0.75, -1.0, 0.0, 0.0, -1.0, 1.0, 1.0, -1.0, 0.0, 0.25, 0.75, 0.0, -0.75, -0.5, -0.5, 0.0, -1.0, -1.0, 0.5, 0.5, 0.5, 1.0, 1.0, -0.5, -0.25, 1.0, 0.0, 0.25, -0.25, 1.0, -0.25, 0.0, -0.25, 0.75, -0.25, -0.75, -0.25, 0.75, -1.0, 0.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array4 = new Float32Array([0.0, -0.25, -0.25, 0.75, -0.25, 0.25, -0.5, -0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, 0.75, 1.0, 0.5, 0.5, -0.25, -1.0, -1.0, 0.5, 0.5, 0.0, 0.0, 0.5, -0.75, -0.5, 0.75, -1.0, 0.0, 0.25, -0.5, 0.5, 0.75, -0.75, -0.75, 0.5, 0.5, -1.0, -0.75, 0.75, 1.0, 1.0, 0.5, -0.75, 0.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.25, 1.0, -0.75, -0.25, -1.0, 0.25, -1.0, 0.0, 0.0, 0.0, 0.25, 0.5, 1.0, -1.0, 0.0, -1.0, -0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 0.25, -0.5, 0.5, 0.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.25, 0.0, -0.5, 0.75, -1.0, -1.0, 0.5, 0.25, 0.25, 0.75, 0.75, 0.25, 1.0, 0.75, 0.75, -1.0, 1.0, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.popDebugGroup()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array5 = new Float32Array([0.25, 0.25, -0.25, 0.0, -1.0, 0.75, -0.5, -0.75, 0.25, 0.25, 0.0, 1.0, 0.5, -0.5, 0.75, -1.0, -1.0, 0.5, 0.75, 1.0, 0.0, 0.25, 0.5, 0.0, -1.0, -0.25, -0.5, 0.0, -0.25, 0.5, -0.25, 0.0, -1.0, 0.0, -0.5, 0.25, 0.75, -0.5, 0.5, -1.0, 1.0, 0.75, 0.75, 0.0, 1.0, -0.25, 1.0, -0.5, 0.25, 0.25, 0.25, -0.5, -1.0, -0.5, 0.5, 1.0, 1.0, 0.25, 1.0, 0.0, 0.25, -1.0, -0.25, 0.75, 0.25, -0.5, -0.75, 0.75, 0.5, 0.25, 0.5, -0.5, -1.0, 1.0, -1.0, -0.75, 1.0, 0.25, -1.0, 1.0, -0.25, -0.75, -1.0, 0.25, 0.25, 0.5, -1.0, -1.0, 0.75, -0.5, 1.0, -0.25, -0.75, 0.0, -0.25, 0.5, 0.0, 0.5, -0.75, 0.75, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array6 = new Float32Array([0.0, -0.75, -0.75, -1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -1.0, -0.25, 1.0, -0.75, 0.5, 0.0, 0.5, 0.5, 0.5, 0.5, -0.5, 1.0, -0.25, 0.0, -0.25, -0.5, -0.75, -0.25, 0.25, 0.5, 0.25, -1.0, -0.5, -1.0, 0.25, 0.5, -1.0, 0.75, 0.0, -0.5, 1.0, 1.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.0, 0.25, 1.0, 0.75, 0.5, 0.0, 1.0, 0.25, -0.75, -0.75, 0.75, -0.25, -0.5, 0.75, 0.5, 0.5, -0.25, -0.5, 0.25, -0.5, 0.25, 0.75, 0.75, -0.5, -1.0, 0.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.75, 0.0, 0.5, 0.25, 0.0, -0.5, -1.0, -0.5, -0.5, 0.0, 0.75, 0.25, -0.75, -0.75, -0.25, -0.25, 1.0, -1.0, -0.25, -0.5, -0.5, 0.5, 1.0, ]);
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder101.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_buffer100 = command_encoder100.finish();
    
    
    
    render_bundle_encoder100.popDebugGroup();
    command_encoder101.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder102.insertDebugMarker("mymarker");
    
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_buffer102 = command_encoder102.finish();
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.popDebugGroup();
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.insertDebugMarker("mymarker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder300.popDebugGroup()
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder302.popDebugGroup()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer300 = command_encoder300.finish();
    const array7 = new Float32Array([-0.75, 0.0, -1.0, 1.0, -1.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.75, 0.25, 0.75, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, 0.25, 0.0, -1.0, 1.0, 1.0, -0.25, -0.5, -0.25, 0.25, 0.75, -0.5, 0.5, 0.5, 0.5, -1.0, 0.75, 0.75, -0.75, 0.0, 0.75, -0.25, 0.0, 0.75, 0.25, -0.25, 1.0, 0.25, 1.0, -0.75, -0.25, 0.5, 1.0, -0.5, 0.0, -1.0, -0.5, 1.0, -1.0, 0.25, -0.25, 0.75, 0.25, 0.5, 0.0, -0.75, 0.0, 0.0, -0.5, -1.0, -0.5, 1.0, -1.0, 0.25, 0.5, -0.75, 0.75, 0.5, 0.75, -0.5, 0.75, 1.0, 0.25, 0.25, -0.5, 0.25, 0.5, 1.0, -1.0, 0.75, 1.0, ]);
    command_encoder001.popDebugGroup()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder303.insertDebugMarker("mymarker");
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder303.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    command_encoder303.insertDebugMarker("mymarker");
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer303 = command_encoder303.finish();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder201.popDebugGroup()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder101.popDebugGroup();
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_buffer001 = command_encoder001.finish();
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder202.insertDebugMarker("mymarker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_buffer201 = command_encoder201.finish();
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    command_encoder104.insertDebugMarker("mymarker");
    const array8 = new Float32Array([0.25, 0.25, -0.5, -0.25, -0.75, 0.25, -0.75, 0.5, 0.25, 0.25, -0.25, -0.5, -0.25, 0.25, -0.75, 0.75, 0.5, 1.0, 0.25, -0.75, 0.75, -0.5, -0.25, 0.25, -0.5, -0.75, 0.0, -0.25, -0.75, 0.25, -0.5, -1.0, 0.5, -0.75, 0.5, -0.5, 0.25, 0.0, -0.75, 0.25, -0.75, 0.5, 0.25, -0.75, -1.0, 1.0, 0.75, -0.75, 0.0, 0.25, -0.25, 0.25, -0.75, -0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 1.0, -0.25, -0.5, 0.75, 0.0, -0.75, 0.5, -0.5, 0.75, 0.25, 0.25, 0.25, -0.75, 0.25, 0.0, 0.75, 0.75, -1.0, 0.0, -1.0, -0.5, 0.5, 0.25, 0.0, -0.5, -1.0, 0.0, -0.75, -0.25, 0.25, 0.75, 0.75, -1.0, -1.0, 0.0, -0.5, -0.25, -0.75, 0.0, -0.5, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder200.popDebugGroup();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_buffer202 = command_encoder202.finish();
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const array9 = new Float32Array([1.0, 0.5, -0.5, 0.5, -0.5, 0.25, -0.25, 0.0, -1.0, -0.25, -0.5, -0.75, -0.75, -0.5, 0.5, 0.75, 0.5, -1.0, 0.25, -0.5, 0.5, -1.0, 0.5, 1.0, -0.75, -0.25, 0.25, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 0.75, 0.0, -1.0, -0.25, 0.75, 0.5, 0.25, 0.5, 0.25, 0.25, -1.0, -0.25, 0.25, 0.75, 1.0, 0.0, 0.5, 0.0, 1.0, -0.25, 0.5, 1.0, 0.5, 0.5, 0.75, 0.25, 0.75, 0.75, -0.75, 0.75, -0.75, -1.0, -0.25, -1.0, -1.0, -0.25, -0.5, 0.75, 0.5, 1.0, -0.5, 0.75, -0.75, -0.25, 1.0, 1.0, -1.0, 0.25, 0.75, -0.25, -0.5, -0.25, -0.25, -0.25, -0.75, -0.5, 0.0, 0.25, -0.25, 1.0, 1.0, 0.25, -1.0, -0.5, 0.0, 0.75, -0.5, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    command_encoder304.insertDebugMarker("mymarker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    command_encoder305.insertDebugMarker("mymarker");
    
    
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    command_encoder106.insertDebugMarker("mymarker");
    
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device00.queue.submit([command_buffer001, ]);
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder106.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_buffer305 = command_encoder305.finish();
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const command_buffer107 = command_encoder107.finish();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder400.popDebugGroup()
    
    
    const command_buffer400 = command_encoder400.finish();
    
    
    
    
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder106.popDebugGroup()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.queue.submit([command_buffer400, ]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    render_bundle_encoder100.popDebugGroup();
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.popDebugGroup();
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_bundle_encoder202.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    
    const array10 = new Float32Array([0.0, 0.5, -0.75, -1.0, -0.25, -0.5, 0.25, 1.0, -0.25, 0.5, 0.5, 0.75, -0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -0.5, 1.0, 1.0, 0.5, 0.5, -0.75, -1.0, 0.25, 1.0, -0.75, 0.5, -0.75, -1.0, 1.0, 0.5, -0.25, 0.75, 0.0, -1.0, -0.75, -1.0, 0.75, 0.25, -0.75, -1.0, 0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.75, -1.0, -1.0, 0.25, 1.0, 0.75, 0.75, -1.0, 1.0, -0.75, -0.25, 0.25, 0.25, -0.5, -0.5, 0.0, 0.75, 1.0, -0.5, -0.25, 0.0, -0.25, 0.25, 0.25, 1.0, -0.5, -0.25, -1.0, -0.5, -0.75, 0.0, -0.75, 0.5, 0.0, -0.75, 0.75, 0.75, -0.5, -0.75, 0.75, 0.0, 0.0, -0.75, -1.0, 0.75, 0.5, ]);
    compute_pass_encoder1050.insertDebugMarker("marker")
    const command_buffer205 = command_encoder205.finish();
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder108.insertDebugMarker("mymarker");
    
    const command_buffer108 = command_encoder108.finish();
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    command_encoder106.pushDebugGroup("mygroupmarker")
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    device00.queue.submit([command_buffer003, ]);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    command_encoder306.insertDebugMarker("mymarker");
    
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    
    device50.destroy();
    
    
    
    command_encoder106.insertDebugMarker("mymarker");
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder204.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder306.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.destroy();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder302.popDebugGroup();
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    command_encoder206.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.popDebugGroup();
    command_encoder206.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    const command_buffer005 = command_encoder005.finish();
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4030.insertDebugMarker("marker")
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer305, ]);
    
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    compute_pass_encoder3060.insertDebugMarker("marker")
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const command_buffer109 = command_encoder109.finish();
    const command_buffer004 = command_encoder004.finish();
    const command_buffer207 = command_encoder207.finish();
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device10.queue.submit([command_buffer108, command_buffer109, ]);
    command_encoder204.popDebugGroup()
    command_encoder106.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    const command_buffer106 = command_encoder106.finish();
    device20.queue.submit([command_buffer201, command_buffer204, command_buffer207, ]);
}