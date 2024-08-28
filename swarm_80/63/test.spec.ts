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
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder000.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("out-of-memory");
    buffer001.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    query000.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    command_encoder001.insertDebugMarker("mymarker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const array0 = new Float32Array([-0.75, 0.75, 0.5, -1.0, -1.0, -1.0, 0.25, -1.0, -1.0, 0.75, 0.75, -0.5, 0.75, -1.0, -0.25, -0.5, -1.0, -0.5, -0.5, 0.75, 1.0, 0.25, -0.5, 1.0, -0.25, 0.0, 0.5, -1.0, -0.75, -1.0, 1.0, -0.5, -0.25, -1.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.5, -0.5, 0.0, -0.5, -0.5, 0.0, 0.5, 0.0, 0.0, -0.5, 0.75, 0.0, 0.0, 1.0, -0.75, 0.25, -0.75, 0.0, 0.75, 0.0, -0.5, 0.75, 0.5, 0.75, -1.0, 1.0, 1.0, 1.0, 0.0, -0.5, -0.75, 0.0, -1.0, 0.25, 0.25, 0.25, -1.0, -1.0, -1.0, 0.75, 0.25, 0.0, 0.5, -0.5, 0.5, 0.0, -0.75, -0.5, -0.75, 0.75, 1.0, 0.5, -1.0, -0.25, -0.25, 0.0, 0.25, -1.0, -0.75, 0.0, -0.5, ]);
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer101.destroy()
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder000.insertDebugMarker("mymarker");
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([0.25, 0.5, 1.0, 1.0, -0.75, 0.0, 0.0, 0.25, -0.5, -0.5, 1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -0.75, 0.75, -0.75, -0.75, -0.25, -0.5, 0.75, -0.25, 0.75, 0.25, -0.75, 0.5, -1.0, 0.5, 0.0, 0.75, -1.0, -1.0, 0.75, 0.75, -0.25, 1.0, -0.25, 0.75, 0.75, 0.0, -0.75, 0.25, 0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 0.75, -0.75, -0.25, -0.5, 1.0, -0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -0.75, 0.5, -1.0, -0.5, 0.0, -0.25, -0.25, -0.75, 1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -0.75, 1.0, 1.0, -0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.0, 0.0, -1.0, 0.25, -0.5, 0.25, -1.0, 0.75, -0.75, -1.0, 1.0, ]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.pushErrorScope("internal");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer100.destroy()
    
    query000.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query000.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query100.destroy()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device10.pushErrorScope("out-of-memory");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer200.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query000.destroy()
    
    
    buffer102.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    buffer002.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query101.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    buffer003.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array2 = new Float32Array([1.0, 0.25, -1.0, 0.25, -0.25, 0.5, -1.0, 0.0, 0.75, -1.0, -0.5, -1.0, -1.0, 0.5, -0.75, -0.75, -0.25, -1.0, 0.0, -0.25, -1.0, 0.75, 0.5, 0.5, 1.0, -0.75, -0.25, 0.75, -0.25, 0.75, 0.25, 0.25, -1.0, 0.25, -0.75, 1.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.0, -0.75, 1.0, 1.0, -0.75, -0.5, 0.25, -0.75, -0.5, -0.25, 0.5, -0.75, -0.5, -0.5, 0.25, -0.75, 0.75, 0.25, -0.5, 0.5, 0.25, 1.0, 0.25, 0.5, 0.5, 0.0, 0.25, -1.0, 0.25, 0.75, 0.75, -1.0, 0.25, 1.0, 0.0, 1.0, -1.0, -0.75, -0.25, -1.0, 0.75, 0.5, -1.0, -0.75, 0.75, -0.25, 0.25, 0.75, -1.0, -0.75, -1.0, 0.5, -0.75, 0.5, -0.25, -0.25, -0.25, -0.5, -0.25, ]);
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device10.pushErrorScope("internal");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    buffer201.destroy()
    
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer300.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    device20.pushErrorScope("out-of-memory");
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query102.destroy()
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder003.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    query101.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder001.popDebugGroup();
    query103.destroy()
    command_encoder300.pushDebugGroup("mygroupmarker")
    query200.destroy()
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const array3 = new Float32Array([0.25, 0.75, 1.0, -0.5, -1.0, -0.75, -0.5, -0.75, -0.25, -0.75, -1.0, 0.75, -0.5, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, 0.75, 0.5, 0.75, -0.75, 1.0, 0.25, -0.75, -0.5, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, 0.0, 0.75, -0.75, 0.5, -1.0, -0.25, 0.5, 0.75, 0.0, -0.5, 0.5, 0.75, -1.0, -0.5, 0.0, 0.0, -0.75, 1.0, -0.75, -0.75, -0.25, -1.0, -0.25, 0.75, -0.75, 0.0, -0.25, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, 0.0, -0.25, 0.75, 0.5, -0.5, -0.25, 1.0, 1.0, 0.5, -0.75, -1.0, 1.0, 0.75, 0.0, 0.25, -0.25, -0.75, 0.5, -0.5, -0.75, -0.75, -0.5, 1.0, -0.25, 1.0, 1.0, -1.0, -0.75, -0.75, 0.5, 0.75, -0.25, -1.0, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    command_encoder202.insertDebugMarker("mymarker");
    
    query100.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query200.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer000.destroy()
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query101.destroy()
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    query202.destroy()
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    command_encoder202.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.popDebugGroup();
    query002.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    buffer301.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query102.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder101.popDebugGroup();
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    query400.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    query103.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder202.insertDebugMarker("mymarker");
    
    
    query300.destroy()
    query200.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    query102.destroy()
    
    device40.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder202.insertDebugMarker("mymarker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.pushErrorScope("internal");
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    buffer004.destroy()
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    query001.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder100.popDebugGroup();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query103.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer302.destroy()
    device30.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    command_encoder103.insertDebugMarker("mymarker");
    query103.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query002.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder006.insertDebugMarker("mymarker");
    query201.destroy()
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder006.pushDebugGroup("mygroupmarker")
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    query002.destroy()
    
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer103.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder007.pushDebugGroup("mygroupmarker")
    query204.destroy()
    
    
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder303.insertDebugMarker("mymarker");
    
    command_encoder303.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    command_encoder600.insertDebugMarker("mymarker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    command_encoder600.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    query101.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}