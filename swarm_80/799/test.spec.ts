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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("validation");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const array0 = new Float32Array([0.0, 1.0, 0.25, 0.75, 0.5, 0.75, -0.75, 1.0, 1.0, -0.25, -0.25, 0.75, -1.0, 0.5, 0.0, 0.5, -0.5, -0.75, 0.5, 0.0, 1.0, 0.75, 0.0, -0.25, -1.0, -0.5, -0.75, 1.0, 0.5, -0.75, -0.25, -0.25, -1.0, -1.0, -0.5, -0.25, -1.0, 0.75, -0.5, 0.75, 0.25, 1.0, 0.25, -0.75, -0.75, -0.25, 0.5, -0.25, -0.5, -0.75, -0.75, 0.5, -0.5, 0.0, 0.5, 0.5, -0.5, -1.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.0, 0.75, 0.0, 0.5, 0.5, 0.75, 0.25, 0.5, 0.25, 1.0, -0.5, -1.0, 0.75, -0.25, 0.0, 0.25, -0.75, 0.25, 0.25, -0.25, -0.75, 0.5, 0.0, -0.25, 0.75, -0.75, 1.0, -1.0, -0.75, 0.75, 0.75, -1.0, -0.75, -0.75, 0.25, 1.0, 0.0, ]);
    
    device20.destroy();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    query000.destroy()
    device00.pushErrorScope("validation");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_buffer000 = command_encoder000.finish();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query100.destroy()
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer000.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query101.destroy()
    const command_buffer101 = command_encoder101.finish();
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query100.destroy()
    
    
    const array1 = new Float32Array([-0.25, 0.0, 0.25, 1.0, 0.75, -1.0, -0.5, -0.5, 1.0, 0.0, 0.0, 0.25, 1.0, 1.0, -0.25, 0.5, -1.0, -1.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.25, 1.0, 0.25, 0.5, -0.75, -0.5, 1.0, -0.5, 0.75, -1.0, -1.0, -1.0, -0.25, -0.5, 0.0, 1.0, -0.5, -0.5, 0.75, 0.75, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.5, 0.75, 0.75, -1.0, 0.75, -0.25, 1.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.25, 0.0, 0.25, 0.75, -0.5, -0.25, 0.25, -0.5, -0.5, 0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -0.5, 0.0, -1.0, 1.0, 0.75, 0.5, -0.25, -0.75, -0.75, -0.75, 0.25, 0.0, 1.0, -0.5, -0.25, -0.25, 1.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.75, -0.5, ]);
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder000.popDebugGroup();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer100.destroy()
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    device00.queue.submit([command_buffer001, ]);
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query000.destroy()
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query101.destroy()
    
    query001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder101.insertDebugMarker("marker");
    query000.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    device30.pushErrorScope("internal");
    const command_buffer003 = command_encoder003.finish();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_buffer102 = command_encoder102.finish();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    query000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.submit([command_buffer003, ]);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder300.popDebugGroup();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const array2 = new Float32Array([-1.0, -0.25, -0.5, 0.0, -0.75, 0.75, -0.5, -1.0, -0.25, 0.75, 1.0, 0.5, 0.5, -1.0, -1.0, 0.0, -0.5, -0.75, -1.0, -0.5, -0.75, -0.5, 0.5, 1.0, 0.25, 1.0, 0.25, 1.0, 0.25, -0.75, -0.25, 0.0, 1.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.25, 0.0, 0.25, -0.25, -1.0, 0.25, -1.0, 0.0, 0.75, 0.5, -1.0, 0.25, 0.5, 0.25, 0.25, 0.75, -0.75, 0.0, -0.75, 0.0, 0.25, -0.5, -0.5, -0.5, 1.0, 0.75, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, 1.0, 0.75, 1.0, -0.5, 0.25, -0.75, 0.0, 0.5, 1.0, -0.25, -1.0, -0.5, -1.0, 0.25, 1.0, 0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.75, 0.75, 1.0, 0.0, 1.0, 1.0, 1.0, -1.0, 0.75, ]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    query100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    
    
    command_encoder005.insertDebugMarker("mymarker");
    query101.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query003.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder101.popDebugGroup();
    device40.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.pushErrorScope("validation");
    query302.destroy()
    
    
    query002.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder005.insertDebugMarker("mymarker");
    query100.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query101.destroy()
    
    const array3 = new Float32Array([0.75, -0.5, -0.25, -1.0, -0.5, 0.0, -1.0, 0.5, -0.25, 0.75, 0.0, 0.0, 0.25, -0.75, -0.5, -1.0, 0.0, -0.5, 1.0, 1.0, 0.25, 1.0, -0.75, -0.25, 1.0, -1.0, -1.0, 0.0, -0.25, 1.0, -0.75, 0.0, 1.0, 0.75, -0.25, -0.5, 0.0, 0.0, -0.25, 1.0, 0.5, 1.0, -0.25, -0.75, 0.5, 0.75, 0.5, 1.0, 0.75, 0.25, -0.75, -0.25, 0.0, -1.0, 0.5, 0.5, -0.75, 0.75, 1.0, -0.75, -1.0, 1.0, -0.5, -1.0, -0.25, -0.75, -1.0, 1.0, 0.0, -1.0, -0.25, 0.0, -0.75, -0.5, 0.25, 0.25, 0.0, -0.5, -0.75, -1.0, 0.5, 1.0, 1.0, 0.75, -0.5, 0.75, -1.0, -0.5, -0.5, 0.5, -1.0, 1.0, 0.0, -0.25, 1.0, 1.0, 0.5, 0.0, 0.25, 0.25, ]);
    device30.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    
    
    device00.queue.submit([command_buffer000, ]);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.submit([command_buffer101, ]);
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    command_encoder005.popDebugGroup()
    query003.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query100.destroy()
    
    
    render_bundle_encoder100.popDebugGroup();
    
    query002.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query000.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query000.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device50.destroy();
    
    const command_buffer005 = command_encoder005.finish();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const array4 = new Float32Array([0.25, 0.25, 0.0, 0.75, 0.25, -0.5, 1.0, 0.75, 0.5, -1.0, -0.5, 0.5, 0.5, -0.5, -1.0, 0.0, 0.75, -0.25, -0.25, 0.5, 0.75, 1.0, 0.75, 0.75, 1.0, 0.5, -1.0, 0.75, 0.0, 0.0, 0.75, 0.25, 0.0, 0.75, 0.25, 0.25, -0.75, 0.75, -0.75, 0.75, 0.25, -0.75, -0.25, 0.0, 1.0, 0.5, 0.25, 0.5, 0.5, 0.25, 0.0, -1.0, 1.0, -0.5, 1.0, -0.5, -1.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, 0.5, 0.25, -0.25, -0.25, 1.0, -0.75, 0.75, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, -0.5, 1.0, 0.75, 0.25, -0.75, -1.0, 1.0, -0.25, -1.0, 0.75, 1.0, -0.25, -1.0, 0.25, 0.0, 0.75, -0.75, 0.5, -0.5, -0.25, 0.25, 0.0, 0.5, -0.25, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    query003.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    device10.pushErrorScope("internal");
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device10.queue.submit([command_buffer102, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    query001.destroy()
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    query102.destroy()
    query002.destroy()
    query103.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer102.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device00.queue.submit([command_buffer005, ]);
    query000.destroy()
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder101.popDebugGroup();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query103.destroy()
    render_bundle_encoder000.popDebugGroup();
    device60.destroy();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query102.destroy()
    
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    query000.destroy()
    command_encoder007.pushDebugGroup("mygroupmarker")
    
    query100.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query100.destroy()
    
    
    
    const command_buffer103 = command_encoder103.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    query101.destroy()
    command_encoder007.popDebugGroup()
    const command_buffer007 = command_encoder007.finish();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const array5 = new Float32Array([0.25, 0.0, -0.5, 0.25, -0.5, 1.0, -0.5, 0.0, 1.0, 0.5, -0.25, 0.25, 0.0, 0.25, 1.0, -0.5, -0.75, -0.75, 0.5, 1.0, 0.25, 0.0, -0.5, 0.0, -0.5, -0.5, 1.0, -1.0, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, 0.0, 0.0, -0.5, 0.5, 1.0, 0.75, -0.75, 0.5, 0.0, -0.25, -0.25, -0.25, 0.75, 0.25, -1.0, -0.75, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 0.75, -0.75, 0.0, 0.75, 1.0, 1.0, -0.25, 1.0, 0.0, -0.75, 1.0, 1.0, -1.0, -0.75, -0.25, 0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 1.0, 0.5, -0.25, 0.5, 1.0, -0.5, 0.25, 0.25, -0.75, 0.0, 0.75, 0.25, -0.75, -0.5, -0.75, 0.75, -0.5, 0.25, -0.75, -0.25, 0.75, -0.25, 0.25, ]);
    
    
    buffer104.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query102.destroy()
    query100.destroy()
    
    
    
    
    
    device10.queue.submit([command_buffer103, ]);
    device10.pushErrorScope("internal");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query102.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query100.destroy()
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_bundle_encoder101.popDebugGroup();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer101.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    query102.destroy()
    
    
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    query003.destroy()
    render_bundle_encoder100.popDebugGroup();
    query003.destroy()
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    query101.destroy()
    const array6 = new Float32Array([0.0, 0.5, 0.75, 0.25, 1.0, -0.25, 0.25, 0.0, 0.0, -0.25, -0.5, -1.0, -0.5, -0.25, -0.5, 0.0, 0.75, -0.25, -1.0, 0.75, -0.5, 1.0, -0.75, -0.75, 0.0, 0.0, 0.25, 0.75, -1.0, -1.0, -0.75, -0.75, -1.0, 0.25, -1.0, -0.75, -0.5, -0.75, 0.0, 0.75, -1.0, -0.25, -1.0, 1.0, 0.75, -0.25, -0.25, 1.0, -0.25, -0.75, 0.0, -1.0, 0.75, -0.5, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, 0.75, 0.0, 0.5, 0.75, 0.0, -0.75, 0.75, 0.25, 1.0, -0.75, -0.25, 0.5, -0.25, -1.0, 0.75, -0.75, 0.75, 0.25, -0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 0.25, -1.0, 0.5, -0.5, 0.0, 0.25, -1.0, -0.75, -0.75, -1.0, 0.5, -0.25, -0.5, 0.25, -1.0, 0.25, ]);
    const array7 = new Float32Array([-0.75, 1.0, 0.0, 0.5, 1.0, -1.0, 1.0, 0.5, 1.0, -1.0, 1.0, 1.0, -1.0, 0.0, -0.5, -0.5, 0.75, -1.0, -1.0, -0.75, -0.75, 1.0, 0.25, -0.25, -0.75, 0.0, 0.75, 0.75, 0.0, -1.0, 0.0, 0.0, 0.0, 0.5, -0.25, -0.75, -0.25, 1.0, -0.75, -0.5, 1.0, 1.0, 0.5, 0.75, 0.75, -0.5, -1.0, 0.0, 0.5, 0.25, 0.75, 0.5, -1.0, -0.75, -1.0, -1.0, -0.25, 0.5, 0.25, -0.25, -0.25, -1.0, -1.0, 0.5, 0.0, 0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.5, -0.5, 1.0, -1.0, 0.5, 0.0, -0.25, -0.75, -0.75, 0.25, 0.25, 0.25, 1.0, -0.25, -0.75, 0.5, 0.5, -0.75, -0.25, 0.5, 1.0, -0.5, 0.25, 1.0, -1.0, -1.0, -0.75, 0.25, 0.25, ]);
    query001.destroy()
    query103.destroy()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device80.pushErrorScope("internal");
    
    const array8 = new Float32Array([-0.75, -0.5, -1.0, 0.0, 0.5, -0.75, 0.25, -0.75, 1.0, 0.0, -1.0, -0.25, -0.25, 0.25, 0.25, -0.5, 0.75, -0.5, -0.75, -0.75, -1.0, -1.0, -0.5, -0.5, 0.25, 0.0, 0.0, 0.25, 0.25, -1.0, 0.25, 0.75, 0.75, -1.0, 0.25, 0.5, -0.75, -0.75, -0.25, -1.0, 0.5, -0.25, -0.5, -0.75, 0.25, 0.0, 0.75, 0.0, -1.0, 0.75, -0.25, -0.75, -1.0, 1.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.25, 1.0, -0.5, 0.0, -0.75, -0.75, 0.75, -1.0, 0.75, 0.0, 0.25, 1.0, 0.25, 0.0, 0.25, 0.0, -0.75, -0.5, -0.5, 0.5, 0.75, -0.25, 0.0, -0.25, 0.5, 0.25, 0.75, -0.5, -0.75, 1.0, 0.25, 0.25, -1.0, -0.25, -0.75, 0.25, 0.0, 0.25, -0.75, 0.25, 0.0, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    render_bundle_encoder102.popDebugGroup();
    
    buffer105.destroy()
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    query003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    command_encoder008.pushDebugGroup("mygroupmarker")
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    query700.destroy()
    
    device00.pushErrorScope("internal");
    
    query003.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder008.insertDebugMarker("mymarker");
    command_encoder008.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query004.destroy()
    query102.destroy()
    
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    compute_pass_encoder0090.pushDebugGroup("group_marker")
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const command_buffer008 = command_encoder008.finish();
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query104.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer701 = command_encoder701.finish();
    device00.queue.submit([command_buffer008, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer701, ]);
    const command_buffer700 = command_encoder700.finish();
}