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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const command_buffer000 = command_encoder000.finish();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    device00.pushErrorScope("validation");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.pushErrorScope("validation");
    
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const array0 = new Float32Array([-0.75, 0.25, 0.75, -0.5, -1.0, -0.25, 1.0, -0.5, -0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.5, 1.0, -1.0, -0.75, 0.5, -0.5, -1.0, -0.75, 0.0, -0.5, -0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 0.0, 0.75, -0.75, -0.75, -0.75, -0.5, -0.5, 0.75, -1.0, -0.25, 1.0, 0.5, 1.0, -0.25, -0.75, 0.25, 1.0, -0.75, -0.75, -0.5, 0.75, 1.0, 0.0, -0.5, -0.25, 0.0, 1.0, -0.75, -0.25, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, 0.25, 0.75, -0.75, -0.5, 0.75, -1.0, 0.0, -1.0, -0.25, 1.0, -0.5, 0.25, 0.25, 0.5, 0.0, -0.75, -0.5, -0.75, -0.75, -1.0, -0.75, 0.5, -0.25, -1.0, -0.25, 0.75, -0.75, -1.0, -0.25, -0.5, 0.5, 0.25, -0.25, ]);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.popDebugGroup()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    buffer000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const array1 = new Float32Array([-0.25, -0.5, 1.0, 1.0, 0.75, -1.0, -0.5, -0.5, 0.75, -0.5, -0.25, -0.75, 0.25, -1.0, 0.75, -1.0, 0.25, -1.0, -1.0, 0.5, 1.0, -0.25, -0.25, -1.0, 0.75, -0.25, -0.25, -0.75, -0.75, -1.0, -0.5, -0.5, -0.25, -0.5, -1.0, -0.25, 1.0, 1.0, -0.75, -1.0, 1.0, 0.25, -0.5, -0.75, 1.0, 0.25, -0.25, 0.0, -0.5, 1.0, 1.0, 0.25, 0.0, -0.5, 0.0, 0.0, 0.5, 0.5, 0.5, -1.0, -0.25, -1.0, 0.5, 0.25, -0.5, -0.5, -0.25, -0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -0.25, -0.5, -1.0, 0.5, 0.25, -0.25, -0.5, 1.0, -0.5, -1.0, 1.0, -0.5, -1.0, -1.0, 0.25, -1.0, 0.0, 0.0, -0.5, 0.5, 0.0, 0.75, 0.25, -0.25, 0.5, -0.75, 0.75, ]);
    render_bundle_encoder000.popDebugGroup();
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    device00.pushErrorScope("internal");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const array2 = new Float32Array([-0.75, -0.25, 0.75, -0.25, 0.0, 0.0, 0.5, 0.25, 0.0, 0.5, 0.0, 0.75, 0.25, -0.25, -0.75, -0.75, 0.5, 0.25, 1.0, 0.75, -0.75, -0.5, 0.5, -1.0, -0.25, 0.5, 1.0, -0.5, -0.75, -1.0, -1.0, -1.0, 1.0, -1.0, -1.0, 1.0, -1.0, 0.75, -0.25, 1.0, 0.0, -0.5, 0.75, -1.0, -0.25, -0.25, -0.5, 0.0, -0.75, 0.0, -0.25, 0.0, -1.0, 1.0, -0.75, -1.0, 0.75, 0.5, 0.25, -1.0, 0.5, 0.0, -1.0, -0.75, -0.75, 1.0, 0.5, 0.25, 0.0, -0.75, -0.5, -0.25, 0.75, 1.0, -0.75, 0.5, 0.25, 0.0, -1.0, 0.25, -0.25, -0.5, -0.5, 0.25, -0.5, 0.0, 0.75, 0.25, -1.0, -0.75, -0.25, -0.5, -0.25, -0.75, -0.25, -0.75, -0.25, 1.0, 0.75, 1.0, ]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const array3 = new Float32Array([0.25, 0.75, -0.75, 1.0, 0.0, -1.0, 0.75, -0.5, 0.0, -0.75, 0.0, 0.0, 0.25, -0.25, -1.0, -1.0, 1.0, 0.5, -0.25, -1.0, -0.25, 1.0, 0.0, 0.75, 0.75, 0.75, -0.25, 0.0, 0.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, -0.25, -0.25, 0.0, -0.5, 0.5, -0.5, 0.0, 0.75, -0.5, 0.0, 0.75, 0.25, 0.5, 0.25, 1.0, -0.5, -0.75, 0.75, 0.5, 1.0, -0.75, -0.25, -1.0, -0.75, -0.5, -0.25, -0.25, 1.0, 0.0, -0.25, 0.75, -0.5, 0.25, 0.5, 0.0, -0.75, 0.25, -0.75, 0.5, 0.5, 0.75, -1.0, -0.75, 0.75, -1.0, 0.75, -0.5, 0.75, 1.0, -0.25, 0.0, 0.25, 0.75, -0.75, 0.0, 0.75, -0.25, 0.75, -0.75, 0.25, ]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder004.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device00.pushErrorScope("validation");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const array4 = new Float32Array([0.5, -0.5, 1.0, 0.0, 0.0, -0.75, -0.5, 1.0, 0.0, -1.0, -0.5, -0.5, 0.0, 0.25, 0.75, -0.75, -0.25, 0.5, 0.25, -0.25, 0.5, 0.25, -0.75, 0.0, -0.25, 1.0, -0.75, 0.0, 0.75, 0.5, 1.0, 0.25, 1.0, 0.5, -0.5, -0.75, 1.0, 0.75, 0.25, -0.75, -0.25, -1.0, 0.5, -0.25, -0.5, -1.0, -0.25, 1.0, 0.5, -0.25, 0.0, 0.25, -0.25, -0.25, 0.75, -0.5, 0.25, -0.5, 1.0, 0.75, -0.25, 0.5, 0.0, -0.25, 0.25, -1.0, -0.25, 0.0, 0.5, -0.25, 0.5, 0.75, -0.5, 0.0, 0.75, -0.25, -0.75, 0.25, -0.25, 1.0, 0.75, 0.0, 0.75, 1.0, 0.0, 0.25, 1.0, 1.0, 0.75, 1.0, -0.75, 0.5, -1.0, 0.25, 0.0, 0.75, 1.0, 0.75, 0.75, -0.25, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    buffer002.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_buffer200 = command_encoder200.finish();
    device00.queue.submit([command_buffer000, ]);
    buffer001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder201.popDebugGroup();
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device20.queue.submit([command_buffer200, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer200.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer201.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder002.popDebugGroup();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device40.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer005 = command_encoder005.finish();
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder000.popDebugGroup();
    command_encoder006.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    const command_buffer006 = command_encoder006.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array5 = new Float32Array([0.0, 1.0, 0.75, -1.0, 0.0, 0.0, -0.5, 0.25, 0.25, 0.5, -1.0, 1.0, -0.25, 1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 0.5, 0.5, 0.25, -0.75, -1.0, -0.75, -1.0, 0.25, -0.75, -0.75, 0.75, 1.0, 0.5, -1.0, -1.0, 0.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.75, -0.5, 0.25, 0.25, 0.25, -0.5, -0.25, 0.0, 0.75, -0.25, 0.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.5, -0.5, 0.75, 0.25, 0.25, 0.25, -1.0, 0.25, 0.5, 1.0, -0.75, -0.75, 0.25, -0.25, -1.0, 0.25, -0.75, -0.75, -0.25, 0.5, -1.0, -0.5, -1.0, 0.5, 0.75, -0.5, 1.0, 1.0, 0.0, -0.25, -1.0, -1.0, -0.75, 0.0, -0.5, 0.0, -0.25, -1.0, 1.0, -0.25, 0.0, 0.0, -0.75, -0.75, ]);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    render_bundle_encoder200.popDebugGroup();
    
    buffer205.destroy()
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.popDebugGroup();
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    buffer204.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    command_encoder007.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const array6 = new Float32Array([0.25, 0.0, -0.75, -0.75, -0.75, 0.25, -0.25, -0.5, -1.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.5, -1.0, 0.0, 0.25, -0.25, -0.25, -0.5, -1.0, -0.5, 0.25, -0.25, -0.25, 0.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.25, 0.0, -0.25, -0.75, 0.0, 0.25, 0.0, 1.0, 0.75, 1.0, 0.75, -0.5, -1.0, -0.75, 0.5, -0.75, -0.75, 0.25, -0.5, -0.75, -0.25, -0.75, 0.0, -0.5, -0.5, -0.75, 1.0, 1.0, -0.25, 0.0, -0.25, 0.25, -0.25, 0.5, 0.75, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 0.5, 0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 0.25, -1.0, -0.25, -0.75, -0.75, 0.75, -0.25, 0.75, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, 0.25, 0.75, -0.25, 0.25, 0.5, 1.0, ]);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const array7 = new Float32Array([-0.25, -0.25, 0.25, -0.25, 0.5, 0.0, 0.0, -0.75, 1.0, -0.75, 0.5, 0.75, -0.5, 1.0, -1.0, 0.75, -1.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, -1.0, -0.25, 0.5, 1.0, -1.0, 0.75, 0.5, 0.75, -0.75, 0.25, 0.25, 0.0, -0.75, 0.5, 0.25, 1.0, -0.75, 0.25, 0.75, -1.0, 0.25, 0.75, -1.0, 0.5, -0.5, 0.25, -0.75, 0.5, 0.25, -0.75, -0.25, -0.5, 0.25, -0.25, -0.25, -0.75, -0.25, 0.5, 1.0, -1.0, -0.5, 0.0, -0.25, -0.5, 0.25, 1.0, 0.5, 0.5, 0.25, -0.25, -0.75, 0.0, 0.25, -0.75, -1.0, 0.0, -0.5, 0.25, 0.5, 0.0, 0.25, -1.0, 1.0, 0.0, -1.0, -1.0, 0.25, 0.25, -0.5, -1.0, -0.25, -1.0, 0.5, 1.0, 0.0, ]);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder101.pushDebugGroup("mygroupmarker")
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.destroy();
    const command_buffer008 = command_encoder008.finish();
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    command_encoder007.insertDebugMarker("mymarker");
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder007.popDebugGroup()
    device00.pushErrorScope("validation");
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder007.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const command_buffer102 = command_encoder102.finish();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device60.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder007.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.insertDebugMarker("mymarker");
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    device20.pushErrorScope("internal");
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const command_buffer009 = command_encoder009.finish();
    buffer700.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.destroy();
    buffer202.destroy()
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0070.insertDebugMarker("marker")
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.submit([command_buffer008, command_buffer009, ]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder103.insertDebugMarker("mymarker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device80.pushErrorScope("out-of-memory");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device60.pushErrorScope("validation");
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder600.popDebugGroup();
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder201.popDebugGroup()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder202.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    buffer206.destroy()
    
    device10.pushErrorScope("internal");
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder800.pushDebugGroup("mygroupmarker")
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder0030.insertDebugMarker("marker")
    buffer101.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder202.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    device80.pushErrorScope("internal");
    render_bundle_encoder102.popDebugGroup();
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    render_bundle_encoder002.popDebugGroup();
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    buffer203.destroy()
    
    
    
    const array8 = new Float32Array([-0.5, 0.25, -0.75, 0.75, -0.25, 0.0, 0.75, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, -0.25, 0.0, -0.5, 1.0, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, 0.0, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, 0.0, 0.75, -0.75, 0.75, 0.0, 0.25, 0.0, -0.5, -1.0, -1.0, -0.75, 0.5, 0.5, 0.25, 0.75, 1.0, -0.25, 0.5, -1.0, 0.5, 1.0, 0.25, 1.0, 0.75, 0.5, 0.5, -1.0, -0.5, -0.25, 0.25, 0.5, 0.5, 0.0, 1.0, -0.75, -0.5, 0.0, -0.5, 0.5, -0.25, 1.0, 0.0, 0.0, 1.0, 1.0, 0.25, 0.25, 0.25, -1.0, 0.75, 0.0, -0.75, 0.25, 0.25, -0.5, -0.75, 1.0, 0.5, -0.25, 1.0, 1.0, 1.0, 1.0, -0.5, 0.0, 0.75, -1.0, 0.0, -1.0, 1.0, ]);
    compute_pass_encoder1040.insertDebugMarker("marker")
    device20.queue.submit([command_buffer202, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    buffer003.destroy()
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device00.pushErrorScope("validation");
    buffer207.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    command_encoder103.popDebugGroup()
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer004.destroy()
    compute_pass_encoder8000.insertDebugMarker("marker")
    compute_pass_encoder0070.insertDebugMarker("marker")
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer602 = command_encoder602.finish();
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    const command_buffer103 = command_encoder103.finish();
    device60.queue.submit([command_buffer600, command_buffer602, ]);
}