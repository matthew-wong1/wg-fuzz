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
    
    
    const array0 = new Float32Array([1.0, 1.0, 0.0, 0.0, 0.5, 0.5, -0.25, -0.25, 1.0, -1.0, -0.5, -1.0, -1.0, 0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 0.5, 1.0, -0.5, 0.5, 0.5, -0.75, 0.25, 0.5, 0.75, -0.5, 0.25, -0.5, -0.25, -1.0, -0.5, -0.25, -0.25, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.75, 0.25, 0.25, 0.25, -0.5, 1.0, -0.75, -0.75, 0.25, 0.0, 1.0, -1.0, -1.0, -1.0, 0.5, -0.5, 0.25, 0.0, -0.5, -0.75, 1.0, -0.75, 0.0, -0.5, 0.75, 0.5, 0.0, -0.75, 1.0, -0.75, 0.75, 0.75, -0.5, 1.0, 0.0, -0.75, -0.25, 0.5, -0.5, 0.0, 0.25, -0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 1.0, 0.25, -0.25, -0.5, 0.0, -1.0, -0.25, 0.5, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("validation");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
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
    
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    
    texture000.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const array1 = new Float32Array([-0.75, 1.0, -0.5, 0.25, 0.25, -1.0, -0.75, 0.25, 0.25, -0.25, -0.5, 0.5, -1.0, 0.25, -0.25, -0.75, -0.5, -0.5, 0.75, -0.5, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, 1.0, -0.25, -0.25, 0.75, -0.25, -0.5, -0.25, -0.25, -0.5, 0.5, -0.5, -0.75, 1.0, -0.75, 0.25, -0.25, -0.25, 1.0, 1.0, 0.75, -0.25, 0.75, -0.25, 0.5, 0.5, -1.0, 1.0, 1.0, -0.5, 1.0, -0.5, -0.75, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, -0.25, 0.0, -0.5, 0.0, -0.5, 1.0, 0.25, -0.75, 1.0, -0.25, 0.75, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, -0.25, 1.0, -0.5, -0.75, 0.0, 0.0, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, -0.25, 0.75, 0.75, -0.25, -0.5, -1.0, 0.5, ]);
    const array2 = new Float32Array([-0.75, -0.5, -1.0, -0.75, 0.0, 0.0, -0.75, -0.75, -0.5, 0.75, -1.0, 0.75, -0.25, 0.75, -0.25, -0.25, -0.5, 1.0, 1.0, -0.25, 0.5, 0.5, 0.0, 1.0, -0.25, 0.25, 1.0, 0.75, 0.25, -0.5, -0.25, 0.5, -0.5, -1.0, 0.5, -1.0, 0.0, 0.75, 0.5, 0.75, -0.25, -1.0, 1.0, 0.75, 0.5, -0.75, -0.75, 0.0, 0.75, 0.25, -0.75, -0.25, -0.75, 0.0, -0.5, 0.0, -1.0, -0.25, 0.75, 0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 0.75, 0.5, -0.5, 0.75, 1.0, -0.5, 1.0, -0.75, -0.25, 0.0, -0.25, -0.75, 0.0, -1.0, 0.5, -1.0, -0.5, 0.0, -1.0, -0.75, -0.5, 0.5, 1.0, 0.75, 0.5, 0.0, 0.0, 0.5, 1.0, 0.25, -0.25, 0.25, -0.5, 0.5, -0.25, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
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
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array3 = new Float32Array([0.25, 0.75, 0.75, -0.75, 0.75, 0.25, -0.75, 0.5, 0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.25, -0.5, 1.0, 0.0, 0.5, 0.25, -0.5, 0.0, -0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 0.0, -0.25, -0.5, -1.0, -1.0, -0.25, -0.75, -0.75, 0.25, -0.5, -0.5, -0.25, -1.0, 0.5, 0.75, 0.25, 0.25, 0.0, 0.5, -0.25, -1.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.0, 0.0, -0.75, 0.75, 0.75, -0.25, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, 0.25, 0.75, 0.0, 1.0, 0.0, -0.25, 0.75, -0.25, 0.5, -0.25, -0.75, -1.0, 0.5, 0.25, 0.25, -0.5, 0.5, 0.5, 0.0, 0.75, 0.5, -0.5, 0.0, -0.5, 1.0, 0.0, 0.0, 0.75, -0.75, 0.0, -0.25, 0.25, -0.5, -0.75, ]);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.75, 0.0, -0.25, -0.5, -0.25, 0.25, 1.0, 0.25, -0.25, -0.25, 0.75, -0.5, 0.5, -0.5, -1.0, 0.25, -0.75, -0.25, 0.5, -0.25, 0.75, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, 0.75, -0.75, 0.75, -0.25, -0.5, -0.75, -1.0, -0.25, -0.75, -1.0, 0.0, -0.75, 0.5, 1.0, -0.5, 0.0, -0.5, 0.25, -0.75, 0.75, -0.5, -1.0, -1.0, 0.0, 0.0, 0.25, 0.0, 0.25, 0.25, 1.0, 0.5, 0.25, -0.25, 0.5, 0.25, 0.75, -0.75, -0.75, -1.0, 1.0, -1.0, 1.0, 0.0, -0.25, 1.0, 0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 0.75, 1.0, -0.25, -0.5, -0.5, 0.75, -0.75, 0.5, 0.0, -1.0, -0.75, 0.25, -0.5, 1.0, 0.5, 0.5, 0.25, 1.0, 0.75, 0.0, 1.0, 0.5, ]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.popDebugGroup();
    
    
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.queue.submit([]);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setStencilReference(1);
    
    texture002.destroy();
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    buffer000.destroy()
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_pass_encoder0000.setStencilReference(1);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    texture001.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.executeBundles([])
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.beginOcclusionQuery(0)
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array5 = new Float32Array([-0.25, 0.75, 0.5, -1.0, -1.0, 0.25, 0.0, 0.0, -0.5, -0.5, -0.5, 0.75, 0.25, -0.25, 0.5, -0.5, 1.0, 0.5, -0.5, 0.5, -0.5, -0.5, -1.0, 0.75, -0.25, -0.75, -0.75, -0.5, -0.25, -1.0, 0.75, 1.0, -0.75, 1.0, -1.0, -1.0, 0.75, -0.5, -0.25, 1.0, 0.5, -1.0, 0.0, -0.5, -0.25, 0.0, 0.5, -1.0, 1.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.0, -0.5, -0.75, -0.25, 0.75, 0.25, 1.0, 0.25, 0.0, 0.75, 1.0, 0.5, 0.75, 1.0, -0.25, -1.0, -1.0, 1.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, -1.0, -0.75, 0.25, 0.75, 0.75, 0.5, -0.5, 0.0, -0.75, 0.75, -0.5, 0.25, -0.75, 0.5, 0.25, 0.75, 0.75, -0.75, -0.75, 0.0, -0.25, 0.0, ]);
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    texture001.destroy();
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder002.clearBuffer(buffer002);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    command_encoder003.copyTextureToTexture(
        {
            texture: texture004
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.setStencilReference(1);
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0000.executeBundles([render_bundle_encoder000, ])
    render_pass_encoder0021.setStencilReference(1);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    compute_pass_encoder0020.setPipeline(compute_pipeline0010);
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    device00.pushErrorScope("internal");
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.popDebugGroup();
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    render_pass_encoder0010.endOcclusionQuery()
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0021.executeBundles([])
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_pass_encoder0021.executeBundles([])
    
    
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer002.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.popDebugGroup();
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    texture300.destroy();
    
    device30.queue.submit([]);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0021.executeBundles([])
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer001.destroy()
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query000.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
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
    texture004.destroy();
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0021.beginOcclusionQuery(0)
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0021.insertDebugMarker("marker");
    
    render_pass_encoder0020.setPipeline(render_pipeline001);
    texture003.destroy();
    device00.pushErrorScope("internal");
    render_pass_encoder0001.executeBundles([])
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0010.setPipeline(render_pipeline001);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setPipeline(render_pipeline001);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0030.setPipeline(render_pipeline003);
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0021.setPipeline(render_pipeline002);
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    device00.queue.submit([]);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setPipeline(render_pipeline002);
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    render_pass_encoder0031.endOcclusionQuery()
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    
    buffer008.destroy()
    
    render_pass_encoder0040.insertDebugMarker("marker");
    buffer005.destroy()
    render_pass_encoder0011.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer004.destroy()
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setPipeline(render_pipeline001);
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    render_pass_encoder0001.setPipeline(render_pipeline002);
    
    
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group004);
    render_pass_encoder0021.popDebugGroup();
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer004,
        0,
        400
    );
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder0040.setStencilReference(1);
    buffer0012.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setPipeline(render_pipeline001);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group006);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setVertexBuffer(0, buffer006);
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
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0031.insertDebugMarker("marker");
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    render_pass_encoder0040.setVertexBuffer(0, buffer0014);
    
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer0013.destroy()
    render_pass_encoder0011.setStencilReference(1);
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0040.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group007);
    buffer006.destroy()
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
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
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group008);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0011.beginOcclusionQuery(1)
    buffer0014.destroy()
    
    render_pass_encoder0030.setVertexBuffer(0, buffer0022);
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setStencilReference(1);
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
    
    
    command_encoder004.copyBufferToBuffer(
        buffer0019,
        0,
        buffer003,
        0,
        400
    );
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0016, 0, array4, 0, array4.length);
    render_bundle_encoder002.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    render_pass_encoder0031.insertDebugMarker("marker");
    buffer0015.destroy()
    
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0001.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0012.setPipeline(render_pipeline000);
    render_pass_encoder0001.setStencilReference(1);
    device00.pushErrorScope("internal");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder0031.setVertexBuffer(0, buffer005);
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.beginOcclusionQuery(2)
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group009);
    const compute_pass_encoder0021 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0021" });
    render_pass_encoder0031.insertDebugMarker("marker");
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0021.setPipeline(compute_pipeline0044);
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    
    compute_pass_encoder0040.setPipeline(compute_pipeline005);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.setVertexBuffer(0, buffer0013);
    render_pass_encoder0011.setVertexBuffer(0, buffer0015);
    render_pass_encoder0011.draw(3);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group0010);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0021.setVertexBuffer(0, buffer006);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0012.setBindGroup(0, bind_group0011);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0012);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0013);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0012.setVertexBuffer(0, buffer0020);
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0022, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0012.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer000);
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0020.draw(3);
    render_pass_encoder0001.end();
    compute_pass_encoder0021.dispatchWorkgroups(100);
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0011.end();
    render_pass_encoder0031.setIndexBuffer(buffer0031, "uint16");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0021.end();
    render_pass_encoder0020.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    command_encoder001.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group0014);
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0021.end();
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    const command_buffer002 = command_encoder002.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0011.end();
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([command_buffer001, ]);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0016);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer002, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0040, 0);
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0017);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0021.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0012.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0037, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0043, "uint16");
    compute_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0012.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    device20.queue.submit([]);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0018);
    device20.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0012.draw(3);
    render_pass_encoder0031.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0012.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0012.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0011.end();
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0051, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndirect(buffer0052, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    device30.queue.submit([]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0040.popDebugGroup()
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0020);
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer0039, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0020.popDebugGroup();
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0021);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0000.end();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0042, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.end();
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0022);
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.end();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0053, "uint16");
    compute_pass_encoder0021.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0057, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndirect(buffer0061, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndirect(buffer0052, 0);
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0030.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0012.drawIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0023);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0031.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder0012.end();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0044, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0021.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0024);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.end();
    compute_pass_encoder0021.end();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0025);
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    device20.queue.submit([]);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    device30.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0012.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndirect(buffer0066, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([]);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0056, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0057, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0001.drawIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    device20.queue.submit([]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.draw(3);
    device40.queue.submit([]);
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0026);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0012.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0061, 0);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0021.setBindGroup(0, bind_group0027);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0012.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder0000.end();
    device40.queue.submit([]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0028);
    render_pass_encoder0012.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0040.popDebugGroup();
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0029);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0077, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0001.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0030);
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0012.drawIndirect(buffer0050, 0);
    render_pass_encoder0001.drawIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0031);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0076, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0044, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    const uint32_0021 = new Uint32Array(3);

    uint32_0021[0] = 100;
    uint32_0021[1] = 1;
    uint32_0021[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0021, 0, uint32_0021.length);

    compute_pass_encoder0021.dispatchWorkgroupsIndirect(buffer0083, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
}