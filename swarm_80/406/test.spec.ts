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
        powerPreference: undefined
    });
    const array0 = new Float32Array([1.0, -0.25, 0.0, 0.0, -1.0, -0.25, 1.0, -0.5, 0.5, -0.25, 0.5, 0.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.25, 0.0, 0.5, -0.5, 0.5, -0.5, -0.75, -1.0, -0.75, -0.5, -0.75, 0.75, -0.25, -0.75, 0.5, 0.0, -0.5, -1.0, 0.75, -1.0, 0.5, -0.75, 0.0, -1.0, 0.0, 0.75, 0.25, 0.75, -1.0, 0.75, -0.25, 1.0, 0.5, 0.5, 1.0, 1.0, 0.75, -1.0, 1.0, 1.0, 0.25, 0.5, 1.0, 0.75, -0.75, 0.0, 0.0, -0.75, -1.0, 0.75, -1.0, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, 1.0, 0.75, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, 1.0, -1.0, 1.0, 0.5, -0.25, 1.0, -0.75, -0.75, 0.25, 1.0, -1.0, 0.5, -0.25, -0.5, -0.5, 0.25, -1.0, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query000.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.pushErrorScope("internal");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder300.insertDebugMarker("mymarker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    buffer000.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.pushErrorScope("out-of-memory");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    query000.destroy()
    
    command_encoder101.insertDebugMarker("mymarker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query000.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query000.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device40.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    buffer300.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.pushErrorScope("internal");
    command_encoder300.insertDebugMarker("mymarker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder101.insertDebugMarker("mymarker");
    
    query002.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder002.popDebugGroup();
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder000.popDebugGroup();
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query001.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer301.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder101.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array1 = new Float32Array([1.0, 0.25, 1.0, 1.0, 0.5, 0.5, -1.0, -0.75, 0.5, 0.0, 0.5, -1.0, -0.25, 0.0, -1.0, 0.0, -0.5, -0.5, 0.5, 0.0, -0.5, -0.25, 0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -0.25, 0.25, -0.5, 0.25, -1.0, -1.0, -0.25, 0.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.25, -0.75, 0.75, -0.75, 0.0, 0.25, 0.25, 1.0, 0.5, 0.75, 0.5, 0.0, 0.0, 0.5, 0.0, -0.25, -1.0, 0.25, 0.5, 0.0, -1.0, 0.75, 0.0, 0.75, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, -0.5, -0.75, -0.25, 0.0, -0.5, 0.0, 0.5, 0.5, -0.75, -0.75, 1.0, 0.75, 0.5, 0.25, 0.25, -0.75, 0.75, -0.75, 0.75, -0.25, 0.75, -0.75, -1.0, 0.5, -0.75, 1.0, -0.75, -0.25, 0.5, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    buffer303.destroy()
    buffer002.destroy()
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.5, -0.75, -0.5, 1.0, 1.0, -0.5, 1.0, -1.0, -0.25, 0.75, -0.25, -0.5, 0.75, 0.75, -0.75, 0.5, 0.25, 0.5, 0.5, 0.5, -0.5, 0.0, 1.0, 0.0, -0.5, -0.25, -0.25, 0.0, -0.25, 0.25, 0.5, -0.5, -0.25, 1.0, 1.0, 1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 1.0, 0.25, 0.75, 0.0, -0.25, -1.0, 0.5, 1.0, 1.0, 0.25, -0.25, -0.25, -0.25, 0.5, -0.5, -0.75, 0.5, 0.0, 1.0, -0.25, 0.75, -0.75, -0.75, 0.25, 0.25, -0.25, -0.5, 0.5, -0.5, -1.0, 1.0, -1.0, -0.75, -0.75, 0.5, -0.75, 1.0, -0.5, 0.5, 0.0, -0.75, 0.0, -0.75, 1.0, 0.0, -0.5, -0.75, -0.75, -0.25, 0.5, -0.75, -1.0, -0.75, -0.25, -1.0, 0.5, 0.0, 1.0, 0.0, ]);
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder103.insertDebugMarker("mymarker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    buffer302.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query000.destroy()
    compute_pass_encoder0000.popDebugGroup()
    
    const array3 = new Float32Array([0.5, -1.0, -0.5, 0.25, -0.75, -0.75, 0.0, -0.5, 0.25, 0.75, -0.75, 1.0, -0.25, -0.75, 0.75, -1.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.25, 0.25, 0.0, -0.5, 0.0, 0.75, -0.75, 1.0, -0.25, 0.75, 0.0, 0.5, -1.0, -0.75, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, -0.5, 0.5, 0.5, 1.0, -1.0, -1.0, -0.5, -0.25, -0.75, 0.0, -0.5, 0.5, 0.25, 0.75, -0.75, 0.75, -0.75, 0.25, 1.0, 0.25, 0.5, 1.0, -0.75, -0.5, -0.25, 0.5, -0.5, 0.25, -0.5, -0.5, 0.75, 0.25, -0.75, 0.0, 0.25, 0.0, 0.0, 0.25, 0.75, 0.25, 0.25, -1.0, -0.5, 0.25, 0.75, -0.5, -0.5, 0.25, -1.0, 1.0, -1.0, -0.75, 0.0, 0.25, 0.0, 1.0, -0.5, 0.75, 1.0, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device00.pushErrorScope("validation");
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.popDebugGroup();
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    query500.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.insertDebugMarker("mymarker");
    query300.destroy()
    query500.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    device50.destroy();
    
    compute_pass_encoder0000.popDebugGroup()
    query003.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder300.popDebugGroup();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    query001.destroy()
    query000.destroy()
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    query002.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder100.popDebugGroup();
    const array4 = new Float32Array([0.75, 1.0, 0.25, -0.5, -1.0, 0.0, 0.25, -0.25, 0.5, -0.75, -0.5, -0.5, 0.25, 0.75, 0.5, 0.5, -1.0, -0.25, 0.25, 0.25, 0.75, 0.75, 0.0, 0.5, -0.25, 0.0, 0.0, -0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.75, 0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 0.25, 0.0, 0.5, -1.0, 1.0, -0.5, 0.25, 1.0, 0.75, 1.0, -0.25, -0.25, -0.5, 0.75, 0.25, -0.75, 0.25, -1.0, 0.0, -0.75, -0.75, -1.0, -0.75, 0.75, 0.5, -0.75, -0.25, -1.0, 0.0, 1.0, 0.75, 1.0, 1.0, 0.25, -1.0, 0.25, 0.25, -0.25, -0.75, -0.75, -1.0, -0.5, 1.0, 0.5, 0.0, -0.75, 0.5, -0.5, 1.0, 0.5, 1.0, -0.75, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 1.0, 0.0, ]);
    render_bundle_encoder301.popDebugGroup();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder102.popDebugGroup();
    query101.destroy()
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query004.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    query100.destroy()
    query301.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3010.popDebugGroup()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder0040.popDebugGroup()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query003.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query600.destroy()
    query601.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder000.popDebugGroup();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    query600.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder102.insertDebugMarker("mymarker");
    query300.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    buffer700.destroy()
    
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.pushErrorScope("internal");
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder302.insertDebugMarker("marker");
    query001.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query000.destroy()
    query300.destroy()
    query004.destroy()
    query601.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    query102.destroy()
    query101.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    command_encoder303.insertDebugMarker("mymarker");
    
    query004.destroy()
    buffer600.destroy()
    command_encoder303.copyBufferToBuffer(
        buffer305,
        0,
        buffer304,
        0,
        400
    );
    device70.pushErrorScope("validation");
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    command_encoder700.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder304.copyBufferToBuffer(
        buffer305,
        0,
        buffer304,
        0,
        400
    );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder302.popDebugGroup();
    buffer603.destroy()
    query004.destroy()
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    query300.destroy()
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    command_encoder302.copyBufferToBuffer(
        buffer305,
        0,
        buffer304,
        0,
        400
    );
    render_bundle_encoder102.popDebugGroup();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder304.copyBufferToBuffer(
        buffer305,
        0,
        buffer304,
        0,
        400
    );
    
    compute_pass_encoder6000.popDebugGroup()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    compute_pass_encoder3000.popDebugGroup()
    query100.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    query601.destroy()
    
    
    command_encoder303.insertDebugMarker("mymarker");
    
    query101.destroy()
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    device30.pushErrorScope("internal");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder700.insertDebugMarker("mymarker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query601.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    compute_pass_encoder3010.popDebugGroup()
    query103.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}