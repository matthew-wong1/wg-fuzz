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
    
    
    
    
    const array0 = new Float32Array([0.25, -0.25, 0.0, 0.0, -0.75, -0.25, 0.75, -0.25, 0.25, 0.5, -0.25, 1.0, 0.0, 1.0, 0.75, -0.75, -0.25, 0.25, 0.0, -1.0, -0.5, -0.75, -0.75, -0.75, -0.75, 0.0, -0.75, 0.25, -0.5, 1.0, 0.25, 0.75, 0.0, -1.0, -0.75, -1.0, -1.0, 0.0, -1.0, 0.75, 1.0, -1.0, -0.75, -1.0, -0.5, 0.5, 0.25, -0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.5, -0.25, -0.75, -0.5, 0.25, 0.75, 0.5, -0.75, -0.75, -1.0, 0.25, 0.5, -0.25, 0.75, 0.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.0, -0.75, 1.0, -0.5, 0.75, 0.75, 0.25, -0.5, -0.5, -1.0, -1.0, 1.0, 0.25, 1.0, 0.75, -0.5, -0.75, -1.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.75, -0.75, 0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.destroy();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array1 = new Float32Array([-0.5, 0.5, -1.0, 0.25, -1.0, 0.0, -0.75, -0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 0.75, 0.0, 0.75, 1.0, -1.0, 0.5, 0.0, -1.0, 0.5, 0.25, 1.0, -0.5, -1.0, -1.0, 0.5, 0.5, -0.25, -0.25, 1.0, 0.0, 1.0, 0.75, -0.25, -0.5, -0.25, -0.25, 0.25, 0.0, -0.5, 0.0, 0.5, -1.0, 0.75, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, 0.75, -1.0, 0.25, 0.25, -0.25, -0.5, -0.75, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, 0.75, 0.0, -1.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.5, -0.5, -0.75, -0.25, 0.25, 1.0, -0.5, -1.0, 0.0, 0.75, 1.0, -0.75, -0.75, 1.0, -0.75, 0.75, -0.5, -1.0, -0.5, 0.5, -0.75, -0.75, -0.5, 0.75, -1.0, 0.5, -0.75, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([-0.5, -0.25, 1.0, -0.25, 0.0, -0.5, -0.5, 0.0, 1.0, 1.0, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, -0.75, 1.0, 0.25, -1.0, -1.0, 0.5, 0.0, 0.0, -0.5, -0.75, -1.0, -0.5, 0.25, -0.5, 0.75, 1.0, -1.0, 0.75, -0.25, 0.75, -0.25, 1.0, 0.25, 0.25, -1.0, 0.5, 0.0, -1.0, -0.5, 0.0, 1.0, 0.25, -0.75, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, 0.25, 0.0, 1.0, 0.0, 0.5, -0.25, 1.0, -1.0, -0.5, 0.5, 0.0, 1.0, -0.25, 0.75, 1.0, -0.75, -0.5, 0.75, 0.0, 0.25, -0.25, -0.5, -0.5, -1.0, -0.5, -1.0, 0.0, 0.75, 0.75, -1.0, 0.0, 0.75, 0.25, -1.0, -0.5, 1.0, 0.5, -0.75, 0.5, 0.5, 1.0, 0.5, -0.25, 0.0, 1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    texture101.destroy();
    device10.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array3 = new Float32Array([-0.75, 1.0, 0.5, 0.75, 0.0, 0.75, 0.25, 0.5, -0.75, 1.0, -1.0, -0.5, -1.0, 0.75, 1.0, -0.75, -1.0, -0.25, -0.5, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.0, 1.0, -0.5, -0.75, 0.25, -0.25, -1.0, 0.5, -0.75, 0.75, 0.5, 0.5, 0.75, 0.5, 1.0, 0.75, 0.5, 0.0, 0.5, -1.0, 1.0, -1.0, -0.25, -0.5, 0.25, 0.0, -0.5, 1.0, -0.5, 1.0, 0.5, 0.0, -0.25, 0.5, 0.75, -0.5, -0.75, -1.0, -1.0, 0.5, 0.5, 0.0, 0.5, 0.5, 0.75, 0.0, 0.25, -0.75, 1.0, 0.0, -0.5, -0.75, -0.75, 0.75, -0.5, -0.75, -1.0, 0.5, -0.75, -1.0, 0.5, -0.5, -0.25, 1.0, 0.0, -0.5, 0.0, -1.0, 1.0, 0.0, 0.75, -0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer000.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder001.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    texture000.destroy();
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    render_pass_encoder0010.setStencilReference(1);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder000.insertDebugMarker("mymarker");
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
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer001.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    query101.destroy()
    query000.destroy()
    const command_buffer001 = command_encoder001.finish();
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    device20.destroy();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.pushErrorScope("internal");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture002.destroy();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder0000.executeBundles([])
    
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array4 = new Float32Array([-0.75, 0.0, -0.5, -0.75, -0.5, 0.25, 0.0, 0.25, 0.75, 1.0, -0.25, -1.0, -1.0, 0.0, -1.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.0, -0.25, -0.25, 0.0, -0.5, -0.25, -0.75, -0.25, -1.0, -1.0, 0.25, 0.25, 1.0, 0.0, 1.0, 0.5, -0.5, -0.25, 1.0, 1.0, 0.5, 0.5, -1.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 1.0, -0.25, -1.0, -0.25, 0.5, -0.5, -0.75, -0.5, -0.75, -0.25, 0.25, -1.0, -0.5, 0.25, -0.25, -0.75, -0.25, 0.75, -1.0, 0.25, 1.0, -0.5, 0.75, -0.25, -0.5, 0.5, 0.5, -0.5, 0.5, -0.25, 0.25, 0.75, 0.75, 1.0, 0.5, 0.5, -0.5, 0.75, 0.5, 0.75, -0.25, -0.5, -1.0, 0.75, -0.5, -0.25, 1.0, 0.0, -0.75, ]);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    buffer002.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const array5 = new Float32Array([0.75, 0.5, -0.25, -1.0, 0.0, -0.5, 0.25, 0.25, 0.0, 0.0, -0.5, 0.75, 0.0, 1.0, 0.5, 1.0, 0.75, 0.5, -0.25, 0.75, 0.25, -1.0, -0.25, -1.0, 0.0, 1.0, 0.5, -1.0, 0.25, 0.5, 0.25, -1.0, 0.5, 0.5, 0.25, 0.75, 0.25, -1.0, 1.0, 1.0, -1.0, 0.5, -0.75, -1.0, -1.0, 0.25, 0.0, -0.25, 0.25, -0.5, -0.75, 0.0, 0.5, -0.75, 0.0, 0.0, 0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 0.5, 0.25, 0.0, 0.0, -1.0, 0.5, -0.5, 0.75, 0.5, 0.25, -1.0, -0.5, 0.25, 0.75, -1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 1.0, -0.75, -0.75, 0.0, -0.5, 0.25, -0.5, -1.0, 0.25, 0.0, -1.0, -1.0, 0.75, 0.75, 0.0, 0.25, 0.5, 0.25, ]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    compute_pass_encoder0000.popDebugGroup()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    buffer003.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array6 = new Float32Array([-0.5, 0.0, -0.25, -1.0, -0.5, 0.5, -0.5, -1.0, -1.0, 0.75, -0.75, 0.5, 0.25, 1.0, -0.5, 0.5, 0.25, 1.0, 0.25, 0.25, -0.5, 0.5, 0.75, -0.25, 0.0, -0.75, 0.25, 0.0, 0.25, 1.0, -1.0, 1.0, 0.75, 0.5, 0.75, 0.0, -0.75, 0.25, -1.0, -1.0, -0.25, 0.0, 0.5, -0.25, 1.0, 0.25, -0.75, -1.0, 0.0, -1.0, 1.0, 0.75, -0.25, 0.25, 1.0, 0.25, 0.5, 0.75, 0.25, 0.0, -1.0, 0.25, 0.75, -0.25, -0.75, 0.5, -0.75, 0.5, -1.0, 0.75, 0.25, 0.0, 0.5, 0.25, 0.75, 1.0, 0.75, -0.5, -0.75, -0.75, -1.0, 0.5, 0.25, 0.5, -1.0, 0.75, 0.5, 0.0, 0.5, 0.75, -0.5, -0.5, 0.75, -0.5, 1.0, -0.75, -0.25, 0.75, -0.5, 0.0, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0010.setStencilReference(1);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setVertexBuffer(0, buffer001);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    render_pass_encoder0020.executeBundles([])
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    command_encoder300.insertDebugMarker("mymarker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.draw(3);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    
    
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder001.setVertexBuffer(0, buffer005);
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    device40.pushErrorScope("internal");
    render_bundle_encoder000.popDebugGroup();
    query001.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder0030.setPipeline(render_pipeline001);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
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
    device00.queue.submit([command_buffer001, ]);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.popDebugGroup();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    render_pass_encoder0010.setStencilReference(1);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.clearBuffer(buffer002);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    buffer0011.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    texture003.destroy();
    render_pass_encoder0010.end();
    
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const command_buffer301 = command_encoder301.finish();
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    texture005.destroy();
    render_pass_encoder0001.setStencilReference(1);
    render_bundle_encoder002.setPipeline(render_pipeline003);
    command_encoder302.insertDebugMarker("mymarker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder0020.executeBundles([])
    query500.destroy()
    
    query002.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    render_pass_encoder0020.setPipeline(render_pipeline002);
    query401.destroy()
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_pass_encoder0000.setStencilReference(1);
    device00.pushErrorScope("internal");
    
    const array7 = new Float32Array([0.25, 0.5, 0.75, 0.25, 0.5, -1.0, -0.75, -0.25, 1.0, -0.5, -1.0, -0.75, -0.5, -0.75, 0.0, 0.0, 0.25, -0.75, 0.0, -0.75, -0.25, 1.0, 1.0, -0.25, 0.0, -1.0, 0.5, 0.5, -0.5, -0.75, 0.5, 0.25, 0.0, -0.5, -0.5, 0.75, 0.5, -0.75, 0.75, 0.5, -0.25, -0.25, 0.75, -0.75, 0.75, 0.75, 0.75, -0.75, 0.75, 0.75, -0.25, 0.25, -0.25, -0.75, -0.5, 1.0, -0.75, -0.5, 1.0, 0.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.25, -0.25, 1.0, 0.25, 0.75, -0.75, -0.5, -0.75, -0.25, -0.5, 0.75, -1.0, 0.0, 0.0, 0.0, 0.25, -0.25, 0.0, -0.25, 1.0, -1.0, 0.5, 0.5, 0.0, 1.0, -0.5, 1.0, -0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 1.0, 0.75, ]);
    device50.queue.submit([]);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder3000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    texture500.destroy();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0013, 0);
    command_encoder003.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0013, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
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
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    
    buffer300.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder001.drawIndirect(buffer008, 0);
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0013, 0, array7, 0, array7.length);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query402.destroy()
    render_pass_encoder0020.setVertexBuffer(0, buffer008);
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
    device50.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    query301.destroy()
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer008.destroy()
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    
    render_pass_encoder0001.setPipeline(render_pipeline002);
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder003.setPipeline(render_pipeline001);
    compute_pass_encoder0020.setPipeline(compute_pipeline0015);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0031.setPipeline(render_pipeline005);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    query401.destroy()
    query401.destroy()
    
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group005);
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer006.destroy()
    render_bundle_encoder001.finish();
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder003.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0021.setPipeline(render_pipeline000);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer300.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query302.destroy()
    
    render_pass_encoder0021.endOcclusionQuery()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    {
        await buffer0016.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0016.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0016.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
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
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group006);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0013, 0, array7, 0, array7.length);
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    query500.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query300.destroy()
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group007);
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group008);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    command_encoder000.clearBuffer(buffer008);
    render_pass_encoder0030.setStencilReference(1);
    texture001.destroy();
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    
    
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    query300.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer006);
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder3020.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group009);
    render_pass_encoder0001.endOcclusionQuery()
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder0021.setVertexBuffer(0, buffer006);
    render_pass_encoder0001.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.setVertexBuffer(0, buffer0028);
    device40.queue.submit([]);
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder0000.setVertexBuffer(0, buffer0011);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer306, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.end();
    render_pass_encoder0021.popDebugGroup();
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder3000.end();
    command_encoder300.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder0000.end();
    compute_pass_encoder3020.end();
    compute_pass_encoder0020.end();
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder0020.end();
    command_encoder002.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0031.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0021.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3011, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.end();
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0031.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3014, 0);
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    device30.queue.submit([command_buffer301, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0032, 0);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline0015.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0011);
    render_pass_encoder0001.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0012);
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    device40.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    device30.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0001.end();
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.end();
    device50.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3015, 0);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder3020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    compute_pass_encoder0020.end();
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer001, ]);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group304);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0020.end();
    device30.queue.submit([command_buffer300, ]);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    device30.queue.submit([]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    compute_pass_encoder3020.end();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    device40.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    device50.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0000.setIndexBuffer(buffer0035, "uint16");
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    render_pass_encoder0001.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.end();
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0021.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0010.end();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0047, "uint16");
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group306);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.end();
    device40.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0048, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.draw(3);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0017);
    render_pass_encoder0001.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0045, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3023, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    render_pass_encoder0031.end();
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group307);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0043, "uint16");
    compute_pass_encoder3020.end();
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0049, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    compute_pass_encoder3020.end();
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0030, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group308);
    device40.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    device40.queue.submit([]);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    device50.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0031.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3028, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3028, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndirect(buffer0049, 0);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.end();
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
}