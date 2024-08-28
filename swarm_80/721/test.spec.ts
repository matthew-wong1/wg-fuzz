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
    const array0 = new Float32Array([-0.5, 1.0, -0.5, 0.75, 0.25, 0.75, -0.25, -0.25, -0.5, -1.0, -0.25, -0.5, 0.75, -0.25, -0.5, -0.75, 0.5, -0.25, 0.75, -0.75, 1.0, -0.75, 1.0, -0.75, -1.0, 0.75, -0.25, 0.75, 0.25, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, 1.0, -1.0, 0.5, 0.75, 0.5, 1.0, 0.75, 1.0, 0.0, -0.25, -0.75, -1.0, 0.25, 0.0, -0.75, 0.75, 1.0, 0.5, 0.75, 1.0, 0.5, -0.5, -1.0, -1.0, 1.0, 0.25, 0.0, 1.0, 0.75, -0.5, -1.0, 0.5, 0.25, 0.5, 0.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.75, 0.25, -1.0, 1.0, 0.5, 0.0, 0.75, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 0.0, 0.5, -1.0, -0.75, -0.5, 0.0, 0.0, -0.75, 0.25, -0.75, 0.75, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    const array1 = new Float32Array([-0.5, 1.0, 0.75, 0.5, -1.0, -0.5, 0.0, -0.75, 1.0, 0.75, -0.25, -0.5, 0.0, -1.0, -0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 0.0, 0.25, 1.0, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, -0.75, 0.5, 0.75, -0.5, -0.5, -1.0, 0.5, 0.75, -0.5, 0.75, -1.0, 1.0, 0.75, -0.75, 0.25, 0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 0.5, 0.25, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, -0.75, -0.25, -0.75, 0.75, 0.75, 0.0, 1.0, 0.0, 0.5, 1.0, 1.0, -0.25, -1.0, 0.75, 0.75, -0.25, 1.0, 0.0, -0.5, -0.5, 0.25, -0.25, -0.5, -1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.25, 0.25, -0.75, 0.75, 0.0, 1.0, 0.5, 1.0, 0.25, -0.5, 0.75, 1.0, 0.25, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer100 = command_encoder100.finish();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer102 = command_encoder102.finish();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_buffer101 = command_encoder101.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer200 = command_encoder200.finish();
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    buffer200.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_buffer402 = command_encoder402.finish();
    buffer401.destroy()
    
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const array2 = new Float32Array([-0.5, 0.5, 0.5, 0.0, 0.75, 1.0, -0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 0.75, -0.25, -0.25, 1.0, 0.0, 0.0, 0.5, -0.25, 0.5, 0.0, 0.0, -0.25, 0.25, -1.0, -0.25, -1.0, 0.5, 0.75, -1.0, -1.0, 1.0, 0.5, -0.5, -0.25, 0.5, -0.75, 1.0, 0.0, 0.0, 0.0, -0.25, 1.0, -0.5, 0.5, -1.0, 1.0, 0.5, 0.5, -0.25, 1.0, -0.75, -0.75, -0.75, 0.5, 0.5, 0.0, -1.0, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, -0.75, -0.25, -1.0, -0.75, 1.0, 0.0, 0.75, -0.5, -0.75, -1.0, -0.5, 0.75, 0.25, -0.75, -0.5, 0.0, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, -0.25, 0.5, -0.25, 0.0, 0.0, -0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -0.5, -0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.0, -0.25, -1.0, 1.0, 0.5, 0.25, 0.75, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 0.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.75, -0.25, 1.0, 1.0, 0.0, -0.75, 0.75, 0.25, -0.25, -0.75, -0.75, 0.5, 1.0, -0.25, 0.0, -0.5, 0.5, -1.0, 0.25, 1.0, -1.0, 0.5, 0.5, 0.25, -0.75, 1.0, -1.0, 0.25, 0.75, 0.0, 1.0, 0.5, 0.0, -1.0, -0.5, -0.75, 0.75, 0.25, -1.0, 0.5, 0.0, -0.5, 1.0, -0.5, -0.25, 0.75, 0.0, 0.25, -1.0, -0.75, 1.0, 0.5, -1.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, 0.5, 1.0, 0.5, -1.0, -0.75, 0.5, -0.25, 0.25, 1.0, 0.5, -0.5, 0.5, 0.75, -0.5, 0.25, -0.75, 0.5, ]);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device40.queue.submit([command_buffer402, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    buffer102.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer101.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer201.destroy()
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const array4 = new Float32Array([0.5, 0.0, -1.0, 0.0, 1.0, 1.0, 0.5, 0.25, -1.0, -0.5, 0.75, 0.5, -0.75, -1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 0.0, 0.0, -0.5, -0.75, 1.0, 0.0, -1.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.75, 0.0, 1.0, 0.25, -0.75, 1.0, 0.75, 1.0, -1.0, -0.75, -0.75, -0.5, -0.5, -0.75, -1.0, -1.0, 0.5, -0.5, -0.75, -0.5, -0.75, -0.25, 0.0, -0.5, 0.5, -0.5, 1.0, -0.25, 1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.25, 0.0, 0.75, 0.5, 0.5, 0.5, -1.0, -0.5, 0.0, -1.0, -0.25, 0.5, 1.0, 0.25, -1.0, 0.0, 0.25, 0.25, -0.75, -0.25, -1.0, 0.5, -0.25, 0.5, 0.0, -0.75, -0.25, 1.0, 0.25, 0.75, 0.0, -0.5, -1.0, 0.75, 0.75, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder201.insertDebugMarker("mymarker");
    
    buffer002.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer400.destroy()
    const command_buffer300 = command_encoder300.finish();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_buffer202 = command_encoder202.finish();
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer300.destroy()
    
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    buffer000.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    buffer001.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    command_encoder302.insertDebugMarker("mymarker");
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer203 = command_encoder203.finish();
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    buffer202.destroy()
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    buffer204.destroy()
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer003.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer402.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const array5 = new Float32Array([1.0, -0.25, -1.0, 0.0, -0.5, 0.25, 0.75, 0.5, -1.0, 0.0, 0.0, 0.75, -0.75, 0.5, 0.5, -0.5, -0.75, -0.75, -1.0, -0.25, -0.25, -0.25, 0.0, 0.5, 0.25, 0.75, -0.75, 0.75, 0.5, 0.5, 1.0, -1.0, 0.0, -0.25, 0.0, 0.75, 1.0, -0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 1.0, 0.25, 0.0, -0.5, -0.25, 0.5, -0.75, -0.25, 0.75, -0.5, 0.0, 0.75, 0.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.0, 1.0, -1.0, 1.0, -0.5, 0.75, -0.25, 1.0, -0.5, -1.0, 0.25, 0.0, 0.75, 1.0, 0.75, 0.0, 0.0, 1.0, 0.25, 0.25, -0.5, -1.0, 1.0, 0.0, 0.5, -0.5, -1.0, -0.75, 0.0, 1.0, 0.5, -0.75, -0.5, -0.5, 0.25, -0.25, -0.5, 0.0, 0.25, ]);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_buffer003 = command_encoder003.finish();
    const command_buffer201 = command_encoder201.finish();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const command_buffer601 = command_encoder601.finish();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    const command_buffer204 = command_encoder204.finish();
    
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.submit([command_buffer300, ]);
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer302 = command_encoder302.finish();
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer500.destroy()
    buffer403.destroy()
    
    
    
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer104.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const array6 = new Float32Array([0.25, -0.25, 1.0, -0.25, 0.75, 0.5, -0.75, -0.25, 0.5, 0.0, -0.25, 0.5, 0.0, 0.5, -0.5, -0.5, 0.75, -0.75, 0.0, -0.25, -0.25, 0.5, 0.75, 1.0, 0.25, -0.75, 1.0, 0.5, -0.75, 0.0, 0.25, 0.5, -0.5, 1.0, 0.75, -0.75, 0.75, 1.0, 1.0, 0.0, -0.75, 0.75, -0.75, 0.75, -0.25, 0.0, -0.25, -0.5, 0.0, 1.0, -0.5, -1.0, -0.25, -1.0, -0.5, 1.0, 0.75, 1.0, 0.5, -0.25, -0.75, 1.0, -0.25, 0.5, -0.5, 0.5, 0.75, -0.75, -0.25, -0.5, -0.5, 0.75, -0.75, 0.0, -0.5, -1.0, -0.25, -0.25, -0.75, 0.25, 1.0, -1.0, -0.5, 0.75, 0.75, 0.0, 0.0, 0.75, 0.5, 1.0, 0.0, 0.0, 0.25, 0.5, 0.25, -1.0, 0.5, -1.0, -1.0, 0.5, ]);
    
    
    const command_buffer602 = command_encoder602.finish();
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer301.destroy()
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer600.destroy()
    device00.queue.submit([command_buffer003, ]);
    const command_buffer500 = command_encoder500.finish();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer403 = command_encoder403.finish();
    device10.queue.submit([command_buffer102, ]);
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer403, ]);
    device60.queue.submit([command_buffer601, ]);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer201, ]);
}