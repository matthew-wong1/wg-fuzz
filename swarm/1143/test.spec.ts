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
    const array0 = new Float32Array([-0.5, -0.75, -1.0, 0.25, -1.0, 0.0, -0.25, 1.0, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, 0.0, -1.0, 0.0, -0.5, 0.5, -1.0, -0.5, -0.25, 0.25, 0.75, 0.75, 0.0, 0.25, 1.0, 0.75, -0.5, -0.25, -0.75, 1.0, -1.0, -1.0, 1.0, -0.5, -1.0, 0.0, 1.0, 0.75, 0.25, 0.25, 0.25, 0.25, 1.0, 0.0, -0.5, -0.25, 0.5, -0.5, 0.0, -0.5, -0.25, -0.75, 0.5, 0.5, 1.0, -0.75, -0.5, 0.0, 0.25, 0.5, -0.25, 0.25, 0.5, 0.75, -1.0, -0.5, -0.75, 0.75, -0.25, 1.0, 0.0, 0.5, -0.25, -0.5, 0.0, 0.25, 0.5, 0.0, 0.25, 0.75, -0.5, 0.5, -0.75, -0.25, 0.75, 1.0, 1.0, 0.25, -0.5, 0.5, -0.5, 0.0, -0.75, 0.25, 0.75, 0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    render_bundle_encoder000.popDebugGroup();
    query000.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.insertDebugMarker("mymarker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_bundle_encoder001.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const command_buffer001 = command_encoder001.finish();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    
    device00.destroy();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.destroy();
    const array1 = new Float32Array([0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -0.5, 0.75, -0.5, 1.0, 0.75, -0.5, -1.0, 1.0, 0.5, 0.75, 0.25, -0.75, 0.5, 0.25, -0.75, 0.25, -0.75, 0.75, 1.0, -0.75, 0.25, -0.25, -1.0, -0.5, -0.75, -0.25, 0.25, 0.25, -1.0, 0.25, 0.0, 1.0, -1.0, 0.0, -0.25, 1.0, -0.25, 1.0, 0.5, -0.25, 0.25, 1.0, 0.0, 0.75, 0.25, 1.0, -0.25, -0.25, 1.0, -0.25, -0.5, 1.0, 0.75, -0.5, -1.0, -0.25, -0.75, 0.25, 1.0, 0.0, 0.5, -0.5, 1.0, 0.25, 0.0, -0.5, 1.0, -0.5, -1.0, -0.25, 1.0, 0.25, -1.0, -0.25, -1.0, 0.5, -1.0, 1.0, 0.5, 0.75, -0.5, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, 0.0, -0.5, 0.0, 1.0, -0.75, 0.25, 0.75, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_buffer000 = command_encoder000.finish();
    
    const array2 = new Float32Array([-0.75, 1.0, 0.75, 0.5, 0.25, 0.25, 0.0, 0.0, 0.5, 0.5, 0.0, 0.5, -1.0, 0.5, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, 1.0, -1.0, -0.5, -1.0, 0.5, 0.25, -0.5, 1.0, 0.5, -0.75, 0.0, 0.5, 1.0, -0.25, 0.5, 1.0, 0.75, 0.5, 0.75, -0.25, -0.75, 0.25, -0.25, -0.25, 0.25, -0.25, -0.5, -0.25, -1.0, -0.5, 0.0, 1.0, 0.5, 1.0, -0.75, -1.0, 0.5, -0.5, 0.0, -0.75, 0.0, -0.75, -1.0, -1.0, -0.5, 1.0, 0.75, 0.0, -0.75, -1.0, 0.5, 0.75, -0.75, 0.5, 0.5, 0.5, -1.0, 0.75, 0.75, 0.0, 1.0, -1.0, 0.75, 0.0, -0.5, 0.25, 0.25, 0.25, 0.5, 1.0, 1.0, 0.75, 0.75, 0.25, 0.75, -0.25, 0.75, 1.0, -0.75, 0.75, ]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const command_buffer003 = command_encoder003.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    query301.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const array3 = new Float32Array([-1.0, -0.25, -0.25, 0.25, 0.75, 0.75, 0.25, -0.75, -0.75, -0.25, -0.75, -1.0, 0.5, 0.5, 0.75, 0.5, -0.5, -0.25, -1.0, 0.75, 0.5, -0.25, -1.0, -0.5, -0.5, 1.0, 1.0, 0.0, 1.0, 0.75, -0.5, 0.75, 1.0, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, -0.5, 1.0, -0.5, -0.5, -0.75, -0.75, 1.0, 0.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.5, 0.75, 1.0, -0.5, -0.5, -0.25, -0.25, 0.25, -0.25, -0.75, -1.0, -0.5, -0.75, 0.0, -0.25, 1.0, 0.25, -0.5, -0.75, -0.75, 0.0, 0.75, 0.25, 0.0, -0.25, 0.75, 0.5, -0.25, -0.5, 1.0, -0.25, -0.75, 0.75, 0.25, 0.75, -0.75, -0.5, 0.75, 0.75, -0.5, 0.5, 0.25, -0.5, -0.5, -1.0, -0.5, 0.75, 0.0, ]);
    query302.destroy()
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.submit([]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query300.destroy()
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device50.destroy();
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
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
    
    
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    query401.destroy()
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    
    
    
    
    query306.destroy()
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query301.destroy()
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query303.destroy()
    
    
    command_encoder402.insertDebugMarker("mymarker");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query301.destroy()
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    query304.destroy()
    query401.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder401.insertDebugMarker("mymarker");
    
    
    command_encoder402.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-0.25, -0.5, -0.25, 0.0, 1.0, 0.25, 0.25, -0.5, -0.75, -0.75, 0.0, 1.0, 1.0, 1.0, -0.25, 0.5, -0.25, -0.75, -1.0, 0.0, -1.0, -0.5, -0.75, -0.25, 0.5, 0.0, -0.5, -0.25, -0.25, -0.5, -1.0, 1.0, -0.75, 0.0, -1.0, 0.25, 0.25, -0.25, 0.5, -0.25, -0.5, 0.0, 1.0, 0.25, 0.0, 0.25, 0.75, -0.25, 0.75, 0.5, 0.5, 0.25, 0.5, 0.5, 0.25, -1.0, 0.5, 0.75, 0.75, -1.0, -1.0, 0.75, 0.25, 0.0, -1.0, 0.0, -0.5, -0.75, -0.75, 0.75, 0.0, -0.75, 1.0, -1.0, 0.25, 0.5, -0.5, 0.5, 0.25, -0.25, -0.25, 0.25, -0.75, 0.5, -1.0, 0.0, 0.5, -1.0, -0.75, 0.0, 0.25, 0.5, -0.75, 0.0, -0.5, -0.25, 1.0, 0.25, -0.25, -0.75, ]);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    query305.destroy()
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    query304.destroy()
    
    render_bundle_encoder300.popDebugGroup();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder401.popDebugGroup()
    query301.destroy()
    
    const array5 = new Float32Array([0.0, 0.5, 0.25, 0.25, -0.5, -1.0, -1.0, 1.0, 1.0, 0.5, -0.75, 0.75, 1.0, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 0.0, -0.25, -0.5, -0.25, 0.25, 0.0, 0.25, 0.5, 1.0, 1.0, -0.75, 1.0, 0.0, -0.25, 0.75, 0.75, 0.75, 0.75, 0.5, -1.0, 0.0, -0.75, 0.75, -0.5, 0.75, 0.0, -1.0, -0.25, -0.75, 0.5, -0.5, -0.5, -0.75, 0.25, 1.0, -0.5, 0.5, 1.0, 1.0, -0.75, 0.25, 0.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.0, -0.75, -0.5, 1.0, -0.75, 0.75, -0.25, -0.5, -0.5, 0.75, 0.25, -0.75, -0.25, 0.0, -0.25, -1.0, -0.25, -0.25, 1.0, 0.0, -0.5, -0.5, 1.0, 1.0, -0.5, 0.0, -0.75, 0.75, 0.0, -1.0, -0.75, -1.0, 0.5, ]);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    const array6 = new Float32Array([0.75, 0.5, -1.0, 0.75, 0.5, 0.5, 0.5, 0.0, -0.25, 0.5, -1.0, -0.25, -1.0, -0.25, 0.5, -1.0, -0.75, 0.75, 0.75, 0.5, -0.5, -0.75, 0.25, -0.5, -0.25, -0.5, -0.5, -0.5, -1.0, -0.25, 0.0, 0.0, 1.0, 0.0, -0.25, -0.5, 0.0, -0.75, -0.5, 0.25, 0.5, -0.75, -0.5, -0.25, -0.5, -0.25, -1.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.5, -0.75, -0.5, -0.75, -0.25, 0.25, -0.5, 0.75, -0.75, -0.75, 0.5, -0.25, -0.25, 0.0, 0.5, 0.75, -0.25, 1.0, 0.0, -0.25, 0.0, -1.0, 0.75, 0.25, 0.75, 0.75, -0.5, 1.0, -0.75, -1.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.5, -1.0, 0.75, 0.5, -1.0, -0.25, 0.25, 0.5, 1.0, 0.5, 1.0, -0.25, -1.0, ]);
    command_encoder401.copyTextureToTexture(
        {
            texture: texture400
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout403]
    });
    query400.destroy()
    
    
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_buffer700 = command_encoder700.finish();
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    buffer600.destroy()
    command_encoder402.pushDebugGroup("mygroupmarker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
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
    query000.destroy()
    
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout403]
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    
    buffer101.destroy()
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([1.0, 0.25, 0.5, -0.25, 0.5, -0.75, -0.25, 1.0, 0.25, -1.0, 0.75, 0.5, -0.5, 0.0, 0.25, 0.0, -0.5, 0.5, 0.0, 0.75, 0.0, 0.5, 1.0, -0.25, -1.0, -0.25, 0.0, 0.25, 0.5, 0.0, 0.75, -0.25, -0.5, -1.0, -0.5, 0.25, -0.5, 0.0, -0.75, -0.5, 1.0, 1.0, 0.25, -0.75, -0.75, -0.25, 0.0, 1.0, 0.0, 0.5, 0.5, -0.25, 0.5, -1.0, -0.5, 0.75, 1.0, 0.75, -1.0, 1.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.25, -0.75, 0.25, 0.75, 1.0, 0.5, 0.0, 0.75, 1.0, -0.5, -0.25, -1.0, -0.75, 1.0, -0.75, 0.75, 1.0, -1.0, 0.75, 1.0, 0.25, -0.75, 0.0, 0.0, -0.25, 0.5, 0.75, 1.0, 0.5, -0.5, -1.0, -0.25, 0.25, 0.5, -0.5, ]);
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder1000.insertDebugMarker("mymarker");
    buffer401.destroy()
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    command_encoder1000.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device90.destroy();
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const command_buffer1000 = command_encoder1000.finish();
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4020.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    const command_buffer400 = command_encoder400.finish();
    device60.queue.submit([]);
    device70.queue.submit([]);
    device100.queue.submit([command_buffer1000, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device60.queue.submit([]);
    device60.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([command_buffer400, ]);
    command_encoder402.popDebugGroup()
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
}