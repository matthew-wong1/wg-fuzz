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
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array0 = new Float32Array([-1.0, -1.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.75, 0.0, 1.0, 0.75, 0.75, -0.75, -0.75, -0.25, -0.75, -0.75, 0.0, -0.75, -0.75, -0.25, -0.5, 0.25, 0.25, -0.25, 0.0, -0.25, 0.5, 0.5, 1.0, 1.0, -1.0, 0.0, -0.75, 0.5, -0.75, -1.0, 0.75, 0.75, -0.5, -0.5, 0.25, 1.0, 0.75, 0.75, 0.0, 0.75, -0.75, -1.0, 0.5, 0.0, 0.5, 0.25, -0.75, -1.0, 0.25, 0.75, -0.25, -0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.75, 0.5, -1.0, -0.25, -0.25, 0.25, 0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -0.5, 0.5, 0.25, 0.25, -1.0, -0.25, -1.0, 0.5, 0.0, -0.25, -0.75, -0.75, 0.5, 1.0, -0.25, 0.5, -0.5, -1.0, -1.0, 0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array1 = new Float32Array([-0.75, -0.25, 0.25, 0.5, -0.75, 0.0, 0.0, 0.5, 0.75, 0.75, -1.0, -0.5, 0.0, -1.0, -1.0, 0.0, 0.75, 0.5, -0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 0.25, -0.25, 1.0, 0.0, 0.5, -0.5, -0.75, -1.0, 0.25, -0.25, 0.25, 1.0, 0.75, -0.25, -1.0, 0.5, 0.0, 0.25, 0.75, 0.0, -0.75, 0.5, 1.0, -0.25, -0.5, -0.25, 0.5, -1.0, 0.5, -0.75, -0.75, -0.75, -0.75, -0.5, -0.5, -1.0, 0.0, -0.5, 0.5, 0.0, -0.25, 1.0, 0.5, -0.75, 1.0, 0.5, -0.5, -0.75, -1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 1.0, 1.0, -0.25, -0.5, -0.5, 0.0, 0.75, 1.0, 0.5, -0.5, -0.25, -0.5, -0.75, 0.75, -0.5, 0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 0.75, ]);
    const array2 = new Float32Array([-0.75, 0.25, -0.75, 0.5, -0.5, -0.25, 0.75, 0.0, 0.0, 0.75, 0.0, 0.75, 0.0, 1.0, 0.25, -0.25, 0.5, 0.25, -0.5, 0.0, -0.5, 0.75, -0.75, -1.0, 0.5, -1.0, 0.5, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, -0.5, 0.5, 0.75, -0.25, 0.25, 0.75, 0.25, 0.5, 0.5, -0.75, -0.5, 0.25, -0.75, -0.5, -0.75, -0.5, 0.75, 0.75, -0.25, -0.5, 1.0, -0.75, 0.75, -0.75, -0.5, -0.25, -0.75, -0.5, -1.0, -1.0, 0.75, 0.5, -0.75, -1.0, -0.25, 1.0, 0.5, 0.0, 0.75, 0.5, 0.75, 0.5, -0.75, -0.25, 0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 0.5, 0.5, 0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 0.5, 0.5, 0.5, 0.5, -0.25, 0.0, -0.75, 1.0, -0.25, ]);
    const array3 = new Float32Array([-0.5, -0.75, -1.0, -1.0, 0.25, -0.75, -0.5, -1.0, -0.75, 0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -0.25, 0.25, -1.0, -1.0, -0.25, -0.25, -0.25, 0.75, -0.5, 0.0, 1.0, 1.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.75, -1.0, -0.75, -1.0, 1.0, -0.75, 1.0, -1.0, 0.25, -0.5, -0.5, 0.25, 0.25, 0.5, -0.25, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 1.0, 0.0, -0.5, 0.0, 0.5, -1.0, 0.25, 1.0, 0.75, 0.5, 0.5, 0.5, -0.25, -0.5, 0.75, -0.5, -1.0, -0.5, -0.25, 0.5, -0.5, 0.0, -0.75, -0.5, 0.25, 1.0, 0.75, 0.25, -0.25, -0.5, -0.75, -1.0, 0.5, 0.5, 0.75, -0.75, 1.0, -0.25, -0.5, 0.25, 1.0, 0.5, -0.75, -0.75, -1.0, 1.0, ]);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder300.insertDebugMarker("mymarker");
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder300.clearBuffer(buffer300);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array4 = new Float32Array([0.25, 0.5, -0.25, 0.25, 0.25, -1.0, -1.0, 0.25, 0.5, -0.75, 0.0, 0.5, 1.0, 0.0, 0.75, 0.5, -0.5, 0.5, 0.75, -0.75, -0.75, -0.25, -0.75, 0.5, -0.75, -1.0, -0.5, -0.5, 1.0, 0.0, 0.25, 0.0, -0.25, -0.75, 0.0, 1.0, 0.0, 0.75, -0.75, -1.0, 1.0, 1.0, 0.0, 0.75, 0.75, 1.0, 0.0, 1.0, -1.0, 0.0, -0.5, -1.0, -1.0, 0.75, -1.0, -0.25, 0.25, 1.0, -0.75, -0.25, 0.0, 0.25, -1.0, -0.25, -0.5, -0.5, -0.5, 0.0, -0.25, 0.25, -1.0, 0.5, 0.5, 0.25, -1.0, 0.0, -1.0, 0.5, 0.25, 0.25, 0.75, -0.25, 0.25, -0.75, 1.0, 0.0, 1.0, 0.5, -0.75, -0.5, 0.25, 0.0, 0.25, 1.0, -0.25, 0.0, 0.75, 0.0, 0.75, -0.5, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder301.insertDebugMarker("mymarker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer100.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    
    query300.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    query101.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer400.destroy()
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array5 = new Float32Array([0.75, -0.25, -1.0, -0.25, 0.75, -1.0, 1.0, -0.25, -0.5, -0.75, -0.75, 0.5, -1.0, -0.25, 1.0, 0.0, 0.5, 0.0, -0.75, 1.0, 0.5, -0.5, -0.5, -0.75, 0.5, 0.25, 1.0, -0.25, -0.75, -1.0, -0.75, 0.0, -0.25, 0.5, -0.25, -0.5, 1.0, -0.25, 0.25, 0.5, 0.75, -0.5, 0.5, -0.25, -0.75, 0.0, -0.5, -1.0, 1.0, -0.5, -1.0, 1.0, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, 0.5, -1.0, 0.75, -0.75, 1.0, -0.5, -1.0, 0.25, -1.0, -0.75, -1.0, 0.0, -0.5, 0.0, -0.5, 0.75, 0.75, -0.75, -0.75, 0.75, 1.0, -0.25, 0.0, 0.75, 0.75, -0.5, 1.0, -0.25, -0.75, 0.25, -0.5, 0.75, 0.25, -0.25, 0.5, -0.25, 1.0, 0.25, 1.0, 0.25, 0.0, 0.5, ]);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder301.insertDebugMarker("mymarker");
    
    
    query300.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.clearBuffer(buffer000);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder0000.popDebugGroup()
    query000.destroy()
    const array6 = new Float32Array([-1.0, -0.5, -0.5, 1.0, 0.0, -0.5, 0.0, -0.5, 0.25, -1.0, -0.25, -1.0, 0.0, -0.5, 0.25, 1.0, 0.0, -0.75, 0.25, 0.25, 1.0, -0.25, -0.75, 1.0, -1.0, 0.25, 1.0, -0.25, 0.0, 0.0, -1.0, 0.25, 0.5, 0.0, 0.75, -0.5, 1.0, -0.75, 0.0, 0.75, -1.0, 0.0, -1.0, 1.0, 0.25, -1.0, 0.75, 0.25, 0.0, 1.0, -0.75, 0.0, 0.0, 0.0, -0.25, -1.0, 0.0, -0.75, -0.5, 0.75, 0.75, 0.0, 0.5, -0.5, 0.5, 0.25, -0.5, -0.75, -1.0, 0.5, -0.75, -0.25, 0.0, 0.25, 0.5, 0.5, -0.25, 0.5, 0.5, -0.25, 0.5, -0.25, 0.25, -0.75, -1.0, 0.25, 1.0, -1.0, -0.25, 0.0, -0.25, -0.75, -1.0, -0.25, -1.0, -0.25, -0.5, -0.25, 1.0, -0.5, ]);
    const array7 = new Float32Array([1.0, -0.75, -0.5, 1.0, -0.5, -0.25, -0.75, -1.0, 0.25, 1.0, -0.75, -0.5, -1.0, -0.75, 0.75, 1.0, -1.0, -0.5, -0.25, 0.75, -0.5, 0.5, -0.75, -1.0, -0.75, 1.0, 0.5, -0.75, 0.75, 0.5, 0.75, 1.0, -0.75, 0.5, 0.0, -0.5, -0.75, 0.25, 0.0, -0.75, 0.5, 0.75, 1.0, -0.75, 0.0, -1.0, -0.25, 1.0, -0.25, -1.0, 0.5, 0.5, 0.5, -0.25, -1.0, 1.0, -0.5, -0.25, 0.25, 1.0, -0.5, -0.75, 0.5, -0.5, -0.5, -0.25, -0.25, 0.25, -0.5, -0.5, 0.25, -0.5, 0.25, -0.25, 0.0, -1.0, 0.75, 1.0, -0.5, 0.25, -1.0, 0.0, 0.5, -1.0, 0.25, -0.25, -0.5, 0.75, 1.0, 1.0, -0.25, -0.75, -1.0, 0.0, 0.0, -1.0, 0.25, 0.75, -1.0, 1.0, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query301.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4000.popDebugGroup()
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    buffer202.destroy()
    const command_buffer600 = command_encoder600.finish();
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    query300.destroy()
    buffer201.destroy()
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    command_encoder201.pushDebugGroup("mygroupmarker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device70.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    buffer200.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    query001.destroy()
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.0, 0.25, 0.0, -0.75, -0.5, -0.75, 0.25, 0.25, -0.75, -1.0, -1.0, 0.75, 1.0, 0.0, -0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.25, 0.75, 0.75, 1.0, 0.5, -0.5, 0.25, -1.0, -0.75, 0.0, 0.25, 0.75, 0.75, 0.5, 0.5, 1.0, -0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, 0.75, -1.0, 0.5, 1.0, 0.25, 0.75, -0.75, -0.25, -0.5, -0.5, -1.0, 1.0, -0.75, 0.0, 0.25, -1.0, 0.0, 1.0, -0.25, -0.25, 0.5, -0.5, 0.0, -0.75, 0.25, 1.0, -1.0, -0.5, 1.0, -1.0, 0.75, -0.25, -0.25, -0.5, 0.75, -1.0, -0.5, 0.75, 0.5, 0.25, 0.5, 1.0, -0.25, 1.0, 0.25, -1.0, 0.75, 0.75, 0.75, 1.0, -0.75, 0.0, ]);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query200.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    command_encoder002.clearBuffer(buffer000);
    buffer000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    buffer600.destroy()
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const command_buffer602 = command_encoder602.finish();
    command_encoder001.popDebugGroup()
    compute_pass_encoder3010.insertDebugMarker("marker")
    query000.destroy()
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder001.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder202.pushDebugGroup("mygroupmarker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder601.insertDebugMarker("mymarker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    query400.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query301.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    query400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    query401.destroy()
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    
    const array9 = new Float32Array([0.0, -0.25, 0.25, 0.75, -1.0, 0.75, 0.25, 0.75, 1.0, 0.5, 1.0, 0.5, -0.75, 0.0, -0.75, 1.0, -0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 0.0, -0.25, 1.0, 0.0, 0.25, -0.25, 1.0, 0.5, -0.75, 1.0, 1.0, 0.5, -0.25, 0.75, 0.0, 0.5, 1.0, -1.0, 0.75, 0.0, -0.25, -0.75, 0.75, 0.25, -0.5, -0.25, -1.0, 0.25, 0.25, 1.0, -0.75, -0.25, 1.0, 0.25, 1.0, 0.0, -0.75, -0.25, -0.75, -0.5, -0.75, -0.75, -0.5, 0.75, 0.5, -0.25, -0.75, -1.0, -0.75, 0.75, 0.75, -1.0, -0.25, 0.5, -0.5, 0.25, 0.0, -0.75, -1.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.25, 0.0, -0.5, 0.25, -0.25, 0.25, -1.0, -1.0, 0.25, 0.5, -1.0, 0.5, 0.0, -1.0, ]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    query200.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer602.destroy()
    
    buffer603.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array10 = new Float32Array([-1.0, 0.0, 1.0, 0.75, -1.0, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 0.25, -1.0, 0.5, 1.0, 0.75, 0.5, 1.0, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, -0.75, 0.0, -0.25, 0.25, 0.0, -0.25, -1.0, 0.0, -0.5, 0.25, -0.25, 0.75, -0.5, -0.25, -0.25, 0.75, -0.25, 0.5, -0.75, 1.0, 0.75, -0.75, 0.0, -1.0, 0.5, 0.5, 0.25, -0.75, 0.5, 1.0, -0.75, 0.5, 0.5, -1.0, 0.25, -0.75, -0.25, 0.5, 0.0, -0.5, -0.75, 0.75, -0.25, -1.0, 0.0, 0.75, -0.5, -1.0, -1.0, 1.0, 0.25, -0.25, -0.75, -0.25, -1.0, -0.5, -0.75, 0.75, -1.0, 0.5, -1.0, -1.0, 0.25, 0.25, 0.75, 0.5, -0.25, 1.0, 0.0, -1.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.25, ]);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query300.destroy()
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0010.popDebugGroup()
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query400.destroy()
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    query402.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query600.destroy()
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    query202.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    query300.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query501.destroy()
    
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const array11 = new Float32Array([-1.0, -0.5, 0.25, -0.75, 1.0, 0.25, 0.25, 0.0, 0.75, -1.0, -1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 0.75, -0.25, -0.75, 1.0, 1.0, -0.75, -0.25, -0.75, 1.0, 1.0, 0.0, 0.25, 0.25, -0.5, 0.5, -1.0, -0.25, -0.25, 0.25, -1.0, 0.75, 0.0, 0.0, -0.75, -1.0, -0.75, 1.0, 0.25, -0.75, 0.75, 0.75, 0.25, -0.75, 0.5, -0.5, -0.75, 0.5, -0.25, -1.0, -0.75, 0.25, 0.0, 0.25, -0.25, -0.5, -1.0, 0.25, 0.75, 0.25, -0.75, -0.25, 0.5, 1.0, 0.25, -0.5, 0.25, -0.5, 0.25, -0.5, -0.5, -0.75, 0.25, 0.25, 0.5, 0.25, -1.0, 0.25, 0.0, -1.0, 0.75, -0.5, -0.5, -0.25, 1.0, 1.0, -0.5, -0.25, 0.25, 0.75, 1.0, 0.75, 0.0, -1.0, -0.25, ]);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.popDebugGroup()
    buffer402.destroy()
    query200.destroy()
    query001.destroy()
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    compute_pass_encoder5010.popDebugGroup()
    
    
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    compute_pass_encoder2010.popDebugGroup()
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline303);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    buffer502.destroy()
    
    compute_pass_encoder3020.setPipeline(compute_pipeline304);
    query302.destroy()
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    command_encoder402.popDebugGroup()
    command_encoder402.pushDebugGroup("mygroupmarker")
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    command_encoder305.insertDebugMarker("mymarker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder5020.popDebugGroup()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    compute_pass_encoder3050.insertDebugMarker("marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0040.popDebugGroup()
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    query400.destroy()
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    buffer401.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3050.setPipeline(compute_pipeline305);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query005.destroy()
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    compute_pass_encoder3050.insertDebugMarker("marker")
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    query404.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder6030.insertDebugMarker("marker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    {
        await buffer503.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer503.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer503.unmap();
        console.log(new Float32Array(data));
    }
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3060.setPipeline(compute_pipeline300);
    compute_pass_encoder3060.popDebugGroup()
    command_encoder800.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    command_encoder500.popDebugGroup()
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const command_buffer403 = command_encoder403.finish();
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3050.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder0050.setPipeline(compute_pipeline000);
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    compute_pass_encoder3000.popDebugGroup()
    command_encoder402.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    device00.queue.submit([command_buffer002, ]);
}