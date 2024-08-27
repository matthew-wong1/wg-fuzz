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
    
    const array0 = new Float32Array([1.0, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 0.0, -0.75, -0.75, 1.0, 0.5, 0.0, 0.75, -1.0, 0.75, -0.75, -0.5, -0.25, 1.0, -0.75, -1.0, -0.75, -0.25, -0.25, 0.5, 1.0, -1.0, 0.75, 0.5, 0.5, -0.75, 1.0, -0.75, -1.0, -0.25, 1.0, 0.75, 1.0, -0.25, 0.5, -0.25, 0.0, -0.75, 0.5, 0.0, 0.25, 0.0, 0.5, 0.25, 0.5, 0.25, 0.5, -1.0, -0.5, -0.75, 0.75, 0.5, -1.0, 1.0, -0.75, -0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 1.0, 0.25, 1.0, 0.75, 0.25, 0.0, -0.75, 0.75, -0.75, -0.25, 1.0, -0.75, 0.0, 0.0, -0.5, -1.0, -1.0, -0.75, -0.75, 0.75, -0.75, 0.0, 0.0, 1.0, -0.25, -0.5, -0.5, 0.75, -0.25, -0.75, -1.0, -0.75, 0.5, ]);
    const array1 = new Float32Array([-0.75, -1.0, 0.0, 0.0, 0.0, 1.0, -0.25, 0.5, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, 0.75, 1.0, 0.5, 0.5, 0.0, 0.25, -1.0, 0.25, 0.5, 0.75, 0.25, -1.0, 1.0, -0.5, 0.5, -0.25, -0.5, -0.75, -0.75, 0.25, 0.5, -0.5, 0.5, -0.75, -0.25, 0.0, 0.0, -0.75, 1.0, -1.0, 0.25, -0.25, 1.0, 0.75, 1.0, -0.75, 0.0, -0.75, -1.0, -0.25, -0.75, 0.0, 0.25, -0.25, 0.5, 0.75, 0.75, -0.75, -1.0, 0.75, 0.5, 0.75, -0.75, 0.0, 1.0, -1.0, -0.25, -0.75, 0.25, 0.5, -0.75, -1.0, -0.5, -1.0, -0.25, 0.0, 0.0, -1.0, -0.25, -0.75, 0.0, -0.25, 0.25, -0.25, -0.75, 0.0, -0.5, -0.75, 1.0, 0.5, 0.5, -0.25, 0.75, -1.0, 1.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array2 = new Float32Array([-0.75, -1.0, -1.0, 0.25, -0.25, 0.5, 0.5, -1.0, 0.25, -0.5, 0.0, -1.0, 0.0, -1.0, 0.25, -1.0, 0.5, -0.25, 0.75, 0.75, 0.25, 0.75, 0.0, -0.75, 0.75, 0.5, -1.0, 1.0, 1.0, -0.75, 0.0, 0.0, -0.75, -0.75, -0.75, -0.75, 1.0, -0.5, -0.25, -1.0, 0.25, 0.75, -0.25, 0.25, 0.25, -0.5, 1.0, 0.0, 1.0, 0.75, 0.5, -0.75, 0.25, 0.75, 0.25, -0.5, -0.5, -0.75, -0.75, 0.75, 0.5, -0.25, 0.0, 0.75, 1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 1.0, 0.25, -1.0, 0.25, 0.25, 0.0, 0.5, 1.0, -1.0, -1.0, -1.0, 0.25, 0.0, 1.0, -0.25, 0.75, 0.75, -0.75, 0.0, -1.0, -0.5, 0.5, 0.25, -0.5, -0.25, -0.5, 0.5, 0.75, -0.25, -1.0, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer101.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    texture100.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
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
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    texture000.destroy();
    const command_buffer000 = command_encoder000.finish();
    query001.destroy()
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    
    device00.queue.submit([command_buffer000, ]);
    
    device00.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.insertDebugMarker("mymarker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const command_buffer003 = command_encoder003.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-0.25, 0.75, -0.5, 0.25, 0.0, 1.0, 0.25, -0.25, 0.5, 1.0, 0.25, 0.75, 0.75, -0.25, -0.25, 0.0, -0.75, -1.0, 0.0, 0.0, 1.0, -0.25, 0.0, 0.25, 0.5, 0.75, -0.75, -0.75, 0.75, -0.75, 1.0, 0.25, 0.0, 0.5, -0.25, -0.75, 1.0, 0.75, 0.0, -0.75, -0.25, 0.0, 0.0, -0.5, -0.75, 0.25, -0.5, -1.0, -0.25, -1.0, -1.0, 1.0, 0.25, 0.25, -0.25, 0.25, -1.0, 0.0, 1.0, 0.5, -0.75, 0.75, 0.5, 0.0, 1.0, 1.0, 0.0, 1.0, 0.5, 0.0, 0.75, 0.75, 0.25, 1.0, -0.75, -0.75, 0.0, -0.75, -0.5, 0.25, 1.0, -0.5, 0.25, 0.0, -0.5, -0.75, 1.0, 0.5, -0.5, 0.25, -1.0, 1.0, 0.75, -0.75, -0.75, -0.75, -1.0, 0.25, 1.0, -0.25, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0050.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder002.insertDebugMarker("mymarker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.destroy();
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query004.destroy()
    
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    
    
    
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
    compute_pass_encoder0040.popDebugGroup()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([0.5, -0.5, 0.75, -1.0, 0.75, 1.0, 0.75, -0.75, -0.5, -0.75, -0.5, -0.75, -0.5, 0.0, -0.75, -0.75, 0.5, -1.0, 1.0, 0.5, -1.0, 1.0, 0.0, 0.0, 0.75, 0.0, -0.5, 0.75, -0.25, -1.0, 1.0, 0.5, -0.75, 1.0, 1.0, -0.25, 0.25, -0.75, -1.0, -0.25, -0.75, -0.75, 0.0, -1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 0.75, -0.75, -0.25, 0.5, -0.25, -0.75, 1.0, 0.75, 0.0, 0.25, 0.0, -0.5, 0.75, 0.5, 0.5, -1.0, -0.5, -0.25, 0.75, -1.0, -0.5, -0.75, 0.5, -0.25, -0.75, -0.75, 1.0, 0.25, 0.25, -0.75, 0.25, -0.5, -0.25, 0.25, -0.25, -0.5, 0.25, -1.0, 0.5, 0.5, -0.5, 0.75, 1.0, 0.0, 0.25, -0.25, 0.25, 0.5, -1.0, 0.25, -0.25, ]);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    query003.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    query000.destroy()
    device00.queue.submit([command_buffer003, ]);
    query003.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array5 = new Float32Array([0.25, -0.5, 0.75, 0.75, 0.75, -0.5, -0.5, 0.25, -1.0, 1.0, 0.25, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, -0.75, -0.25, 0.25, -0.5, 0.0, 0.5, -1.0, 0.25, -0.5, 1.0, -0.5, 0.5, -1.0, 1.0, 0.0, 0.25, 0.25, 0.0, -1.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.25, 0.75, -0.25, 0.25, -0.75, -1.0, -1.0, 0.25, 0.75, 0.75, -0.25, -0.25, 0.5, 0.5, 0.75, -0.75, -0.25, 0.75, -0.5, -0.5, 0.25, 0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 0.25, 0.0, 0.75, 0.5, 1.0, 0.25, -0.5, -0.75, 1.0, 1.0, -0.75, 0.5, -1.0, 0.75, 0.25, -1.0, -1.0, 0.25, -0.25, 1.0, -0.75, 1.0, -0.75, 0.5, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, 1.0, 0.25, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    query005.destroy()
    query001.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query004.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query005.destroy()
    compute_pass_encoder0040.popDebugGroup()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    query003.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer001.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.pushErrorScope("validation");
    const command_buffer006 = command_encoder006.finish();
    texture001.destroy();
    buffer003.destroy()
    const command_buffer300 = command_encoder300.finish();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    device70.destroy();
    
    
    query002.destroy()
    
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    
    compute_pass_encoder0040.insertDebugMarker("marker")
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    query004.destroy()
    
    texture300.destroy();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    
    query005.destroy()
    texture003.destroy();
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
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
    texture600.destroy();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.destroy();
    
    buffer002.destroy()
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    query005.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    command_encoder302.insertDebugMarker("mymarker");
    const command_buffer301 = command_encoder301.finish();
    
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    buffer005.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query008.destroy()
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder008.clearBuffer(buffer004);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    query001.destroy()
    query008.destroy()
    device30.queue.submit([command_buffer301, ]);
    query003.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array6 = new Float32Array([-0.75, 0.25, -0.5, -0.25, -1.0, -0.75, -0.5, 0.75, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 0.0, -0.5, 0.75, 0.75, 1.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.5, 0.75, -0.25, 0.25, -0.75, -0.75, 0.25, 0.5, -0.25, 0.5, 1.0, -0.25, 1.0, -0.25, -0.75, 0.25, -0.5, 0.75, -1.0, -1.0, 1.0, 0.25, -0.25, 0.5, -1.0, 0.75, 0.75, -0.5, 0.75, 0.5, 0.5, -0.75, -0.25, 0.75, 0.75, -0.5, 0.5, -0.25, -0.5, 0.5, -0.25, 0.0, -0.75, -0.5, 0.5, -0.5, 0.75, -0.25, -0.75, -0.5, -1.0, -0.25, -0.25, -0.75, -1.0, 1.0, -0.75, 0.5, 1.0, 0.5, 0.25, 1.0, -1.0, 0.75, -0.25, 1.0, -0.75, -1.0, -1.0, 1.0, -0.75, 0.5, -0.5, 0.25, 0.0, -0.5, ]);
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    command_encoder008.insertDebugMarker("mymarker");
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
    device50.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const command_buffer009 = command_encoder009.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder00100 = command_encoder0010.beginComputePass({ label: "compute_pass_encoder00100" });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    texture500.destroy();
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    compute_pass_encoder0040.popDebugGroup()
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0070.insertDebugMarker("marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    
    query003.destroy()
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    device80.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    compute_pass_encoder00100.insertDebugMarker("marker")
    query000.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    query006.destroy()
    
    compute_pass_encoder00100.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    buffer300.destroy()
    command_encoder008.clearBuffer(buffer004);
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    query003.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder0070.popDebugGroup()
    device30.pushErrorScope("internal");
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query007.destroy()
    query501.destroy()
    compute_pass_encoder0050.popDebugGroup()
    query003.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    texture301.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer008 = command_encoder008.finish();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query003.destroy()
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    query001.destroy()
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const command_buffer303 = command_encoder303.finish();
    texture004.destroy();
    buffer501.destroy()
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer004.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query007.destroy()
    query002.destroy()
    render_pass_encoder3020.setStencilReference(1);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    query300.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    buffer303.destroy()
    
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    query004.destroy()
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    buffer500.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query500.destroy()
    
    
    query008.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    compute_pass_encoder0070.insertDebugMarker("marker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer304.destroy()
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    texture502.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    device30.queue.submit([command_buffer303, ]);
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    
    render_pass_encoder3020.setStencilReference(1);
    
    query0010.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query300.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.setStencilReference(1);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_buffer501 = command_encoder501.finish();
    query009.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    texture900.destroy();
    query002.destroy()
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    query501.destroy()
    compute_pass_encoder00100.insertDebugMarker("marker")
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    device90.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    buffer302.destroy()
    
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder00100.popDebugGroup()
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    query0011.destroy()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device130.pushErrorScope("internal");
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    query500.destroy()
    const command_buffer1200 = command_encoder1200.finish();
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer009, ]);
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.queue.submit([command_buffer1200, ]);
    device50.queue.submit([command_buffer501, ]);
}