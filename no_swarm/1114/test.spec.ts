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
    
    
    const array0 = new Float32Array([-0.75, -0.75, -1.0, -0.25, 0.75, -0.5, 1.0, 0.0, 0.0, 0.25, 1.0, -1.0, -0.5, -0.5, 0.75, 0.75, -0.75, 0.25, 0.5, -0.25, 1.0, 0.75, 0.75, -1.0, -0.25, -0.25, 0.25, -0.5, 1.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.75, -1.0, 0.25, 0.75, -0.75, 0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.25, -0.25, 0.5, 1.0, -0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 0.0, 0.0, 0.25, -0.75, 0.75, 0.5, -0.25, -1.0, -0.75, 0.75, -0.5, -1.0, -0.75, -0.5, 0.5, 0.0, -0.75, -1.0, 0.25, 0.0, -0.25, 0.0, 0.0, -0.5, 0.25, -1.0, 0.5, -1.0, 0.5, 0.5, 0.0, -0.25, 0.25, -0.5, -1.0, ]);
    const array1 = new Float32Array([-0.25, 0.5, -1.0, -1.0, 1.0, -0.25, 0.5, -0.25, 0.25, -1.0, -0.5, 0.0, 1.0, -0.75, 0.0, 0.5, 0.5, 1.0, 0.5, 1.0, -0.5, 1.0, -0.25, 0.0, 0.0, -0.75, 0.5, 0.75, -0.5, 1.0, 0.25, -1.0, 0.25, 0.0, 1.0, -1.0, 0.5, -1.0, -1.0, -0.25, 0.0, -0.5, 0.25, 0.75, -0.5, 1.0, 0.25, 1.0, -0.5, 0.5, 0.25, -0.5, 0.25, 0.75, -1.0, -0.75, -1.0, 1.0, 0.25, 1.0, -0.25, 0.75, -0.5, -1.0, 0.75, 1.0, 0.5, -0.5, 0.75, -0.5, 0.0, -0.5, -1.0, 0.5, 0.0, 0.5, 0.75, 0.5, 0.75, -1.0, 0.75, -0.75, -0.75, 0.75, -0.75, 0.0, 0.75, -1.0, 1.0, 0.75, 0.75, 0.25, -0.25, 0.75, 0.25, 0.0, -1.0, 0.75, 0.5, 0.75, ]);
    
    
    
    const array2 = new Float32Array([0.25, -0.25, -0.5, -0.25, 0.0, -0.75, 0.75, -1.0, -0.75, 0.5, 1.0, 0.75, 0.0, 0.0, -1.0, 0.25, 0.25, 0.5, 0.25, -0.25, 0.0, 0.25, -1.0, -0.75, 1.0, 0.25, -0.25, 0.5, -1.0, -0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.0, 0.75, -0.25, 1.0, 0.25, 0.5, 0.75, 1.0, -0.5, 1.0, 0.5, -0.5, 0.0, 0.5, 0.5, 0.0, -0.5, -0.5, 1.0, -1.0, -0.5, 0.0, -0.75, 0.5, 0.75, -0.5, -0.5, -0.25, -0.5, 0.75, 0.25, -0.25, 0.25, 0.75, -1.0, -1.0, -0.25, 0.25, 0.5, 0.0, 0.75, -0.75, -0.25, -0.5, -0.25, 0.75, -0.5, 0.75, -0.5, -0.5, -0.75, -0.5, 0.5, 0.0, 0.25, -0.75, -1.0, -0.75, 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    texture101.destroy();
    device10.queue.submit([]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.destroy();
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array3 = new Float32Array([-1.0, -1.0, 0.25, 0.0, -0.25, -0.75, 0.0, 0.0, -0.75, 0.0, 0.25, 0.25, 0.0, 0.0, -0.25, 0.75, 0.5, -0.25, 0.0, -0.5, -0.25, 0.75, -1.0, 0.25, -0.25, 0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 0.5, 0.0, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, 0.0, 0.75, 0.0, -0.75, 1.0, -1.0, 0.75, 0.5, -0.75, 1.0, -0.75, 0.5, 0.75, -0.75, 1.0, -0.5, -0.5, 0.0, 0.25, -0.5, 0.75, -0.25, 1.0, 0.0, 0.5, 0.25, 1.0, 0.0, -0.75, -1.0, -0.75, -0.75, 0.5, 0.25, -0.5, -0.5, -0.75, -0.75, -0.5, 0.75, -0.5, 0.0, 0.0, 1.0, -1.0, -0.5, 0.5, 0.0, 1.0, -0.25, -0.75, 0.0, 0.5, 0.0, -1.0, -0.5, 0.75, -0.75, -0.75, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array4 = new Float32Array([0.5, 0.0, 0.25, 0.25, 0.25, -0.5, -1.0, 0.0, 0.75, -0.75, 0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -0.5, 0.25, -1.0, 0.5, 0.25, 0.0, -0.5, 0.25, 0.0, 0.25, 1.0, -1.0, 1.0, 0.25, -0.75, 0.25, -0.75, -1.0, -0.75, -0.75, 0.25, -0.25, 1.0, 0.5, 0.5, -0.5, -0.25, 1.0, 0.25, -0.75, 0.75, 0.5, -1.0, -0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.75, 0.75, 1.0, -0.5, -0.75, 0.5, 1.0, -0.25, -0.5, -0.25, 0.25, -0.25, -0.5, -0.75, -0.5, 0.75, 0.0, 0.0, 0.0, -0.75, 0.75, 0.75, -0.25, -1.0, 1.0, 0.75, 0.25, -1.0, -0.75, 0.5, -0.25, -0.75, 0.5, 0.5, -0.5, 0.25, -0.5, 0.0, -0.75, -0.25, 0.5, -1.0, 0.0, -0.25, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    
    const array5 = new Float32Array([1.0, 1.0, -0.5, 0.75, -0.25, 0.75, -0.75, -1.0, -0.75, 0.5, -1.0, 0.25, 0.5, -0.5, 0.5, 0.75, 0.25, -0.5, -0.5, 0.5, -0.5, 0.5, -0.5, -0.25, 0.5, 0.25, -0.75, 0.0, -0.5, 0.25, -0.5, 0.5, -1.0, -0.25, -0.75, -1.0, 1.0, 0.0, 0.25, -0.5, 1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, -0.75, 1.0, 0.25, 1.0, -0.75, -1.0, 0.5, 0.75, 0.0, 0.0, -0.25, -1.0, 0.0, 1.0, -1.0, -0.25, 1.0, -1.0, -1.0, 0.75, -0.5, 0.25, 0.5, 0.25, 0.0, 0.5, -0.25, -1.0, 0.25, -0.5, 1.0, 0.5, 0.0, 0.0, 0.0, -0.5, 0.0, -0.5, -0.25, 0.75, 0.75, -0.75, -0.75, -0.75, 0.25, -0.75, 0.75, -1.0, 0.25, 0.0, -0.75, ]);
    
    
    buffer200.destroy()
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    
    
    texture101.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device50.destroy();
    texture300.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    buffer200.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder300.clearBuffer(buffer300);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture200.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.destroy();
    
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder300.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
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
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder300.clearBuffer(buffer300);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    device30.pushErrorScope("validation");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    command_encoder300.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer401.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder301.clearBuffer(buffer300);
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3000.popDebugGroup()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder3020.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.pushErrorScope("validation");
    render_bundle_encoder400.insertDebugMarker("marker");
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    buffer301.destroy()
    render_pass_encoder3010.setStencilReference(1);
    
    device70.pushErrorScope("out-of-memory");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
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
    
    texture700.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    buffer301.destroy()
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_pass_encoder3020.setStencilReference(1);
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array6 = new Float32Array([1.0, 0.5, 0.75, -0.5, 0.0, 0.5, 0.0, 0.5, -1.0, 0.25, 0.0, 0.25, -0.25, -0.25, 0.0, 0.25, 0.5, 0.5, -0.5, 0.25, -1.0, 0.5, 1.0, 0.0, 1.0, -1.0, 1.0, -0.75, 0.75, -0.5, 0.75, 0.0, 0.5, -1.0, 0.25, -0.25, 0.75, 0.25, 0.75, 0.5, -1.0, 0.0, -0.75, 0.75, -0.5, -0.5, -1.0, -0.5, -0.25, 0.5, -0.5, -0.25, -0.75, 1.0, -0.5, -1.0, -0.5, 0.0, -0.25, -0.5, -1.0, 0.25, -0.5, 1.0, 1.0, 1.0, 0.5, 1.0, 0.5, 1.0, -0.75, 0.75, -0.5, -0.5, -0.75, 1.0, 0.5, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, 0.25, -0.25, -0.75, 1.0, 1.0, -0.5, 0.0, -0.25, 0.5, 0.5, -1.0, -1.0, 0.25, -0.75, -0.5, -0.25, 0.75, ]);
    const command_buffer304 = command_encoder304.finish();
    
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    render_pass_encoder3030.beginOcclusionQuery(0)
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    device70.queue.writeTexture({ texture: texture701 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3030.setStencilReference(1);
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const texture_view7012 = texture701.createView({ label: "texture_view7012" });
    render_pass_encoder3030.setStencilReference(1);
    
    
    const command_buffer303 = command_encoder303.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.beginOcclusionQuery(1)
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    texture301.destroy();
    query400.destroy()
    
    command_encoder301.clearBuffer(buffer300);
    render_pass_encoder3010.insertDebugMarker("marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3030.executeBundles([])
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3020.beginOcclusionQuery(2)
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    
    
    render_pass_encoder3010.executeBundles([])
    
    command_encoder301.clearBuffer(buffer300);
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device30.queue.submit([command_buffer303, ]);
    device60.pushErrorScope("validation");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    compute_pass_encoder3000.popDebugGroup()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3021.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.setPipeline(render_pipeline300);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    query700.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    command_encoder300.insertDebugMarker("mymarker");
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3020.executeBundles([])
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    compute_pass_encoder4011.insertDebugMarker("marker")
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder3020.setPipeline(render_pipeline300);
    
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.setStencilReference(1);
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device60.pushErrorScope("out-of-memory");
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const texture_view7013 = texture701.createView({ label: "texture_view7013" });
    render_pass_encoder3010.setStencilReference(1);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture302.destroy();
    query601.destroy()
    render_pass_encoder3000.beginOcclusionQuery(0)
    render_pass_encoder3021.beginOcclusionQuery(0)
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder3000.setStencilReference(1);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer403,
        0
    )
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query700.destroy()
    render_pass_encoder3000.insertDebugMarker("marker");
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    query700.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view7014 = texture701.createView({ label: "texture_view7014" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    command_encoder600.clearBuffer(buffer600);
    
    render_pass_encoder3020.endOcclusionQuery()
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer602.destroy()
    command_encoder402.popDebugGroup()
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    command_encoder600.clearBuffer(buffer601);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder600.clearBuffer(buffer601);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    buffer601.destroy()
    render_pass_encoder3030.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4011.pushDebugGroup("group_marker")
    render_pass_encoder3021.popDebugGroup();
    render_bundle_encoder402.popDebugGroup();
    query400.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    query300.destroy()
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder300.insertDebugMarker("mymarker");
    compute_pass_encoder3050.setPipeline(compute_pipeline305);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    compute_pass_encoder3050.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    query701.destroy()
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    render_pass_encoder3000.setPipeline(render_pipeline301);
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder3030.endOcclusionQuery()
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder305.resolveQuerySet(
        query301,
        0,
        32,
        buffer304,
        0
    )
    render_pass_encoder3021.insertDebugMarker("marker");
    render_pass_encoder3000.insertDebugMarker("marker");
    
    buffer302.destroy()
    buffer701.destroy()
    
    compute_pass_encoder4011.setPipeline(compute_pipeline400);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.setPipeline(render_pipeline301);
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    render_pass_encoder3021.endOcclusionQuery()
    compute_pass_encoder4011.popDebugGroup()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    device70.queue.submit([]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3050.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder3050.popDebugGroup()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder3000.endOcclusionQuery()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group305);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder3030.setVertexBuffer(0, buffer3012);
    const command_buffer300 = command_encoder300.finish();
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3030.draw(3);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3030.end();
    render_pass_encoder3010.setVertexBuffer(0, buffer306);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group306);
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder3000.setVertexBuffer(0, buffer3014);
    compute_pass_encoder4010.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group402);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.end();
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4011, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.setPipeline(render_pipeline300);
    compute_pass_encoder4011.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3016, 0);
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group307);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    render_pass_encoder3020.setVertexBuffer(0, buffer3018);
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer3017, "uint16");
    compute_pass_encoder3050.dispatchWorkgroups(100);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder3050.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3019, 0);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder3021.setVertexBuffer(0, buffer3011);
    render_pass_encoder3021.draw(3);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3050.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3000.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder3030.drawIndirect(buffer3016, 0);
    compute_pass_encoder3050.popDebugGroup()
    command_encoder401.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    device40.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3020, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3019, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3000.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndirect(buffer3015, 0);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    device70.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer3016, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3000.popDebugGroup();
    command_encoder302.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4010.end();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.end();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4000.end();
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer304, ]);
    device40.queue.submit([]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3015, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3021.draw(3);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group404);
    render_pass_encoder3010.drawIndirect(buffer3016, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.draw(3);
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group406);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3013, 0);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    compute_pass_encoder3000.end();
    render_pass_encoder3010.draw(3);
    compute_pass_encoder4011.end();
    render_pass_encoder3021.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3000.end();
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    compute_pass_encoder3050.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3011);
    render_pass_encoder3030.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3010.drawIndexed(3);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3010.end();
    device60.queue.submit([command_buffer600, ]);
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder3030.drawIndirect(buffer3016, 0);
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexedIndirect(buffer3013, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    render_pass_encoder3030.setIndexBuffer(buffer3019, "uint16");
    compute_pass_encoder4011.end();
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.draw(3);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3029, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3010.end();
    render_pass_encoder3000.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3026, "uint16");
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3030, 0);
    render_pass_encoder3021.drawIndirect(buffer300, 0);
    device60.queue.submit([]);
    device30.queue.submit([]);
    compute_pass_encoder4011.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3030.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4011.popDebugGroup()
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group408);
    render_pass_encoder3000.drawIndirect(buffer3030, 0);
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    compute_pass_encoder4000.end();
    render_pass_encoder3000.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3030, 0);
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4010);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4028, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4028, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3021.drawIndexed(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3030.drawIndirect(buffer3029, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3020.popDebugGroup();
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4011);
    compute_pass_encoder3050.end();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder4000.end();
    render_pass_encoder3020.end();
    render_pass_encoder3030.end();
    render_pass_encoder3021.drawIndirect(buffer3030, 0);
    device70.queue.submit([]);
    compute_pass_encoder4000.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3021.drawIndirect(buffer3016, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.end();
    compute_pass_encoder4010.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3020.drawIndirect(buffer307, 0);
    render_pass_encoder3020.end();
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3029, 0);
    compute_pass_encoder3000.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder4000.popDebugGroup()
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4012);
    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4034,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4013);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4000.end();
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3030.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder3021.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.drawIndirect(buffer3029, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4035, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4035, 0);
    device60.queue.submit([]);
    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4037,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3000.drawIndexed(3);
    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4039,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4015);
    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4041,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4016);
    render_pass_encoder3010.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3030.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4042, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4042, 0);
    render_pass_encoder3000.end();
    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3032,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3013);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    render_pass_encoder3010.drawIndirect(buffer3026, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer3014, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    render_pass_encoder3010.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3029, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3035, 0);
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4043, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4043, 0);
    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4045,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4017);
    render_pass_encoder3021.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4046, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4046, 0);
    compute_pass_encoder3050.end();
    render_pass_encoder3021.setIndexBuffer(buffer302, "uint16");
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3036, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder3020.drawIndirect(buffer3036, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3020.drawIndirect(buffer3027, 0);
    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4048,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4018);
    render_pass_encoder3000.end();
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3037, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3037, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3037, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3025, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3021.setIndexBuffer(buffer3016, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4049, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4049, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder3021.end();
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3030.end();
    compute_pass_encoder4000.popDebugGroup()
    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4051,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4019);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([]);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4052, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3035, 0);
    render_pass_encoder3010.drawIndirect(buffer3030, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4000.end();
    device60.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer3034, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3000.end();
    compute_pass_encoder4011.popDebugGroup()
    device60.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3038, 0);
    render_pass_encoder3000.draw(3);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4054,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4020);
    render_pass_encoder3030.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3020.drawIndirect(buffer3038, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3021.end();
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4021);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer3036, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.drawIndirect(buffer3029, 0);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3020.end();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.end();
    compute_pass_encoder4011.end();
    device20.queue.submit([]);
    compute_pass_encoder3000.end();
    render_pass_encoder3010.drawIndirect(buffer3029, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3038, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3030, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3035, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3019, 0);
    device30.queue.submit([command_buffer305, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.drawIndirect(buffer3036, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3016, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3034, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3029, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3010.end();
    render_pass_encoder3010.drawIndirect(buffer3028, 0);
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3015);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3020.drawIndirect(buffer3038, 0);
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.drawIndexed(3);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3021.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3000.end();
    device50.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3020, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3037, 0);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3021.end();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3038, 0);
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3038, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3039, "uint16");
    compute_pass_encoder4011.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3000.drawIndirect(buffer3030, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3030, 0);
    device30.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer3038, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3025, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3010.drawIndirect(buffer3036, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4057, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4057, 0);
    render_pass_encoder3021.drawIndirect(buffer3016, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3030.drawIndirect(buffer3023, 0);
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3029, 0);
    device40.queue.submit([]);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3037, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer305, 0);
    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3042,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3016);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3043, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3043, 0);
    device30.queue.submit([command_buffer304, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([command_buffer304, ]);
    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4059,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4022);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer3029, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3021.drawIndirect(buffer3037, 0);
    compute_pass_encoder3050.end();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3044, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3044, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3045, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3045, 0);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3050.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3016, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3020.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4060, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4060, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3020.drawIndexedIndirect(buffer3024, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3044, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer3021, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3045, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3044, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3010.end();
    compute_pass_encoder4000.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder4010.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3046, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3046, 0);
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer305, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4061, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4061, 0);
    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4063,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4023);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3047, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3047, 0);
    compute_pass_encoder4011.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3036, "uint16");
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3021.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer3030, "uint16");
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder3050.end();
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndirect(buffer3037, 0);
    render_pass_encoder3020.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4064 = device40.createBuffer({
        label: "buffer4064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4064, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4064, 0);
    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4066 = device40.createBuffer({
        label: "buffer4066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4066,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4024);
    render_pass_encoder3000.drawIndirect(buffer3027, 0);
    const buffer4067 = device40.createBuffer({
        label: "buffer4067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4068 = device40.createBuffer({
        label: "buffer4068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4068,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4025);
    device30.queue.submit([]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3028, 0);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3038, 0);
    render_pass_encoder3020.drawIndirect(buffer3028, 0);
    render_pass_encoder3010.drawIndirect(buffer3044, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3048, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3048, 0);
    compute_pass_encoder3000.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder3030.drawIndirect(buffer3035, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3010.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder3010.drawIndirect(buffer3048, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3035, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3021.drawIndirect(buffer3044, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder3000.drawIndirect(buffer3046, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3021.drawIndirect(buffer3037, 0);
    render_pass_encoder3030.drawIndirect(buffer3038, 0);
    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4026 = device40.createBindGroup({
        label: "bind_group4026",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4070,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4026);
    render_pass_encoder3030.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder3021.drawIndirect(buffer3022, 0);
    compute_pass_encoder4011.end();
    render_pass_encoder3000.end();
    compute_pass_encoder4011.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3010.setIndexBuffer(buffer3048, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3029, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3000.drawIndirect(buffer3044, 0);
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3017);
    render_pass_encoder3010.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3048, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3030.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3030, 0);
    device70.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer3044, 0);
    device70.queue.submit([]);
    render_pass_encoder3021.end();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder3010.drawIndirect(buffer3037, 0);
    render_pass_encoder3000.drawIndirect(buffer3029, 0);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3025, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3030, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3047, 0);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3021.drawIndirect(buffer3024, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexedIndirect(buffer3035, 0);
    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3052,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3018);
    compute_pass_encoder3000.end();
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3017, 0);
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3038, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer309, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3038, "uint16");
    render_pass_encoder3030.end();
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3019);
    render_pass_encoder3010.drawIndexedIndirect(buffer3030, 0);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4071 = device40.createBuffer({
        label: "buffer4071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4071, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4071, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3010.drawIndirect(buffer3048, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3032, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3020.drawIndirect(buffer3029, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4010.end();
    compute_pass_encoder4011.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3048, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3036, 0);
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3020.drawIndirect(buffer3044, 0);
    device10.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    device40.queue.submit([]);
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([]);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    compute_pass_encoder4011.end();
    render_pass_encoder3021.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3035, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3052, "uint16");
    device10.queue.submit([]);
    render_pass_encoder3021.setIndexBuffer(buffer3037, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3040, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3045, 0);
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3021.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder4011.end();
    compute_pass_encoder4011.end();
    render_pass_encoder3030.drawIndirect(buffer3029, 0);
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3020);
    device00.queue.submit([]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3044, 0);
    render_pass_encoder3021.drawIndirect(buffer3044, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndirect(buffer3038, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4010.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3048, 0);
    device30.queue.submit([]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    const buffer4072 = device40.createBuffer({
        label: "buffer4072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4073 = device40.createBuffer({
        label: "buffer4073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4027 = device40.createBindGroup({
        label: "bind_group4027",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4073,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4027);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3046, 0);
    render_pass_encoder3010.drawIndirect(buffer3024, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3021.drawIndirect(buffer3044, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3040, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4074 = device40.createBuffer({
        label: "buffer4074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4074, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4074, 0);
    render_pass_encoder3030.end();
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder4011.end();
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer3048, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3029, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3056, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer3048, 0);
    render_pass_encoder3030.drawIndirect(buffer3044, 0);
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3029, 0);
    device70.queue.submit([]);
    compute_pass_encoder4011.popDebugGroup()
    compute_pass_encoder3000.end();
    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3058,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3021);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3030, 0);
    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3060,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3022);
    device40.queue.submit([command_buffer400, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3061, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3061, 0);
    const buffer4075 = device40.createBuffer({
        label: "buffer4075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4076 = device40.createBuffer({
        label: "buffer4076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4028 = device40.createBindGroup({
        label: "bind_group4028",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4076,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4028);
    device70.queue.submit([]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3048, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3020.drawIndirect(buffer3048, 0);
    render_pass_encoder3021.drawIndirect(buffer3046, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device70.queue.submit([]);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3021.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3043, 0);
    device70.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3000.end();
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3062 = device30.createBuffer({
        label: "buffer3062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3062, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3062, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4077 = device40.createBuffer({
        label: "buffer4077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4077, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4077, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3063, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3063, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4078 = device40.createBuffer({
        label: "buffer4078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4078, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4078, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3021.drawIndirect(buffer3061, 0);
    const buffer3064 = device30.createBuffer({
        label: "buffer3064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3065 = device30.createBuffer({
        label: "buffer3065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3065,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3023);
    render_pass_encoder3000.drawIndexedIndirect(buffer3062, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3043, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3030.end();
    render_pass_encoder3000.drawIndirect(buffer3052, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3048, 0);
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3063, 0);
    render_pass_encoder3000.drawIndirect(buffer3043, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3021.drawIndirect(buffer3041, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3021.drawIndirect(buffer3038, 0);
    const buffer4079 = device40.createBuffer({
        label: "buffer4079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4080 = device40.createBuffer({
        label: "buffer4080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4029 = device40.createBindGroup({
        label: "bind_group4029",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4080,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4029);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3066 = device30.createBuffer({
        label: "buffer3066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3066, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3066, 0);
    render_pass_encoder3021.drawIndirect(buffer3024, 0);
    device00.queue.submit([]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3047, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    const buffer3067 = device30.createBuffer({
        label: "buffer3067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3068 = device30.createBuffer({
        label: "buffer3068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3068,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3024);
    device40.queue.submit([]);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4081 = device40.createBuffer({
        label: "buffer4081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4081, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4081, 0);
    render_pass_encoder3010.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3021.drawIndirect(buffer3016, 0);
    render_pass_encoder3020.drawIndirect(buffer3029, 0);
    compute_pass_encoder4011.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3010.drawIndirect(buffer3037, 0);
    const buffer3069 = device30.createBuffer({
        label: "buffer3069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3070 = device30.createBuffer({
        label: "buffer3070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3070,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3025);
    render_pass_encoder3021.drawIndirect(buffer3051, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3050, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3048, 0);
    const buffer4082 = device40.createBuffer({
        label: "buffer4082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4083 = device40.createBuffer({
        label: "buffer4083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4030 = device40.createBindGroup({
        label: "bind_group4030",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4083,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4030);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3030, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder3021.setIndexBuffer(buffer3031, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3048, 0);
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder3030.drawIndirect(buffer3063, 0);
    render_pass_encoder3030.drawIndirect(buffer3045, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3030.drawIndirect(buffer3035, 0);
    const buffer4084 = device40.createBuffer({
        label: "buffer4084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4085 = device40.createBuffer({
        label: "buffer4085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4031 = device40.createBindGroup({
        label: "bind_group4031",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4085,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4031);
    render_pass_encoder3021.setIndexBuffer(buffer3057, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.end();
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.end();
    compute_pass_encoder4011.end();
    render_pass_encoder3000.setIndexBuffer(buffer3038, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder3030.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.end();
    compute_pass_encoder3000.end();
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3047, 0);
    render_pass_encoder3000.drawIndirect(buffer3045, 0);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4086 = device40.createBuffer({
        label: "buffer4086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4086, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4086, 0);
    compute_pass_encoder4010.popDebugGroup()
    device70.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3030.setIndexBuffer(buffer3048, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3033, "uint16");
    compute_pass_encoder4011.end();
    compute_pass_encoder4011.end();
    const buffer3071 = device30.createBuffer({
        label: "buffer3071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3072 = device30.createBuffer({
        label: "buffer3072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3026 = device30.createBindGroup({
        label: "bind_group3026",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3072,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3026);
    render_pass_encoder3000.drawIndirect(buffer3036, 0);
    compute_pass_encoder4011.popDebugGroup()
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3073 = device30.createBuffer({
        label: "buffer3073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3073, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3073, 0);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3047, 0);
    render_pass_encoder3000.drawIndirect(buffer3046, 0);
    compute_pass_encoder4000.popDebugGroup()
    device60.queue.submit([]);
    device70.queue.submit([]);
    render_pass_encoder3010.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexedIndirect(buffer3036, 0);
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    device30.queue.submit([command_buffer303, command_buffer305, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3047, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3062, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3045, 0);
    const buffer4087 = device40.createBuffer({
        label: "buffer4087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4088 = device40.createBuffer({
        label: "buffer4088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4032 = device40.createBindGroup({
        label: "bind_group4032",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4088,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4032);
    render_pass_encoder3021.drawIndirect(buffer3043, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndexedIndirect(buffer3037, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3000.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3020.drawIndexed(3);
    const buffer3074 = device30.createBuffer({
        label: "buffer3074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3075 = device30.createBuffer({
        label: "buffer3075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3027 = device30.createBindGroup({
        label: "bind_group3027",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3075,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3027);
    render_pass_encoder3030.end();
    render_pass_encoder3020.drawIndirect(buffer3037, 0);
    render_pass_encoder3000.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer3066, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3021.drawIndirect(buffer3062, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3044, 0);
    compute_pass_encoder3050.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3021.drawIndirect(buffer3038, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3062, 0);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3036, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3044, 0);
    compute_pass_encoder4011.end();
    render_pass_encoder3030.drawIndirect(buffer3043, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3073, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder3021.drawIndirect(buffer3046, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder4010.end();
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer304, ]);
    const buffer4089 = device40.createBuffer({
        label: "buffer4089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4090 = device40.createBuffer({
        label: "buffer4090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4033 = device40.createBindGroup({
        label: "bind_group4033",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4090,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4033);
    render_pass_encoder3020.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3021.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3021.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4091 = device40.createBuffer({
        label: "buffer4091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4091, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4091, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder3050.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3020.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3066, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3030.drawIndirect(buffer305, 0);
    render_pass_encoder3020.popDebugGroup();
    const buffer3076 = device30.createBuffer({
        label: "buffer3076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3077 = device30.createBuffer({
        label: "buffer3077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3028 = device30.createBindGroup({
        label: "bind_group3028",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3077,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3028);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    const buffer3078 = device30.createBuffer({
        label: "buffer3078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3079 = device30.createBuffer({
        label: "buffer3079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3029 = device30.createBindGroup({
        label: "bind_group3029",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3079,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3029);
    render_pass_encoder3020.setIndexBuffer(buffer3026, "uint16");
    device40.queue.submit([command_buffer402, ]);
    const buffer4092 = device40.createBuffer({
        label: "buffer4092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4093 = device40.createBuffer({
        label: "buffer4093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4034 = device40.createBindGroup({
        label: "bind_group4034",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4093,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4034);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4010.end();
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3073, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4094 = device40.createBuffer({
        label: "buffer4094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4094, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4094, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer3048, 0);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4095 = device40.createBuffer({
        label: "buffer4095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4096 = device40.createBuffer({
        label: "buffer4096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4035 = device40.createBindGroup({
        label: "bind_group4035",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4096,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4035);
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    const buffer3080 = device30.createBuffer({
        label: "buffer3080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3081 = device30.createBuffer({
        label: "buffer3081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3030 = device30.createBindGroup({
        label: "bind_group3030",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3081,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3030);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer3037, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3053, 0);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3074, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3071, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3050.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4097 = device40.createBuffer({
        label: "buffer4097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4097, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4097, 0);
    const buffer3082 = device30.createBuffer({
        label: "buffer3082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3083 = device30.createBuffer({
        label: "buffer3083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3031 = device30.createBindGroup({
        label: "bind_group3031",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3083,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3031);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3027, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    const buffer3084 = device30.createBuffer({
        label: "buffer3084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3085 = device30.createBuffer({
        label: "buffer3085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3032 = device30.createBindGroup({
        label: "bind_group3032",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3085,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3032);
    compute_pass_encoder4010.end();
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer3066, 0);
    render_pass_encoder3021.drawIndirect(buffer3044, 0);
    compute_pass_encoder4011.end();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3048, 0);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3021.drawIndirect(buffer3061, 0);
    device00.queue.submit([]);
    render_pass_encoder3000.drawIndirect(buffer3023, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([]);
    render_pass_encoder3020.end();
    const buffer3086 = device30.createBuffer({
        label: "buffer3086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3087 = device30.createBuffer({
        label: "buffer3087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3033 = device30.createBindGroup({
        label: "bind_group3033",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3087,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3033);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer3017, "uint16");
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3010.drawIndirect(buffer3035, 0);
    const buffer4098 = device40.createBuffer({
        label: "buffer4098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4099 = device40.createBuffer({
        label: "buffer4099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4036 = device40.createBindGroup({
        label: "bind_group4036",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4099,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4036);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.end();
    device40.queue.submit([command_buffer402, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40100 = device40.createBuffer({
        label: "buffer40100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40100, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40100, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3043, 0);
    device40.queue.submit([]);
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder3050.end();
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer305, ]);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer40101 = device40.createBuffer({
        label: "buffer40101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40101, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer40101, 0);
    const buffer3088 = device30.createBuffer({
        label: "buffer3088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3089 = device30.createBuffer({
        label: "buffer3089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3034 = device30.createBindGroup({
        label: "bind_group3034",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3089,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3034);
    compute_pass_encoder4011.end();
    render_pass_encoder3020.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3056, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3059, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer3043, 0);
    device60.queue.submit([]);
    compute_pass_encoder3050.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3086, 0);
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3030.drawIndirect(buffer3047, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer3045, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3086, "uint16");
    render_pass_encoder3000.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder4000.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.end();
    compute_pass_encoder3050.end();
    render_pass_encoder3020.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder4011.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3076, 0);
    render_pass_encoder3010.drawIndirect(buffer3044, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer3038, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3088, 0);
    render_pass_encoder3010.drawIndirect(buffer3088, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndirect(buffer3062, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3073, 0);
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder4010.end();
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer3064, 0);
    device60.queue.submit([command_buffer600, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40102 = device40.createBuffer({
        label: "buffer40102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40102, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40102, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer40103 = device40.createBuffer({
        label: "buffer40103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40104 = device40.createBuffer({
        label: "buffer40104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4037 = device40.createBindGroup({
        label: "bind_group4037",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40104,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4037);
    const buffer40105 = device40.createBuffer({
        label: "buffer40105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40106 = device40.createBuffer({
        label: "buffer40106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4038 = device40.createBindGroup({
        label: "bind_group4038",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40106,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4038);
    device60.queue.submit([]);
    render_pass_encoder3021.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3066, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3010.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder3000.drawIndirect(buffer3045, 0);
    device30.queue.submit([command_buffer304, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3020.drawIndirect(buffer3060, 0);
    render_pass_encoder3010.end();
    device30.queue.submit([command_buffer301, command_buffer302, command_buffer304, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3044, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3047, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40107 = device40.createBuffer({
        label: "buffer40107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40107, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40107, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3077, 0);
    render_pass_encoder3010.drawIndirect(buffer3044, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    render_pass_encoder3030.drawIndirect(buffer3084, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3066, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3021.drawIndirect(buffer3051, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40108 = device40.createBuffer({
        label: "buffer40108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40108, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40108, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder3010.drawIndirect(buffer3022, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3010.draw(3);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3021.setIndexBuffer(buffer3024, "uint16");
    const buffer3090 = device30.createBuffer({
        label: "buffer3090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3091 = device30.createBuffer({
        label: "buffer3091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3035 = device30.createBindGroup({
        label: "bind_group3035",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3091,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3035);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3050.end();
    render_pass_encoder3010.drawIndirect(buffer3044, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3062, 0);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4011.end();
    device60.queue.submit([]);
    device60.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3045, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3092 = device30.createBuffer({
        label: "buffer3092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3092, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3092, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.end();
    compute_pass_encoder3000.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndirect(buffer3074, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4000.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3016, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3093 = device30.createBuffer({
        label: "buffer3093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3093, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3093, 0);
    compute_pass_encoder4011.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3094 = device30.createBuffer({
        label: "buffer3094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3094, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3094, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3010.drawIndirect(buffer3066, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder3050.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3081, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3045, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3061, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3056, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40109 = device40.createBuffer({
        label: "buffer40109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40109, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40109, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3030.drawIndirect(buffer3047, 0);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    const buffer3095 = device30.createBuffer({
        label: "buffer3095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3096 = device30.createBuffer({
        label: "buffer3096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3036 = device30.createBindGroup({
        label: "bind_group3036",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3096,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3036);
    render_pass_encoder3020.drawIndirect(buffer3094, 0);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer40110 = device40.createBuffer({
        label: "buffer40110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40110, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer40110, 0);
    render_pass_encoder3021.end();
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer40111 = device40.createBuffer({
        label: "buffer40111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40111, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer40111, 0);
    render_pass_encoder3021.end();
    const buffer3097 = device30.createBuffer({
        label: "buffer3097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3098 = device30.createBuffer({
        label: "buffer3098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3037 = device30.createBindGroup({
        label: "bind_group3037",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3098,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3037);
    render_pass_encoder3021.drawIndexedIndirect(buffer3096, 0);
    render_pass_encoder3010.drawIndirect(buffer3043, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const buffer3099 = device30.createBuffer({
        label: "buffer3099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30100 = device30.createBuffer({
        label: "buffer30100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3038 = device30.createBindGroup({
        label: "bind_group3038",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30100,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3038);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3034, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexedIndirect(buffer3093, 0);
    compute_pass_encoder4011.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3093, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3061, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer3026, 0);
    render_pass_encoder3000.drawIndirect(buffer3094, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3056, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3066, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3046, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3029, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3092, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3045, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.drawIndirect(buffer3074, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3030.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.drawIndirect(buffer3036, 0);
    render_pass_encoder3010.drawIndirect(buffer3045, 0);
    render_pass_encoder3000.drawIndirect(buffer3092, 0);
    render_pass_encoder3010.drawIndirect(buffer3024, 0);
    compute_pass_encoder4011.end();
    render_pass_encoder3021.end();
    compute_pass_encoder4011.dispatchWorkgroups(100);
    compute_pass_encoder4011.end();
    const buffer40112 = device40.createBuffer({
        label: "buffer40112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40113 = device40.createBuffer({
        label: "buffer40113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4039 = device40.createBindGroup({
        label: "bind_group4039",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40113,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4039);
    render_pass_encoder3021.drawIndexedIndirect(buffer3062, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3090, 0);
    render_pass_encoder3000.drawIndirect(buffer3094, 0);
    device60.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3071, "uint16");
    const buffer40114 = device40.createBuffer({
        label: "buffer40114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40115 = device40.createBuffer({
        label: "buffer40115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4040 = device40.createBindGroup({
        label: "bind_group4040",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40115,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4040);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3021.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30101 = device30.createBuffer({
        label: "buffer30101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30101, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30101, 0);
    render_pass_encoder3021.drawIndirect(buffer3061, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer30101, 0);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3050.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3081, 0);
    render_pass_encoder3030.drawIndirect(buffer3066, 0);
    device40.queue.submit([]);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer40116 = device40.createBuffer({
        label: "buffer40116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40116, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer40116, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3043, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3039, "uint16");
    render_pass_encoder3020.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder4011.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device70.queue.submit([]);
    render_pass_encoder3021.drawIndirect(buffer3093, 0);
    render_pass_encoder3021.drawIndirect(buffer3047, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3092, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3021.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3062, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3063, 0);
    compute_pass_encoder4011.end();
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer40117 = device40.createBuffer({
        label: "buffer40117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40117, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer40117, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3050, 0);
    const buffer40118 = device40.createBuffer({
        label: "buffer40118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40119 = device40.createBuffer({
        label: "buffer40119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4041 = device40.createBindGroup({
        label: "bind_group4041",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40119,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4041);
    render_pass_encoder3021.drawIndexedIndirect(buffer30101, 0);
    device40.queue.submit([command_buffer402, ]);
    const buffer30102 = device30.createBuffer({
        label: "buffer30102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30103 = device30.createBuffer({
        label: "buffer30103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3039 = device30.createBindGroup({
        label: "bind_group3039",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30103,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3039);
    const buffer40120 = device40.createBuffer({
        label: "buffer40120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40121 = device40.createBuffer({
        label: "buffer40121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4042 = device40.createBindGroup({
        label: "bind_group4042",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40121,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4042);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40122 = device40.createBuffer({
        label: "buffer40122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40122, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40122, 0);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3064, 0);
    render_pass_encoder3021.drawIndirect(buffer3061, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3043, 0);
    compute_pass_encoder3000.end();
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer400, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40123 = device40.createBuffer({
        label: "buffer40123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40123, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40123, 0);
    const buffer40124 = device40.createBuffer({
        label: "buffer40124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40125 = device40.createBuffer({
        label: "buffer40125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4043 = device40.createBindGroup({
        label: "bind_group4043",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40125,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4043);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3030.end();
    render_pass_encoder3010.end();
    render_pass_encoder3010.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3038, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3036, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3030.drawIndirect(buffer3063, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3080, "uint16");
    compute_pass_encoder4011.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3044, 0);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder3050.dispatchWorkgroups(100);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer30104 = device30.createBuffer({
        label: "buffer30104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30104, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer30104, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder4011.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40126 = device40.createBuffer({
        label: "buffer40126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40126, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40126, 0);
    const buffer40127 = device40.createBuffer({
        label: "buffer40127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40128 = device40.createBuffer({
        label: "buffer40128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4044 = device40.createBindGroup({
        label: "bind_group4044",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40128,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4044);
    render_pass_encoder3030.drawIndirect(buffer3029, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3043, 0);
    render_pass_encoder3000.drawIndirect(buffer3066, 0);
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer304, ]);
    const buffer40129 = device40.createBuffer({
        label: "buffer40129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40130 = device40.createBuffer({
        label: "buffer40130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4045 = device40.createBindGroup({
        label: "bind_group4045",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40130,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4045);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3010.drawIndirect(buffer3066, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3044, 0);
    device70.queue.submit([]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3037, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3030.drawIndirect(buffer30103, 0);
    render_pass_encoder3030.drawIndirect(buffer3044, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer30105 = device30.createBuffer({
        label: "buffer30105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30105, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer30105, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer309, 0);
    device30.queue.submit([command_buffer304, ]);
    const buffer40131 = device40.createBuffer({
        label: "buffer40131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40132 = device40.createBuffer({
        label: "buffer40132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4046 = device40.createBindGroup({
        label: "bind_group4046",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40132,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4046);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer3093, "uint16");
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3073, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder4011.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3000.setIndexBuffer(buffer3077, "uint16");
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder3000.end();
    compute_pass_encoder4010.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    render_pass_encoder3020.drawIndirect(buffer3079, 0);
    device40.queue.submit([command_buffer401, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30106 = device30.createBuffer({
        label: "buffer30106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30106, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30106, 0);
    render_pass_encoder3030.drawIndirect(buffer30104, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40133 = device40.createBuffer({
        label: "buffer40133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40133, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40133, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3092, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3010.draw(3);
    const buffer30107 = device30.createBuffer({
        label: "buffer30107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30108 = device30.createBuffer({
        label: "buffer30108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3040 = device30.createBindGroup({
        label: "bind_group3040",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30108,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3040);
    render_pass_encoder3021.drawIndexedIndirect(buffer3081, 0);
    render_pass_encoder3021.drawIndirect(buffer3052, 0);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3048, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3035, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    compute_pass_encoder3050.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer30107, 0);
    render_pass_encoder3000.drawIndirect(buffer30105, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3092, 0);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer305, ]);
    device60.queue.submit([]);
    const buffer40134 = device40.createBuffer({
        label: "buffer40134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40135 = device40.createBuffer({
        label: "buffer40135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4047 = device40.createBindGroup({
        label: "bind_group4047",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40135,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4047);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3094, "uint16");
    compute_pass_encoder3050.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3021.end();
    render_pass_encoder3030.drawIndirect(buffer3047, 0);
    device00.queue.submit([]);
    render_pass_encoder3010.end();
    render_pass_encoder3030.drawIndirect(buffer3061, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40136 = device40.createBuffer({
        label: "buffer40136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40136, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40136, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3046, 0);
    const buffer40137 = device40.createBuffer({
        label: "buffer40137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40138 = device40.createBuffer({
        label: "buffer40138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4048 = device40.createBindGroup({
        label: "bind_group4048",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40138,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4048);
    render_pass_encoder3021.drawIndirect(buffer3062, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer30109 = device30.createBuffer({
        label: "buffer30109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30109, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer30109, 0);
    device20.queue.submit([]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30110 = device30.createBuffer({
        label: "buffer30110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30110, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30110, 0);
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    const buffer30111 = device30.createBuffer({
        label: "buffer30111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30112 = device30.createBuffer({
        label: "buffer30112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3041 = device30.createBindGroup({
        label: "bind_group3041",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30112,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3041);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3021.drawIndirect(buffer30105, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3058, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3061, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3022, "uint16");
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3046, 0);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4010.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
}