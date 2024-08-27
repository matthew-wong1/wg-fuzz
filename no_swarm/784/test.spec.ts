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
    
    const array0 = new Float32Array([-0.5, -0.5, -0.5, -0.25, 0.25, -1.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.75, -0.25, 0.25, 0.25, -0.5, 0.0, 0.5, -1.0, 0.5, 0.0, 0.5, -0.5, -0.75, 0.75, 0.75, -0.75, 0.25, -0.5, 0.75, -0.25, 0.0, 0.25, -1.0, 1.0, 0.75, 0.25, 1.0, 0.5, -1.0, -0.5, -0.25, 1.0, 0.5, 1.0, 0.25, -0.75, 0.75, -0.5, -0.5, 0.0, 0.75, -0.75, -0.5, 0.75, -0.75, 0.75, -1.0, -0.75, -0.75, 0.75, 0.0, -1.0, -0.25, -0.5, -0.5, 0.75, -0.5, -0.25, 0.75, 0.75, 0.25, 0.5, -0.25, -0.75, -0.75, 0.25, -1.0, 1.0, -0.5, 0.0, 0.5, -0.75, 0.75, -0.75, -1.0, -0.25, 0.25, 0.5, -0.5, -0.5, 0.75, 0.25, -0.75, -1.0, 0.5, -0.5, -1.0, 0.25, 0.5, ]);
    const array1 = new Float32Array([0.25, 0.25, -0.75, 0.0, 0.25, -0.25, 0.0, -0.75, -0.5, 1.0, -0.25, 0.5, 0.75, -0.5, 0.75, 0.0, -1.0, -0.75, 0.25, 0.75, -0.75, 1.0, 0.0, -1.0, -0.5, 0.5, 0.75, 0.5, 0.0, 1.0, 0.25, 0.25, -1.0, -0.5, 0.0, 0.75, -0.25, 0.0, 0.25, 0.5, -0.75, -0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, 0.25, -0.5, -1.0, 0.5, -0.5, -0.25, 0.0, 0.5, 0.0, 1.0, 1.0, 0.0, -1.0, 0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 0.75, 0.5, 1.0, 1.0, 0.5, 0.25, 0.75, 0.25, 0.0, 0.5, -0.75, 1.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, -0.75, -0.75, -0.25, 0.25, 0.0, 0.75, -0.5, 1.0, -0.25, -1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const array2 = new Float32Array([0.25, 0.25, 0.25, 0.75, -0.75, 0.0, 0.25, -0.5, -0.25, 1.0, 0.25, 0.25, -0.5, -0.5, 0.25, 0.0, 0.75, -0.75, -0.5, 0.75, 0.25, 0.75, 0.0, 0.0, 0.25, 1.0, 0.0, 0.25, 0.5, -0.25, 1.0, -0.5, 0.75, 1.0, -0.5, 0.0, -1.0, -0.5, -0.75, 0.5, 0.0, -0.75, 0.75, 0.5, -0.25, 1.0, 0.5, 0.5, -0.25, 0.5, 0.25, -1.0, 1.0, 0.75, 0.25, 0.5, 0.0, 0.5, 0.25, 1.0, -0.25, 1.0, 1.0, -0.75, -1.0, -0.25, 0.5, 0.25, -0.5, -1.0, 0.5, 0.25, -0.25, -0.25, 0.25, -1.0, 0.75, 0.75, -1.0, 1.0, -0.25, -0.25, 0.75, 0.75, -0.5, -0.75, -0.75, 0.75, 0.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.0, 0.25, 0.5, -0.75, -0.75, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer300.destroy()
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
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.submit([command_buffer300, ]);
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device40.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query500.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device00.destroy();
    const array3 = new Float32Array([0.5, 1.0, -0.5, -0.5, -0.5, 0.75, -0.5, 0.75, 0.25, -0.75, 1.0, 0.5, -1.0, -0.25, 1.0, -0.25, -0.75, -0.5, 1.0, -0.5, 0.25, 0.5, -0.25, 0.75, 0.25, 0.25, 0.25, 0.0, -0.25, -0.25, 1.0, 1.0, 0.5, 1.0, 0.75, -1.0, 0.25, 0.5, 0.25, -0.5, -0.25, 0.75, -0.5, -0.5, -0.5, -0.25, 1.0, 1.0, -1.0, 0.75, -0.25, -0.25, -0.75, -0.5, 0.5, 0.25, 0.25, -0.25, 0.25, 1.0, -0.75, 0.5, -0.5, 1.0, -0.5, -0.75, 0.25, -1.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.25, 0.5, -0.25, -0.75, 0.0, 0.25, -1.0, 0.75, -0.25, 0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 1.0, 0.25, 0.5, 0.25, 0.0, -0.75, 0.25, -0.25, -0.5, 0.75, 1.0, 0.5, ]);
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    buffer500.destroy()
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.pushErrorScope("validation");
    
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array4 = new Float32Array([0.25, -0.75, 1.0, 0.25, -0.25, -0.5, -0.25, 1.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.5, -0.25, -0.75, 1.0, 1.0, 0.0, 0.75, -1.0, 0.25, -0.75, 0.0, -0.25, 1.0, -0.75, -1.0, 0.5, 0.25, 0.0, 0.25, -0.5, 0.75, 0.75, 0.5, -0.75, 0.5, 0.25, 1.0, 0.75, 0.75, 0.5, -0.5, 0.5, 0.0, 0.75, 0.75, 0.0, -1.0, 0.5, 0.5, -0.25, -1.0, 0.5, -0.25, 0.75, 0.0, 0.75, 0.25, 0.75, 0.5, -0.75, -0.75, -1.0, -0.5, -0.5, -0.75, -0.5, -1.0, 0.25, 0.75, 0.0, 0.0, -0.5, 0.75, 0.0, -0.75, -0.75, 0.75, 0.5, 0.25, 1.0, 1.0, -1.0, 0.75, 1.0, 0.25, 0.5, -0.25, 0.0, 0.5, 1.0, 0.0, -0.25, 1.0, -1.0, 0.75, 0.25, -0.25, ]);
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    
    
    query500.destroy()
    
    texture801.destroy();
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device70.destroy();
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    texture802.destroy();
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("out-of-memory");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const command_buffer800 = command_encoder800.finish();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer801.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    query500.destroy()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query801.destroy()
    buffer501.destroy()
    
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const array5 = new Float32Array([0.0, -1.0, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, -0.5, -0.25, -0.75, 0.25, 0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 1.0, 0.0, -0.75, -0.75, 0.25, 0.75, 0.75, -0.25, -1.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 0.5, -1.0, -0.75, 0.5, -0.25, 0.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.75, 0.25, -0.5, 0.0, -0.75, 0.5, -0.75, -1.0, -0.75, -0.75, 0.5, -0.5, 0.0, -0.5, 0.5, 0.25, 0.25, -0.75, -0.25, -1.0, 0.25, 1.0, -0.5, -0.75, 0.0, 0.25, -0.75, 0.5, -1.0, 0.75, 1.0, 0.75, 0.0, 0.0, 0.5, 0.25, -1.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.0, -0.5, 0.5, 0.25, 0.0, 1.0, 0.75, 0.25, 1.0, 0.75, -0.5, 0.5, 0.25, ]);
    
    device90.destroy();
    
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    query801.destroy()
    
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout802,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline805 = device80.createComputePipeline({
        label: "compute_pipeline805",
        layout: pipeline_layout802,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const texture_view8031 = texture803.createView({ label: "texture_view8031" });
    render_bundle_encoder800.insertDebugMarker("marker");
    query801.destroy()
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const compute_pipeline806 = device80.createComputePipeline({
        label: "compute_pipeline806",
        layout: pipeline_layout803,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const compute_pipeline807 = device80.createComputePipeline({
        label: "compute_pipeline807",
        layout: pipeline_layout802,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline808 = device80.createComputePipeline({
        label: "compute_pipeline808",
        layout: pipeline_layout803,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([1.0, 0.25, 0.0, 0.25, 0.75, 0.75, 1.0, 0.0, -0.5, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, 0.75, -0.75, 1.0, 0.0, 0.5, -0.25, 0.5, -0.75, 0.75, 1.0, 1.0, 1.0, 0.5, 0.75, 0.0, 0.25, 0.0, 0.0, -0.25, 0.5, 0.25, -0.5, -1.0, -0.25, -0.5, 0.25, 0.75, -0.75, 0.0, 0.25, 1.0, -0.75, -1.0, 1.0, 0.5, -1.0, -0.5, 0.75, -0.25, 0.75, 0.5, 0.75, 0.0, -1.0, -0.75, 0.0, -0.75, -0.75, -0.25, 1.0, -1.0, -1.0, -0.75, -0.5, 0.5, 1.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.5, 0.25, -0.5, -0.75, -1.0, 1.0, 1.0, 0.5, -1.0, -0.5, 0.5, -1.0, -0.25, 1.0, -0.75, 0.0, -0.75, 0.75, 0.5, -0.75, 0.0, -1.0, 0.75, 0.75, ]);
    const compute_pipeline809 = device80.createComputePipeline({
        label: "compute_pipeline809",
        layout: pipeline_layout802,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout802]
    });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    render_bundle_encoder800.popDebugGroup();
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    query800.destroy()
    
    const compute_pipeline8010 = device80.createComputePipeline({
        label: "compute_pipeline8010",
        layout: pipeline_layout801,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    query501.destroy()
    query501.destroy()
    const compute_pipeline8011 = device80.createComputePipeline({
        label: "compute_pipeline8011",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    
    
    
    
    
    
    const compute_pipeline8012 = device80.createComputePipeline({
        label: "compute_pipeline8012",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const compute_pipeline8013 = device80.createComputePipeline({
        label: "compute_pipeline8013",
        layout: pipeline_layout801,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8014 = device80.createComputePipeline({
        label: "compute_pipeline8014",
        layout: pipeline_layout803,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    texture500.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout801]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
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
    const pipeline_layout806 = device80.createPipelineLayout({ 
        label: "pipeline_layout806",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    device60.destroy();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline8015 = device80.createComputePipeline({
        label: "compute_pipeline8015",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8016 = device80.createComputePipeline({
        label: "compute_pipeline8016",
        layout: pipeline_layout804,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8017 = device80.createComputePipeline({
        label: "compute_pipeline8017",
        layout: pipeline_layout806,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    device110.pushErrorScope("out-of-memory");
    
    
    const compute_pipeline8018 = device80.createComputePipeline({
        label: "compute_pipeline8018",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8019 = device80.createComputePipeline({
        label: "compute_pipeline8019",
        layout: pipeline_layout801,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const texture_view8032 = texture803.createView({ label: "texture_view8032" });
    
    const pipeline_layout807 = device80.createPipelineLayout({ 
        label: "pipeline_layout807",
        bindGroupLayouts: [bind_group_layout802]
    });
    
    const array7 = new Float32Array([-0.5, -0.75, 0.5, 0.5, -0.75, 0.25, -1.0, -1.0, -1.0, 0.0, 0.5, -1.0, 0.75, -0.25, -0.5, -0.75, 0.5, 0.5, -0.75, 0.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.0, -0.75, 0.0, -0.5, 0.5, 0.25, 0.5, 0.25, 0.0, -0.25, 1.0, -0.25, 1.0, 0.0, 0.5, 0.5, 0.5, -1.0, -0.25, -0.25, -0.25, -1.0, 1.0, -0.75, 1.0, 1.0, 0.75, 1.0, 0.0, -0.75, -0.25, 0.75, -1.0, 0.25, 1.0, -1.0, -1.0, 0.5, -0.75, 0.0, 1.0, 0.5, -0.25, -0.75, -0.75, -0.25, -1.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.25, 0.75, 0.5, -1.0, -0.25, 0.0, -1.0, -1.0, -0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 1.0, 1.0, -0.5, -0.75, 0.0, -0.75, -0.5, -1.0, -0.5, ]);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const compute_pipeline8020 = device80.createComputePipeline({
        label: "compute_pipeline8020",
        layout: pipeline_layout803,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8021 = device80.createComputePipeline({
        label: "compute_pipeline8021",
        layout: pipeline_layout804,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8022 = device80.createComputePipeline({
        label: "compute_pipeline8022",
        layout: pipeline_layout806,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout808 = device80.createPipelineLayout({ 
        label: "pipeline_layout808",
        bindGroupLayouts: [bind_group_layout802]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline8023 = device80.createComputePipeline({
        label: "compute_pipeline8023",
        layout: pipeline_layout805,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8024 = device80.createComputePipeline({
        label: "compute_pipeline8024",
        layout: pipeline_layout808,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    query802.destroy()
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    render_bundle_encoder800.popDebugGroup();
    const compute_pipeline8025 = device80.createComputePipeline({
        label: "compute_pipeline8025",
        layout: pipeline_layout803,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    
    query503.destroy()
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const compute_pipeline8026 = device80.createComputePipeline({
        label: "compute_pipeline8026",
        layout: pipeline_layout808,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query800.destroy()
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline8027 = device80.createComputePipeline({
        label: "compute_pipeline8027",
        layout: pipeline_layout805,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8028 = device80.createComputePipeline({
        label: "compute_pipeline8028",
        layout: pipeline_layout803,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    query802.destroy()
    const compute_pipeline8029 = device80.createComputePipeline({
        label: "compute_pipeline8029",
        layout: pipeline_layout805,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    texture803.destroy();
    const compute_pipeline8030 = device80.createComputePipeline({
        label: "compute_pipeline8030",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    query501.destroy()
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const compute_pipeline8031 = device80.createComputePipeline({
        label: "compute_pipeline8031",
        layout: pipeline_layout800,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pipeline8032 = device80.createComputePipeline({
        label: "compute_pipeline8032",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline8033 = device80.createComputePipeline({
        label: "compute_pipeline8033",
        layout: pipeline_layout806,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    const compute_pipeline8034 = device80.createComputePipeline({
        label: "compute_pipeline8034",
        layout: pipeline_layout807,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    buffer1000.destroy()
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const compute_pipeline8035 = device80.createComputePipeline({
        label: "compute_pipeline8035",
        layout: pipeline_layout803,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline8036 = device80.createComputePipeline({
        label: "compute_pipeline8036",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    buffer1100.destroy()
    const compute_pipeline8037 = device80.createComputePipeline({
        label: "compute_pipeline8037",
        layout: pipeline_layout803,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline8038 = device80.createComputePipeline({
        label: "compute_pipeline8038",
        layout: pipeline_layout808,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    buffer502.destroy()
    device100.destroy();
    const compute_pipeline8039 = device80.createComputePipeline({
        label: "compute_pipeline8039",
        layout: pipeline_layout807,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.pushErrorScope("internal");
    const pipeline_layout809 = device80.createPipelineLayout({ 
        label: "pipeline_layout809",
        bindGroupLayouts: [bind_group_layout801]
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    device130.pushErrorScope("out-of-memory");
    
    
    const compute_pipeline8040 = device80.createComputePipeline({
        label: "compute_pipeline8040",
        layout: pipeline_layout804,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8041 = device80.createComputePipeline({
        label: "compute_pipeline8041",
        layout: pipeline_layout803,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8042 = device80.createComputePipeline({
        label: "compute_pipeline8042",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline8043 = device80.createComputePipeline({
        label: "compute_pipeline8043",
        layout: pipeline_layout806,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout505]
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    
    
    const compute_pipeline8044 = device80.createComputePipeline({
        label: "compute_pipeline8044",
        layout: pipeline_layout808,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8045 = device80.createComputePipeline({
        label: "compute_pipeline8045",
        layout: pipeline_layout807,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8046 = device80.createComputePipeline({
        label: "compute_pipeline8046",
        layout: pipeline_layout803,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const compute_pipeline8047 = device80.createComputePipeline({
        label: "compute_pipeline8047",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline8048 = device80.createComputePipeline({
        label: "compute_pipeline8048",
        layout: pipeline_layout803,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    query801.destroy()
    const compute_pipeline8049 = device80.createComputePipeline({
        label: "compute_pipeline8049",
        layout: pipeline_layout808,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const pipeline_layout8010 = device80.createPipelineLayout({ 
        label: "pipeline_layout8010",
        bindGroupLayouts: [bind_group_layout800]
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([0.0, 0.0, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, -0.5, 0.5, -0.5, -1.0, 0.75, -1.0, 0.0, 0.75, -1.0, -0.5, -0.75, 0.75, 0.0, -0.75, -0.5, 0.0, -0.75, -0.75, 0.25, -0.25, 0.75, 0.0, 0.5, -1.0, 0.5, -0.25, 0.5, -0.5, -1.0, 1.0, 0.75, 0.5, 1.0, 1.0, 0.75, 1.0, -0.75, 0.25, -0.5, 0.0, -0.75, 0.5, -1.0, -1.0, -0.5, 0.0, 0.25, -0.25, -0.5, 0.5, 0.0, -0.5, -1.0, 1.0, 0.0, -1.0, 0.0, -0.75, -0.75, 0.0, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, -0.25, -0.5, 1.0, -0.25, -0.25, -1.0, -0.25, 0.75, 0.25, -0.25, 1.0, 0.25, -0.5, -1.0, -0.75, 0.75, -0.75, 1.0, 1.0, 0.75, 0.0, 0.75, 0.25, 0.5, 1.0, -0.25, ]);
    
    const compute_pipeline8050 = device80.createComputePipeline({
        label: "compute_pipeline8050",
        layout: pipeline_layout801,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline8051 = device80.createComputePipeline({
        label: "compute_pipeline8051",
        layout: pipeline_layout809,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1100.popDebugGroup();
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    const compute_pipeline8052 = device80.createComputePipeline({
        label: "compute_pipeline8052",
        layout: pipeline_layout801,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    device130.destroy();
    render_pass_encoder8010.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    const compute_pipeline8053 = device80.createComputePipeline({
        label: "compute_pipeline8053",
        layout: pipeline_layout808,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    buffer800.destroy()
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder8010.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    
    
    texture1100.destroy();
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module806.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    
    
    const pipeline_layout8011 = device80.createPipelineLayout({ 
        label: "pipeline_layout8011",
        bindGroupLayouts: [bind_group_layout800]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline8054 = device80.createComputePipeline({
        label: "compute_pipeline8054",
        layout: pipeline_layout807,
        compute: {
            module: shader_module806,
            entryPoint: "main"
        }
    });
    query501.destroy()
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout8012 = device80.createPipelineLayout({ 
        label: "pipeline_layout8012",
        bindGroupLayouts: [bind_group_layout800]
    });
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module807.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline8055 = device80.createComputePipeline({
        label: "compute_pipeline8055",
        layout: pipeline_layout804,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline8056 = device80.createComputePipeline({
        label: "compute_pipeline8056",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const compute_pipeline8057 = device80.createComputePipeline({
        label: "compute_pipeline8057",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8058 = device80.createComputePipeline({
        label: "compute_pipeline8058",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    render_pass_encoder8010.executeBundles([])
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const compute_pipeline8059 = device80.createComputePipeline({
        label: "compute_pipeline8059",
        layout: pipeline_layout806,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const compute_pipeline8060 = device80.createComputePipeline({
        label: "compute_pipeline8060",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline8061 = device80.createComputePipeline({
        label: "compute_pipeline8061",
        layout: pipeline_layout804,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline8062 = device80.createComputePipeline({
        label: "compute_pipeline8062",
        layout: pipeline_layout805,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline8063 = device80.createComputePipeline({
        label: "compute_pipeline8063",
        layout: pipeline_layout809,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8064 = device80.createComputePipeline({
        label: "compute_pipeline8064",
        layout: pipeline_layout803,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("out-of-memory");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    query503.destroy()
    var shader_module808_code = "";
    try {
        shader_module808_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module808 = await device80.createShaderModule({ label: "shader_module808", code: shader_module808_code })
    buffer1101.destroy()
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline8065 = device80.createComputePipeline({
        label: "compute_pipeline8065",
        layout: pipeline_layout807,
        compute: {
            module: shader_module806,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pipeline8066 = device80.createComputePipeline({
        label: "compute_pipeline8066",
        layout: pipeline_layout809,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    device110.queue.writeBuffer(buffer1102, 0, array3, 0, array3.length);
    
    const compute_pipeline8067 = device80.createComputePipeline({
        label: "compute_pipeline8067",
        layout: pipeline_layout805,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline8068 = device80.createComputePipeline({
        label: "compute_pipeline8068",
        layout: pipeline_layout807,
        compute: {
            module: shader_module806,
            entryPoint: "main"
        }
    });
    const compute_pipeline8069 = device80.createComputePipeline({
        label: "compute_pipeline8069",
        layout: pipeline_layout808,
        compute: {
            module: shader_module806,
            entryPoint: "main"
        }
    });
    const compute_pipeline8070 = device80.createComputePipeline({
        label: "compute_pipeline8070",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const texture806 = device80.createTexture({
        label: "texture806",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture805.destroy();
    command_encoder500.insertDebugMarker("mymarker");
    device110.queue.writeBuffer(buffer1102, 0, array8, 0, array8.length);
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const compute_pipeline8071 = device80.createComputePipeline({
        label: "compute_pipeline8071",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline8072 = device80.createComputePipeline({
        label: "compute_pipeline8072",
        layout: pipeline_layout802,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const compute_pipeline8073 = device80.createComputePipeline({
        label: "compute_pipeline8073",
        layout: pipeline_layout805,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer802, 0, array2, 0, array2.length);
    const compute_pipeline8074 = device80.createComputePipeline({
        label: "compute_pipeline8074",
        layout: pipeline_layout806,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8075 = device80.createComputePipeline({
        label: "compute_pipeline8075",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const compute_pipeline8076 = device80.createComputePipeline({
        label: "compute_pipeline8076",
        layout: pipeline_layout806,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    render_pass_encoder8010.setPipeline(render_pipeline800);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder8020.setPipeline(render_pipeline800);
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer803,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer804,
                },
            },
        ],
    });

    render_pass_encoder8010.setBindGroup(0, bind_group800);
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer805,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer806,
                },
            },
        ],
    });

    render_pass_encoder8020.setBindGroup(0, bind_group801);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder8010.setVertexBuffer(0, buffer801);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder8010.draw(3);
    render_pass_encoder8020.setVertexBuffer(0, buffer801);
    render_pass_encoder8010.end();
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder8020.draw(3);
    render_pass_encoder8020.end();
    const command_buffer802 = command_encoder802.finish();
    device80.queue.submit([command_buffer802, ]);
}