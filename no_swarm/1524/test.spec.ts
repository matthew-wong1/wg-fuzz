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
    const array0 = new Float32Array([-0.75, 0.75, 0.0, -1.0, 0.25, 1.0, 0.75, -0.25, 0.75, 0.25, -0.5, 1.0, -0.75, 0.75, 1.0, 1.0, -1.0, 0.75, -1.0, -0.75, 0.0, 0.5, 0.25, -1.0, -1.0, 0.75, 0.25, 0.25, -0.75, 0.0, -0.5, -0.25, 0.0, 0.75, 0.5, -0.5, -0.75, -0.5, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, -0.25, 0.25, -0.25, 0.5, 0.5, 0.5, 0.25, -0.5, -0.5, 1.0, -1.0, -0.25, 0.75, -0.75, -0.75, -0.75, 0.75, 0.25, -0.5, -1.0, 0.25, -0.75, -1.0, -1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.25, 0.75, 0.5, 0.0, -1.0, -0.25, -1.0, -0.75, -0.5, 0.0, -0.5, 0.75, 0.0, 0.0, 0.25, 0.5, -0.25, 1.0, 0.0, 1.0, 0.0, 0.25, -0.75, -0.5, -1.0, -0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    query101.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query101.destroy()
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    query100.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture100.destroy();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query102.destroy()
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device10.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-0.75, -1.0, 0.5, 1.0, 0.5, 0.5, 0.5, -0.25, 0.25, 0.0, 0.0, -0.75, -0.5, -0.75, -0.5, -0.5, 0.25, 0.75, 0.25, 0.0, -0.5, 0.5, -0.75, -0.75, -0.25, 1.0, -0.75, 0.25, 1.0, -0.25, -0.25, 0.75, -0.75, 0.0, 1.0, 0.25, -1.0, 0.25, -0.5, 0.5, 0.5, 0.0, 0.0, 0.75, 0.5, -0.25, -0.25, 0.0, 0.75, -0.5, 0.75, 1.0, 0.75, 0.5, 0.25, -0.5, 0.25, 0.75, 1.0, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, 0.0, -0.75, 0.5, 0.5, 0.25, 0.0, -0.75, 0.0, 0.5, 0.0, -0.75, 0.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, -1.0, 0.5, 0.75, 0.5, 0.5, 1.0, 0.25, -1.0, -0.75, 0.25, 1.0, -0.75, ]);
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const array2 = new Float32Array([1.0, -0.5, 1.0, -1.0, 0.0, 0.5, 0.75, -1.0, -0.5, -1.0, -1.0, -1.0, 0.25, -0.25, 1.0, -0.5, 0.0, 0.5, 0.75, -1.0, -0.5, -0.5, 0.25, 0.75, 1.0, 0.25, -0.75, 0.25, -1.0, 0.75, 0.5, 0.75, -1.0, -1.0, -1.0, 0.75, -0.25, -0.25, -0.75, -1.0, 0.5, 0.0, 0.5, 1.0, -1.0, -1.0, 0.25, -0.75, 1.0, -0.5, -0.5, 1.0, -0.25, 0.5, -0.75, 0.5, 0.5, 0.25, -0.25, 1.0, 0.0, 0.75, 0.25, -0.75, -0.25, -0.25, 0.25, 0.25, 0.5, 1.0, 0.5, 0.25, -0.75, -0.5, -0.5, 0.75, 0.0, 0.5, 0.25, 0.0, -0.5, -0.75, 0.0, 1.0, 0.75, 0.25, -0.75, 1.0, -1.0, 0.5, -0.75, 0.25, 0.0, 0.5, 0.5, 0.75, 1.0, -1.0, -1.0, -0.75, ]);
    render_bundle_encoder200.popDebugGroup();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array3 = new Float32Array([0.0, 0.0, -0.25, -1.0, 0.0, -0.5, 0.75, -0.75, 0.75, -0.5, -0.25, 0.0, 0.0, 0.25, 1.0, -0.75, 0.75, 0.5, -0.25, -0.75, -0.5, -0.75, -0.25, -0.5, -0.75, 0.75, -0.75, 0.5, -0.75, 0.25, -0.75, 1.0, -0.5, 0.0, 0.75, 0.25, -0.75, -0.5, -0.5, 0.75, -1.0, 0.75, -0.75, 0.5, -0.5, 1.0, -0.5, 1.0, 0.25, -0.25, -0.75, 1.0, 0.0, 0.0, 0.5, 0.75, -0.25, -0.25, -0.75, -1.0, 0.25, -0.5, -1.0, 0.5, 0.25, 0.5, -0.5, -1.0, 0.75, -0.5, 0.5, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, 0.75, -0.75, -0.75, 0.0, 0.75, 0.25, -0.25, -1.0, 0.75, 0.0, -0.5, 0.5, -1.0, 1.0, 0.5, 0.25, -0.25, 1.0, 0.25, 1.0, 0.25, -0.25, 0.0, ]);
    device20.destroy();
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.pushErrorScope("internal");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer000.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.75, 0.25, 0.5, 0.0, 0.25, 1.0, 0.25, -0.25, 0.0, 1.0, 0.25, 0.25, -0.5, 0.5, -0.5, 0.5, -0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 0.5, 1.0, 0.25, 0.75, 0.0, -0.75, 0.5, -0.5, -0.5, 0.0, 1.0, -1.0, -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, -0.25, -0.25, 0.0, 0.0, -0.25, 0.0, 0.75, 0.25, -0.5, -0.75, 0.0, -0.75, -0.25, -0.25, 0.0, -0.75, -1.0, -0.5, 0.0, -1.0, -0.75, 0.5, 0.25, -0.25, -0.25, 0.25, 0.5, 1.0, 1.0, -1.0, -0.5, -1.0, 1.0, -1.0, -1.0, 0.0, 0.75, 0.0, -0.75, 0.25, 0.0, 1.0, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.5, 1.0, -1.0, -0.5, -0.5, 0.25, 1.0, 0.0, -1.0, 0.75, 0.25, -0.25, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.submit([]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const array5 = new Float32Array([0.5, 0.75, -0.25, -0.5, 0.0, 0.75, -0.5, 0.0, -0.25, 0.5, -0.5, -0.5, 0.5, -0.25, 0.25, -0.25, 0.0, -1.0, -0.25, 0.0, -0.5, -0.75, 0.0, 0.75, 0.75, -0.75, -0.75, -0.25, -0.5, 1.0, -1.0, -1.0, 1.0, -0.25, -0.5, 0.0, 0.0, -0.25, 0.25, -0.25, 0.0, -1.0, 0.25, 0.0, 0.0, 0.75, -0.75, 0.5, -0.5, -1.0, 0.25, 1.0, -0.5, 1.0, -0.25, 0.25, 0.25, 0.25, -0.5, 0.25, 1.0, -0.5, 0.25, 1.0, -0.25, 1.0, 0.75, -1.0, 0.75, -0.25, -0.75, -0.75, -0.75, -0.75, 0.0, -0.75, 0.5, -0.75, 0.25, -0.5, 0.0, 0.5, 0.75, 0.75, 0.25, 0.5, 0.0, -0.75, 0.5, -1.0, -0.5, -1.0, 1.0, 0.25, -1.0, 0.75, 0.25, -0.75, -0.75, 1.0, ]);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query401.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.popDebugGroup()
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query401.destroy()
    render_bundle_encoder400.popDebugGroup();
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
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
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder4010.setStencilReference(1);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    query300.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device50.queue.submit([]);
    
    render_bundle_encoder400.popDebugGroup();
    command_encoder301.pushDebugGroup("mygroupmarker")
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    buffer400.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    device50.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
        occlusionQuerySet: query300
    });
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
    query300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3000.executeBundles([])
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3020.executeBundles([])
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setStencilReference(1);
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const array6 = new Float32Array([-0.5, -0.5, -0.5, 0.25, 0.5, -0.5, -1.0, -0.5, 1.0, 0.5, -0.5, -1.0, 1.0, 0.75, 0.5, 0.75, 0.0, 0.75, -0.75, 0.75, -1.0, 0.0, 1.0, -0.5, -0.5, 0.5, -0.5, 0.25, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.0, -0.75, -0.25, -0.25, -0.5, -0.25, -1.0, 0.5, 0.25, 1.0, -0.5, -0.25, -0.5, -0.75, -1.0, 0.25, -0.25, 0.25, -0.25, -1.0, 0.5, -0.25, 0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 0.25, -0.25, 1.0, -0.25, -0.5, -1.0, 1.0, 1.0, -0.25, 0.25, -0.75, 0.0, 0.5, -0.25, -0.5, 0.5, -0.75, -0.25, 0.5, -1.0, 0.0, -1.0, -1.0, -0.5, -1.0, 0.0, -0.75, -0.5, 0.25, -0.5, 0.25, 0.25, 0.25, -1.0, 0.0, -1.0, 0.25, -1.0, ]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query400.destroy()
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_pass_encoder3000.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder3020.popDebugGroup();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setStencilReference(1);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device60.destroy();
    query300.destroy()
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    
    const array7 = new Float32Array([-0.25, -1.0, 0.0, 0.25, -1.0, 0.25, 0.0, 0.5, -0.75, -0.25, -0.25, 0.75, -0.25, -0.5, -1.0, 0.25, -1.0, 0.0, 0.75, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, -0.25, 0.5, 0.0, -0.75, 0.75, 0.0, -0.75, 0.25, 0.75, 0.5, -0.75, 1.0, -1.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, 0.75, -1.0, -1.0, -0.75, 0.75, 0.25, 0.75, 0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 1.0, -0.5, -0.25, 1.0, 1.0, -0.5, -0.75, 0.5, 0.5, 0.0, 0.25, -0.75, -1.0, 0.0, 0.25, -0.75, -0.75, -0.75, -0.75, -1.0, 1.0, 1.0, -0.25, 0.5, -1.0, 0.75, -1.0, -0.5, 0.75, -0.25, -0.5, 1.0, -0.5, 0.5, 0.0, ]);
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query301.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    command_encoder400.insertDebugMarker("mymarker");
    query402.destroy()
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query402.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder401.popDebugGroup();
    query800.destroy()
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query401.destroy()
    render_pass_encoder4020.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder4010.setStencilReference(1);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    device40.pushErrorScope("validation");
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture403 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.setPipeline(render_pipeline400);
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    query301.destroy()
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    query402.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    
    
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
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setStencilReference(1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    texture400.destroy();
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query402.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query300.destroy()
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    texture302.destroy();
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    render_pass_encoder3020.popDebugGroup();
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture402.destroy();
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.popDebugGroup();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query400.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    command_encoder600.pushDebugGroup("mygroupmarker")
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    texture300.destroy();
    
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.pushErrorScope("validation");
    
    render_pass_encoder4010.setStencilReference(1);
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    render_pass_encoder3010.insertDebugMarker("marker");
    query402.destroy()
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query401
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3021.setPipeline(render_pipeline300);
    texture500.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_pass_encoder4010.setPipeline(render_pipeline400);
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder4000.setStencilReference(1);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
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
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group300);
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query403
    });
    render_pass_encoder3000.executeBundles([])
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture401.destroy();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    query300.destroy()
    buffer401.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeTexture({ texture: texture304 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const array8 = new Float32Array([0.75, 0.25, -1.0, -0.75, -0.25, -0.75, 0.5, 1.0, 0.5, -0.25, -0.5, 0.0, -1.0, -1.0, -0.75, -0.25, 0.75, 1.0, 1.0, 0.5, -1.0, -1.0, 0.5, -1.0, -0.5, 0.5, -0.75, -0.25, 0.75, 0.0, -0.5, 0.75, 0.5, 1.0, 0.75, 0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.25, 0.25, -0.5, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, 0.25, 0.5, -1.0, 1.0, 0.5, -0.25, 0.5, 0.0, -0.25, 0.75, 0.5, 1.0, -0.25, 0.75, 0.0, 0.0, -0.5, -0.75, -0.5, -1.0, -0.75, -0.5, -1.0, 0.25, -0.5, 0.0, -0.5, 0.5, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, 0.25, -0.75, 1.0, 1.0, 0.0, -0.75, -0.5, -0.25, 0.5, 0.0, 0.25, -1.0, -0.75, 0.5, 0.75, 0.75, ]);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder4021.setPipeline(render_pipeline400);
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    texture301.destroy();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_pass_encoder4000.pushDebugGroup("group_marker");
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.setVertexBuffer(0, buffer403);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture304.destroy();
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group402);
    render_pass_encoder3020.setPipeline(render_pipeline301);
    command_encoder000.popDebugGroup()
    render_pass_encoder3010.setPipeline(render_pipeline301);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    render_pass_encoder3000.setPipeline(render_pipeline302);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4000.setPipeline(render_pipeline400);
    render_pass_encoder3020.setVertexBuffer(0, buffer303);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder3021.setVertexBuffer(0, buffer305);
    render_pass_encoder3010.popDebugGroup();
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder3021.drawIndirect(buffer300, 0);
    render_pass_encoder3000.setVertexBuffer(0, buffer301);
    render_pass_encoder3000.popDebugGroup();
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder3010.setVertexBuffer(0, buffer302);
    command_encoder301.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder3021.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    device50.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    render_pass_encoder3021.drawIndirect(buffer300, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder4020.popDebugGroup();
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group403);
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
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group404);
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    render_pass_encoder3000.end();
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group405);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    render_pass_encoder4020.setVertexBuffer(0, buffer400);
    render_pass_encoder4020.popDebugGroup();
    compute_pass_encoder4000.end();
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group406);
    render_pass_encoder4010.setIndexBuffer(buffer401, "uint16");
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4015, 0);
    render_pass_encoder4020.drawIndirect(buffer404, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3020.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4010.end();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3010.end();
    command_encoder401.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder4021.setVertexBuffer(0, buffer400);
    render_pass_encoder4021.draw(3);
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
    
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group407);
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4000.drawIndexedIndirect(buffer401, 0);
    command_encoder600.popDebugGroup()
    render_pass_encoder3020.end();
    render_pass_encoder4021.drawIndirect(buffer4015, 0);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4021.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder4021.drawIndexed(3);
    device80.queue.submit([command_buffer801, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder4000.drawIndexed(3);
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
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group408);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4020.end();
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4010.drawIndirect(buffer4010, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4020, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder3021.drawIndirect(buffer304, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder4010.drawIndirect(buffer4015, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4020.end();
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
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
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group409);
    render_pass_encoder4000.drawIndexedIndirect(buffer4019, 0);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device40.queue.submit([]);
    render_pass_encoder3010.draw(3);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4023, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4023, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.end();
    render_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder4000.popDebugGroup()
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
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4010);
    device30.queue.submit([command_buffer302, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder4020.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer4020, 0);
    render_pass_encoder4020.end();
    render_pass_encoder4010.drawIndirect(buffer406, 0);
    render_pass_encoder4020.drawIndirect(buffer401, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4023, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer4016, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer400, 0);
}