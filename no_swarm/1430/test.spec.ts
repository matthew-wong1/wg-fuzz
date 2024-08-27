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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.25, 0.0, -1.0, 0.25, -0.5, 0.0, 1.0, -0.5, 0.25, 0.75, 1.0, -1.0, -0.75, 0.25, 0.0, 0.75, 0.5, 0.5, -0.25, -0.75, -0.75, -0.75, -0.25, 0.25, -0.5, 0.25, 0.25, 0.0, -0.5, 0.75, 0.25, 0.75, 0.0, 1.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.5, 1.0, -0.5, -0.5, -0.25, -0.25, 0.25, 0.5, 1.0, 0.25, 0.25, -1.0, 0.25, 0.75, -1.0, -0.5, 0.0, 0.0, -0.5, 0.25, 0.75, 0.5, 0.5, 0.75, -1.0, 1.0, 0.25, 1.0, 0.75, 0.0, 0.25, -0.5, 0.75, -0.5, 0.25, -0.25, 0.75, -0.25, 0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.0, 0.75, 0.75, 0.75, 0.5, 1.0, 0.25, 0.5, 1.0, -0.25, -0.5, -1.0, -0.75, 1.0, -1.0, -0.5, -1.0, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const array1 = new Float32Array([0.0, -1.0, -0.5, 0.25, 0.75, 0.25, -0.25, -0.5, -0.75, -1.0, -0.75, 0.0, 0.75, -0.75, 0.0, -0.25, 1.0, 0.75, 0.5, -1.0, 0.5, -0.75, 0.75, 1.0, -1.0, 0.25, -0.75, 0.75, -0.5, 0.75, -1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 1.0, -1.0, -0.5, -0.75, -0.75, 1.0, 0.5, 0.75, 0.25, 0.0, 1.0, -0.25, 0.25, 0.5, 0.25, -0.5, 0.75, 1.0, -1.0, 0.0, 0.0, -0.25, -1.0, 0.25, -0.75, 0.25, -1.0, 0.5, 0.75, -1.0, 1.0, 0.0, -0.25, -0.75, -0.25, -0.25, -1.0, 1.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.75, -0.25, -0.25, 1.0, -0.75, 0.0, 0.5, -0.75, 0.25, 0.25, 0.25, 1.0, 0.5, -0.5, 0.0, 0.75, 1.0, 0.75, 1.0, -0.25, 0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, -0.75, -1.0, 1.0, -1.0, -0.5, 0.0, 0.5, -0.75, 0.75, -1.0, 1.0, -0.25, 0.0, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, -0.25, -0.25, -0.75, 0.5, -1.0, 0.0, -0.75, 1.0, 0.0, -0.5, -0.75, -0.5, 0.25, 0.75, -0.5, 0.75, -0.5, -1.0, 1.0, -0.75, 1.0, 0.5, 0.25, 0.25, 0.75, -0.25, 0.25, 0.0, -0.25, 0.0, -0.5, 0.75, 0.0, 0.25, 0.5, -0.75, -0.5, 0.75, 0.0, 0.25, 0.75, 0.25, -0.25, 0.25, 0.0, 0.0, -0.75, -1.0, -0.75, -0.75, 0.25, -0.25, 0.75, 0.75, -0.5, 0.5, 0.0, -0.5, 0.0, 0.75, -0.25, 0.0, 0.25, 0.5, 0.5, 0.75, -0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.0, -0.25, 0.5, 0.25, -0.75, 1.0, -0.5, 0.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    device10.pushErrorScope("internal");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-1.0, 0.5, -0.75, 0.75, -1.0, 0.0, -0.25, 0.25, -0.75, -0.75, -0.25, 0.5, -0.75, -0.75, 1.0, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, 0.75, 0.75, 1.0, -1.0, 0.25, 1.0, -0.25, -1.0, 0.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.5, 0.25, -1.0, 0.0, -1.0, 0.5, -0.5, 0.0, 0.5, 0.25, 0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -0.5, 0.5, -0.25, -1.0, -0.5, 1.0, -0.5, 0.0, 0.25, -0.25, -1.0, 0.75, 0.25, -0.25, -0.5, 1.0, 0.25, -0.5, 0.25, 1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.5, -1.0, -0.25, -0.25, -1.0, -0.75, 0.75, -1.0, 0.75, 0.25, -1.0, -0.5, 0.75, -0.5, -0.5, 1.0, 0.75, 0.5, -0.25, 0.5, 0.75, -0.75, -0.75, 0.5, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array4 = new Float32Array([0.75, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, 0.25, 0.5, 0.75, 0.5, -0.5, -0.25, 0.5, -0.5, 0.5, -1.0, -0.75, -0.5, 0.5, 0.5, -0.5, 0.75, 1.0, 1.0, 1.0, 0.25, 0.25, 0.25, -0.75, -0.5, 1.0, -0.5, 0.0, -0.5, 0.25, -1.0, 0.0, -0.25, 0.25, 1.0, 0.5, 0.5, 1.0, -1.0, 1.0, -0.75, -1.0, 0.0, -1.0, 1.0, 0.0, -0.5, 0.25, 0.25, -0.5, -0.25, 1.0, 0.25, -0.75, 0.0, 1.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.75, -0.75, 0.0, -0.25, 0.0, 0.5, -0.75, 0.5, -0.5, 1.0, 0.75, 0.0, 0.75, 0.75, 1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, -1.0, -1.0, -0.75, 0.25, 0.75, 0.75, 1.0, 0.0, -0.75, -1.0, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device40.destroy();
    
    
    
    
    device20.destroy();
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
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer300.destroy()
    
    
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.queue.submit([]);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    
    texture301.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    
    
    
    
    
    const array5 = new Float32Array([0.75, 1.0, 0.25, -0.25, 1.0, 0.25, -1.0, 0.0, 1.0, 0.75, -1.0, -1.0, 0.25, 1.0, -0.5, 0.75, 0.0, -0.5, 1.0, 0.25, 0.5, 0.75, -0.75, 0.25, 0.75, -0.5, 0.0, -0.5, -0.75, 0.25, 0.25, 0.75, -0.25, 0.0, -0.5, 0.25, 1.0, -0.75, 0.25, -0.25, 0.25, 0.5, 1.0, 0.0, 0.0, -0.75, -0.25, 0.0, -0.75, -0.75, -0.25, -1.0, -0.25, -0.5, -0.5, -1.0, -0.5, 0.25, 0.0, -0.75, 1.0, 0.75, 1.0, -0.5, 0.75, 0.75, -0.75, 0.0, -0.25, -0.75, 0.75, 0.5, -0.75, -0.25, 0.25, 0.75, 0.0, 0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.25, 0.5, -0.5, 0.0, 1.0, -0.25, -0.75, 0.0, 1.0, 0.25, 1.0, 0.5, 0.0, -0.25, -1.0, -0.5, ]);
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const array6 = new Float32Array([1.0, -0.5, 0.25, -0.25, 0.5, 0.5, 0.0, 0.5, -0.5, -0.25, 0.25, -0.75, 1.0, 0.75, -0.5, -0.5, -0.25, 0.0, 0.75, 0.0, -0.25, 0.25, 0.25, 0.75, -1.0, -0.25, 0.0, 0.25, 0.0, 0.5, 0.5, 0.5, 0.5, 0.75, -0.25, 0.0, -0.5, 0.75, 0.0, -1.0, 0.25, 1.0, -0.75, -0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 1.0, 0.5, -0.5, -0.75, 0.5, -0.25, -0.75, 0.0, -0.75, 1.0, -0.5, -0.75, -0.25, -0.75, -0.75, -0.5, 0.75, 0.75, -0.75, 0.0, 0.25, 0.75, -0.25, -0.25, 0.5, 1.0, 0.0, 1.0, -0.5, 1.0, 0.25, 0.5, -0.5, 0.25, 0.25, 1.0, 1.0, -1.0, -0.5, 1.0, 0.25, 0.75, -0.5, 0.0, 0.75, 0.0, -1.0, 0.0, -1.0, -0.5, -0.25, ]);
    
    
    device60.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.destroy();
    device80.destroy();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device40.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const array7 = new Float32Array([-0.25, 0.5, 0.5, 1.0, -1.0, 0.0, -0.75, 0.25, -0.5, 0.75, -0.5, 0.5, -1.0, 0.5, -0.75, -1.0, 0.5, -0.25, 0.25, -0.25, 0.5, 1.0, -0.25, 0.0, 0.25, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 0.25, 0.25, -0.75, -0.5, 0.0, -0.75, 0.75, 1.0, 0.75, -1.0, 0.5, 0.0, 0.0, 1.0, -0.75, -0.25, 0.0, -0.75, 0.75, 0.25, 0.75, 0.0, -0.75, -0.25, 1.0, 0.0, -0.25, -0.25, -0.5, -0.25, 1.0, 0.5, -1.0, -1.0, 0.25, -1.0, 0.0, 0.0, 0.25, 1.0, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, -1.0, -1.0, 0.0, -0.5, -0.25, 0.5, -0.75, 0.25, -0.5, -0.75, -1.0, -0.25, 0.75, 0.25, 0.5, -0.5, 0.25, -1.0, -0.75, -0.5, -0.5, 0.75, 0.75, ]);
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device80.destroy();
    
    
    device60.destroy();
    
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    buffer900.destroy()
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array8 = new Float32Array([-0.25, 0.25, 0.0, -1.0, 0.25, -0.5, -0.5, -0.25, -0.5, -0.75, -1.0, -0.75, 0.75, -0.25, -1.0, 0.25, -1.0, -0.5, -1.0, -1.0, 0.5, -1.0, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.25, 1.0, -0.75, 1.0, -1.0, 1.0, 0.5, -0.5, 0.75, -0.25, -0.75, 0.25, 0.5, 1.0, 1.0, 0.0, 1.0, 0.75, 0.25, 0.5, 0.25, 0.25, -1.0, 0.0, -0.5, -0.75, 0.75, 0.25, 0.5, -1.0, 0.25, 0.75, -0.75, 1.0, -0.5, 1.0, 0.0, 0.75, -0.75, 0.5, 0.25, 0.25, 0.25, -0.75, 1.0, 0.5, -0.75, 0.0, -0.75, 0.0, 0.25, -0.75, 1.0, 0.5, 0.75, -0.25, -0.5, -0.75, 0.75, -0.25, 0.75, -0.25, 0.75, -0.5, 0.75, 1.0, -0.25, -0.75, -0.5, -0.75, -0.75, 0.25, ]);
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
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
    
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    device100.pushErrorScope("out-of-memory");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    query900.destroy()
    device60.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder900.insertDebugMarker("mymarker");
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device100.queue.writeBuffer(buffer1000, 0, array4, 0, array4.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    command_encoder900.copyTextureToBuffer(
        {
            texture: texture900
        },
        {
            buffer: buffer900
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    device100.queue.writeTexture({ texture: texture1000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder900.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    
    command_encoder900.resolveQuerySet(
        query901,
        0,
        32,
        buffer903,
        0
    )
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder900.insertDebugMarker("mymarker");
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder900.pushDebugGroup("mygroupmarker")
    device90.queue.writeBuffer(buffer903, 0, array2, 0, array2.length);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query900.destroy()
    command_encoder900.resolveQuerySet(
        query900,
        0,
        32,
        buffer902,
        0
    )
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    buffer901.destroy()
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    device100.queue.writeBuffer(buffer1000, 0, array4, 0, array4.length);
    
    const command_buffer1000 = command_encoder1000.finish();
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    render_bundle_encoder1001.setPipeline(render_pipeline1000);
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1001.insertDebugMarker("marker");
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder1000.insertDebugMarker("marker");
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    render_bundle_encoder1000.setPipeline(render_pipeline1001);
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    command_encoder900.resolveQuerySet(
        query901,
        0,
        32,
        buffer903,
        0
    )
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    buffer1000.destroy()
    command_encoder900.resolveQuerySet(
        query900,
        0,
        32,
        buffer903,
        0
    )
    texture900.destroy();
    
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    device70.pushErrorScope("internal");
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder1102 = device110.createCommandEncoder({ label: "command_encoder1102" });
    const compute_pass_encoder11010 = command_encoder1101.beginComputePass({ label: "compute_pass_encoder11010" });
    command_encoder900.resolveQuerySet(
        query901,
        0,
        32,
        buffer901,
        0
    )
    
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    render_bundle_encoder1000.popDebugGroup();
    
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout901]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    buffer700.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_pipeline1002 = device100.createRenderPipeline({
        label: "render_pipeline1002",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const array9 = new Float32Array([0.0, 0.0, 0.25, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.75, 0.0, 0.5, -0.75, 0.75, 0.0, 0.0, 0.0, -1.0, 0.0, -1.0, -0.5, 0.25, 1.0, 1.0, 0.5, 0.25, -0.25, -1.0, -1.0, 0.25, -0.25, -0.75, 0.5, -0.25, -1.0, 0.0, -1.0, -0.5, 0.25, -0.25, -0.75, 0.25, 0.5, 0.5, -0.25, -0.25, 0.5, 0.0, 0.0, -1.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.25, -0.5, 0.5, -0.5, -0.5, 0.0, 0.25, -0.5, 0.5, 0.75, -0.25, -1.0, 0.5, 0.25, -1.0, 0.25, -0.75, 0.0, -1.0, 0.5, -0.75, 0.5, -0.5, 0.5, -0.25, 0.5, 0.0, -0.25, 0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 0.0, -0.5, 0.0, -0.75, 0.5, ]);
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    const command_buffer1100 = command_encoder1100.finish();
    device100.queue.submit([command_buffer1000, ]);
    render_bundle_encoder1002.setPipeline(render_pipeline1000);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder1001.popDebugGroup();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query901.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const compute_pass_encoder11020 = command_encoder1102.beginComputePass({ label: "compute_pass_encoder11020" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder11021 = command_encoder1102.beginComputePass({ label: "compute_pass_encoder11021" });
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout902]
    });
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder9000.insertDebugMarker("marker")
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    buffer903.destroy()
    device100.queue.writeTexture({ texture: texture1000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    device100.queue.submit([command_buffer1000, ]);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.queue.writeTexture({ texture: texture901 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder1100.setPipeline(render_pipeline1101);
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1000.insertDebugMarker("marker");
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder11020.pushDebugGroup("group_marker")
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    device70.pushErrorScope("validation");
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device100.queue.writeTexture({ texture: texture1000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: render_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1003,
                },
            },
        ],
    });

    render_bundle_encoder1002.setBindGroup(0, bind_group1000);
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    device100.queue.submit([command_buffer1000, ]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    command_encoder1002.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    texture1100.destroy();
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    texture901.destroy();
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout903 = device90.createPipelineLayout({ 
        label: "pipeline_layout903",
        bindGroupLayouts: [bind_group_layout901]
    });
    const render_pipeline1003 = device100.createRenderPipeline({
        label: "render_pipeline1003",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    device110.pushErrorScope("internal");
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.submit([command_buffer1100, ]);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    query1100.destroy()
    render_bundle_encoder700.popDebugGroup();
    buffer1001.destroy()
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder900.setPipeline(render_pipeline902);
    command_encoder1001.copyTextureToTexture(
        {
            texture: texture1000
        },
        {
            texture: texture1000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer1005 = device100.createBuffer({
        label: "buffer1005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1006 = device100.createBuffer({
        label: "buffer1006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1001 = device100.createBindGroup({
        label: "bind_group1001",
        layout: render_pipeline1001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1006,
                },
            },
        ],
    });

    render_bundle_encoder1000.setBindGroup(0, bind_group1001);
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder901.setPipeline(render_pipeline902);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    query1101.destroy()
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    command_encoder1001.copyBufferToBuffer(
        buffer1001,
        0,
        buffer1004,
        0,
        400
    );
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeBuffer(buffer1004, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder901.insertDebugMarker("marker");
    
    device100.queue.writeBuffer(buffer1006, 0, array6, 0, array6.length);
    const texture_view7003 = texture700.createView({ label: "texture_view7003" });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder1001.clearBuffer(buffer1004);
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_buffer1001 = command_encoder1001.finish();
    device100.queue.submit([command_buffer1001, ]);
    compute_pass_encoder11020.popDebugGroup()
    const command_buffer1101 = command_encoder1101.finish();
    device130.queue.submit([]);
    compute_pass_encoder9000.setPipeline(compute_pipeline901);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder1002.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder9000.popDebugGroup()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1002 = command_encoder1002.finish();
    device100.queue.submit([command_buffer1002, ]);
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer905 = device90.createBuffer({
        label: "buffer905",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: compute_pipeline901.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer904,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer905,
                },
            },
        ],
    });

    compute_pass_encoder9000.setBindGroup(0, bind_group900);
    compute_pass_encoder9000.dispatchWorkgroups(100);
    device110.queue.submit([command_buffer1100, command_buffer1101, ]);
    compute_pass_encoder9000.end();
    command_encoder900.popDebugGroup()
    device110.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.queue.submit([command_buffer1000, ]);
    const command_buffer900 = command_encoder900.finish();
    device90.queue.submit([command_buffer900, ]);
    const command_buffer400 = command_encoder400.finish();
    device100.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    const buffer906 = device90.createBuffer({
        label: "buffer906",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer907 = device90.createBuffer({
        label: "buffer907",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: compute_pipeline901.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer906,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer907,
                },
            },
        ],
    });

    compute_pass_encoder9000.setBindGroup(0, bind_group901);
    device100.queue.submit([command_buffer1002, ]);
    device110.queue.submit([command_buffer1101, ]);
    const command_buffer1102 = command_encoder1102.finish();
    device110.queue.submit([]);
    compute_pass_encoder11020.popDebugGroup()
    device70.queue.submit([]);
    device110.queue.submit([command_buffer1100, command_buffer1102, ]);
}