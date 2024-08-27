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
    const array0 = new Float32Array([-0.5, -1.0, -0.75, 0.5, -0.75, 1.0, 0.25, 0.75, -0.5, 1.0, 1.0, -1.0, -0.25, 1.0, 0.25, 0.25, 0.75, -1.0, -1.0, -0.5, 1.0, 0.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.0, -0.75, 0.0, -1.0, 0.0, 1.0, 0.25, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, -0.5, 1.0, 1.0, 0.25, 0.5, 0.0, 1.0, 0.5, -1.0, -0.5, -1.0, -0.25, 0.75, -0.5, 1.0, -0.75, 0.75, -0.25, 0.75, -0.75, 0.25, -1.0, -0.25, 0.25, -0.75, -0.5, 1.0, -1.0, 0.5, 0.75, 0.75, 0.5, 0.25, 0.5, -0.75, 1.0, 0.0, -0.25, -0.25, -1.0, 0.5, -0.25, -0.75, -0.25, 0.25, -0.75, 0.25, -0.5, -0.25, -0.5, -1.0, -1.0, 0.75, 0.25, 0.25, -0.25, -0.5, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture000.destroy();
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.setPipeline(render_pipeline001);
    
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0010.executeBundles([])
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array1 = new Float32Array([0.75, 0.0, 0.0, 0.5, 0.75, -1.0, 0.5, -1.0, 0.0, 0.75, 0.5, 0.25, -0.75, 0.25, 1.0, 0.0, 0.75, -1.0, -1.0, 0.5, -0.25, 0.5, 0.25, 1.0, 0.5, 1.0, -0.5, -0.25, 0.75, -0.75, 0.25, -0.25, -0.5, 0.5, 0.25, 0.75, 0.25, 0.25, -1.0, 0.75, -0.25, -0.75, 1.0, -0.25, 0.5, 0.75, 0.5, -1.0, 1.0, 0.25, -0.25, -0.75, -0.25, -0.25, 0.5, 0.25, 0.75, -0.75, 0.0, 0.0, -0.75, 0.5, 0.0, 0.75, 0.75, 1.0, 0.0, -0.5, 1.0, 0.25, -0.5, 0.5, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 1.0, 0.75, -0.5, 0.75, -0.5, 0.25, 0.5, 0.75, 0.5, -0.5, 0.0, -0.5, -0.25, -0.5, 0.25, -0.5, -0.25, 0.0, 0.25, 0.25, -0.5, 0.75, ]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.destroy();
    const array2 = new Float32Array([-0.5, 0.5, 0.5, -1.0, -0.25, 0.5, -1.0, 0.0, 1.0, 0.25, -0.25, -0.25, -0.75, 0.75, 0.0, -0.5, 0.0, 0.75, -1.0, 0.75, 0.0, 0.0, 0.75, 0.25, 0.25, 0.75, -0.5, 1.0, 1.0, -0.25, 0.5, 0.5, 0.25, 0.75, 1.0, -0.25, -0.25, 0.25, 1.0, -0.5, -1.0, 1.0, -1.0, -0.75, 0.25, 0.25, -0.5, 0.5, -0.75, -0.25, 0.25, -1.0, -0.25, 0.5, -0.5, -0.25, 0.25, -0.25, -1.0, -0.75, 0.25, 0.0, -0.75, 0.0, -0.5, -1.0, 0.25, 0.0, 0.5, 0.25, 0.5, -0.75, 0.75, 1.0, 0.75, 0.0, -0.75, -1.0, 0.0, 1.0, -0.75, 0.5, 0.0, -0.25, 0.25, 0.0, 1.0, -0.5, -0.5, -0.75, -1.0, 0.5, 0.75, -0.25, -0.25, 0.75, -0.5, 1.0, 0.75, -1.0, ]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const command_buffer000 = command_encoder000.finish();
    device00.pushErrorScope("out-of-memory");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer001.destroy()
    texture002.destroy();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    texture002.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_bundle_encoder000.popDebugGroup();
    
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    texture003.destroy();
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.popDebugGroup();
    texture003.destroy();
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0000.setStencilReference(1);
    buffer000.destroy()
    render_pass_encoder0010.pushDebugGroup("group_marker");
    buffer000.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    buffer003.destroy()
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    buffer002.destroy()
    render_pass_encoder0000.setStencilReference(1);
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    
    query000.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const array3 = new Float32Array([-0.75, 0.5, 1.0, 0.25, -0.25, 0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -0.25, 0.0, 0.75, -0.75, 0.0, -0.5, 0.0, 0.0, 0.75, -0.5, -0.5, -0.75, 1.0, 0.75, 0.75, -0.75, -0.5, 0.5, -1.0, 1.0, -0.5, 0.75, -0.5, -1.0, 1.0, 0.5, 0.0, 0.5, -1.0, 0.0, 0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 0.75, -0.25, 0.75, -0.5, -0.25, -0.25, 1.0, -1.0, -0.25, 0.75, -1.0, 1.0, -0.75, 0.25, 0.75, -0.5, -0.75, -0.75, -0.25, 0.5, 1.0, -0.75, -0.25, 0.75, -0.5, 1.0, -1.0, -0.25, 0.0, 0.75, -1.0, 1.0, -0.75, 0.75, 0.0, -1.0, -0.25, 0.5, 0.0, 0.0, 0.75, -0.5, 1.0, 0.5, -0.5, -0.25, 1.0, 0.5, -0.75, -1.0, 1.0, -0.25, -0.5, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
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
    render_pass_encoder0000.pushDebugGroup("group_marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    buffer000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    render_bundle_encoder002.popDebugGroup();
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group005);
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array4 = new Float32Array([0.0, -0.75, -0.75, -0.25, -0.75, -0.5, -1.0, 0.25, -0.25, 0.0, 0.5, -0.25, -0.5, -0.25, -0.75, -0.25, -0.25, 1.0, 1.0, -0.5, 0.75, 0.0, -0.75, 1.0, -0.25, 1.0, 0.0, 0.25, 1.0, 0.25, 0.5, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, -0.5, 1.0, -1.0, 1.0, 0.5, -1.0, 0.5, -0.5, -0.75, 0.25, -0.5, 0.25, 0.25, -0.75, -1.0, -0.5, -0.75, -0.5, -0.75, 0.0, -0.5, -1.0, 0.75, -0.75, 0.25, 0.25, -1.0, -0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 0.25, 1.0, -0.5, 0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, -0.25, -1.0, 0.25, -1.0, -0.75, 0.0, 0.5, 0.0, 0.75, -0.25, 1.0, -0.75, -1.0, -0.75, -0.75, 0.25, 1.0, 0.75, 1.0, 1.0, ]);
    
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.executeBundles([])
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const array5 = new Float32Array([0.25, 0.5, 0.0, -0.5, -0.25, 0.75, -1.0, -1.0, -1.0, -0.75, -0.75, -0.75, 0.0, -0.25, 0.0, 0.75, -0.75, 0.0, 0.0, -1.0, -1.0, -0.5, 0.75, 0.0, 0.5, 0.0, 0.25, 0.75, -0.25, -0.25, 0.0, 0.75, 0.5, 1.0, -0.5, 1.0, -1.0, 1.0, 0.75, -0.25, 1.0, -0.75, -1.0, 0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.75, 0.25, 0.0, 0.5, 0.5, -1.0, -1.0, -1.0, -0.75, -0.25, -0.5, -0.5, 0.25, 0.0, 0.0, 0.0, 0.25, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, 0.0, 1.0, 0.5, 1.0, 0.5, 1.0, 1.0, 0.0, 0.75, 0.75, 1.0, -0.25, -0.75, -1.0, 0.25, -1.0, -1.0, 0.5, 0.25, 0.0, -0.75, 1.0, 0.25, -0.25, -0.75, -0.5, -0.75, -0.25, ]);
    texture002.destroy();
    render_bundle_encoder000.setIndexBuffer(buffer005, "uint16");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder001.setVertexBuffer(0, buffer009);
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0011.setPipeline(render_pipeline004);
    render_bundle_encoder002.setVertexBuffer(0, buffer0012);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0013, 0);
    buffer0013.destroy()
    
    render_bundle_encoder000.drawIndirect(buffer0013, 0);
    render_bundle_encoder000.setIndexBuffer(buffer007, "uint16");
    buffer009.destroy()
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    
    render_pass_encoder0000.draw(3);
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    query001.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0014,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline003);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setVertexBuffer(0, buffer0012);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_bundle_encoder002.draw(3);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    {
        await buffer0011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0011.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder002.drawIndirect(buffer0013, 0);
    device00.destroy();
    
    
    
    
    
    device10.destroy();
    query100.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array6 = new Float32Array([0.75, 0.25, 0.0, -1.0, -0.5, -1.0, -0.75, 0.75, -0.75, 0.75, 0.75, -0.5, 0.25, -1.0, -1.0, 0.5, -0.25, -0.75, -0.25, 0.25, -0.5, 1.0, 0.0, 0.5, 0.0, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, 0.25, 1.0, 0.0, 0.0, 0.5, -1.0, 0.5, 1.0, -0.75, 0.25, -0.75, 0.0, 0.75, -0.75, -0.75, 0.5, -0.25, 0.75, 0.0, 0.0, -0.25, -0.5, -0.5, 0.5, 1.0, 0.25, 0.0, -0.25, -0.25, -0.25, -0.25, 0.5, -0.25, -0.25, -0.5, 0.5, 0.25, 0.5, -0.75, -0.75, -0.5, 0.0, 0.25, -0.75, 0.25, -0.25, 0.0, 0.75, 0.5, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, -0.5, 0.5, 0.75, 1.0, 0.75, 1.0, -0.5, -0.75, 0.0, 1.0, -0.5, 0.0, -0.25, -0.25, ]);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer008.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0010.setStencilReference(1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    device30.pushErrorScope("internal");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const command_buffer300 = command_encoder300.finish();
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_bundle_encoder300.popDebugGroup();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array7 = new Float32Array([-1.0, 0.5, 0.25, 0.5, 0.5, -0.75, -0.25, 0.75, -0.5, 0.5, 0.5, 1.0, 0.0, 0.5, -0.25, -1.0, 1.0, 0.5, 0.5, 0.0, 0.5, 1.0, 0.0, -0.25, -0.5, -0.75, -1.0, 0.75, -1.0, 0.75, -0.25, 1.0, -0.5, 0.0, -0.25, -0.25, -0.25, -0.75, 1.0, -1.0, 0.25, 0.75, 0.5, -1.0, 0.25, 0.75, -0.75, 0.5, 1.0, 0.5, -0.25, 0.25, 0.25, -0.25, 0.0, 0.0, 0.75, 0.5, 1.0, -0.5, 0.25, 0.5, 0.75, -0.5, 0.75, 0.75, 1.0, 1.0, 0.25, 0.5, -1.0, -0.5, -0.25, -0.5, -0.75, 0.75, -0.5, 0.25, 0.5, 1.0, 0.5, 0.5, 0.5, 0.0, -0.25, -0.75, 1.0, 1.0, -0.75, -0.25, -0.25, 1.0, -0.25, 0.0, 0.5, -1.0, -0.75, 0.0, -0.25, -0.5, ]);
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    texture200.destroy();
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const array8 = new Float32Array([-0.75, 1.0, -1.0, 0.75, -0.25, -1.0, 0.25, 0.75, 0.0, -0.5, -1.0, 0.25, 0.75, 0.75, 0.75, 0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.25, -0.25, 0.0, -0.5, -0.5, -0.25, 0.5, -0.5, 0.75, 0.75, 0.75, 0.75, -0.75, -0.75, 1.0, 0.25, -0.25, -0.5, -0.25, 0.5, 0.0, 0.5, 1.0, -0.5, 0.5, 0.0, 0.75, -0.75, -0.25, -0.5, -0.25, -0.75, -0.25, -0.75, -1.0, 0.25, 0.75, 0.0, -0.5, 1.0, -0.5, -0.5, -1.0, 0.5, -0.75, -0.5, -0.75, -0.75, 0.5, -1.0, -1.0, 0.5, -1.0, -1.0, 0.25, 0.5, -0.5, 1.0, -0.25, 0.0, 0.0, -1.0, -0.75, -0.25, -1.0, -0.75, -0.25, -0.5, 0.0, 0.75, -0.25, -0.5, -1.0, 0.5, -0.75, -0.75, -0.25, -0.75, 0.75, ]);
    query301.destroy()
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    const array9 = new Float32Array([-0.5, 1.0, -0.75, -1.0, 0.75, -1.0, 0.75, 0.75, 0.25, 0.25, 0.75, 0.75, 1.0, 1.0, -0.25, -0.25, -1.0, 0.25, -0.5, 0.5, -0.25, 0.5, 0.75, 0.0, -0.5, 0.75, -0.25, 0.5, -0.75, -0.25, 0.25, -0.5, -0.75, 0.5, -0.75, -0.25, 0.0, -0.5, 0.25, -0.5, 0.25, 0.5, 0.25, -0.75, -0.75, 0.75, 0.0, 0.25, -1.0, 0.75, 0.0, -0.75, -0.75, 0.25, 0.0, -0.25, 0.25, -0.75, -0.75, 0.25, -0.75, -0.25, 0.0, -0.25, 0.75, 0.0, 1.0, 0.25, -0.5, 0.5, -0.75, 0.75, 0.25, 0.25, -0.5, -0.25, 0.25, 0.25, 0.0, 0.0, -1.0, -1.0, -0.25, 0.75, -0.5, -0.25, 1.0, -0.25, -0.5, -0.75, -0.25, 1.0, -0.75, 0.0, 0.5, 0.25, 0.5, 0.5, -0.75, 0.5, ]);
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_pass_encoder0000.setStencilReference(1);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    query201.destroy()
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3010.executeBundles([])
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.executeBundles([])
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query201
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder3011.executeBundles([render_bundle_encoder301, ])
    render_pass_encoder2001.setPipeline(render_pipeline200);
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder0011.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder001.drawIndirect(buffer0012, 0);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.executeBundles([])
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder302.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture301.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2000.insertDebugMarker("marker");
    texture300.destroy();
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array10 = new Float32Array([-0.25, 0.0, 0.5, 0.75, 0.0, 0.75, -0.75, -0.5, 0.75, 0.25, 0.25, 1.0, -1.0, -0.5, 0.75, 0.25, 0.25, 0.75, 0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 0.5, -0.75, -1.0, -0.25, 0.75, 0.25, -0.75, 1.0, 1.0, 0.0, 0.0, -0.5, 1.0, -0.75, 0.25, 1.0, 1.0, -0.75, 0.0, -0.5, 0.75, 0.25, 1.0, 0.25, -1.0, -0.5, 1.0, -0.5, 0.0, 0.5, -1.0, 0.75, 1.0, 1.0, -0.5, 0.5, 0.75, 0.75, 0.25, 0.0, -1.0, 1.0, -0.75, 0.25, -0.25, 0.5, 0.25, -0.5, -0.25, 0.5, 0.5, 0.25, 0.25, 0.75, 0.5, 0.75, -1.0, 0.25, 0.25, -0.5, -0.5, -1.0, -0.5, 0.75, 0.0, -0.25, 0.0, -0.5, 0.75, 0.25, 0.75, 0.25, 0.75, 0.0, -0.75, 0.75, ]);
    render_pass_encoder3010.insertDebugMarker("marker");
    
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const array11 = new Float32Array([0.5, 0.25, 1.0, -1.0, 1.0, -1.0, -1.0, 0.5, 0.75, -0.25, -0.5, 0.75, -0.75, 0.75, -0.25, -0.75, 0.0, -0.5, 1.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.25, -0.5, 0.75, -1.0, 0.25, -0.5, -0.5, 0.75, 1.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.75, 1.0, -0.75, 0.75, -0.25, -0.25, 0.75, -0.5, 0.25, 0.5, -0.5, -0.5, 0.75, 0.25, -1.0, 0.0, -0.5, 0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.75, -0.5, 0.75, 0.5, -1.0, -0.5, 0.75, 0.25, 1.0, 0.5, -0.5, -0.75, -1.0, 1.0, 0.25, -0.25, -0.5, 0.75, -1.0, -0.25, -1.0, -0.75, 1.0, 0.75, -1.0, -0.5, -0.75, 0.25, -0.25, -0.25, -0.25, 0.25, -0.5, 1.0, 0.0, ]);
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2000.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    query202.destroy()
    render_pass_encoder2000.executeBundles([])
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2010.setStencilReference(1);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.executeBundles([])
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder2000.setPipeline(render_pipeline201);
    render_pass_encoder2000.endOcclusionQuery()
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    render_pass_encoder2001.pushDebugGroup("group_marker");
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder2011.setPipeline(render_pipeline201);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group201);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group202);
    render_pass_encoder2010.setVertexBuffer(0, buffer204);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder3010.popDebugGroup();
    command_encoder201.popDebugGroup()
    render_pass_encoder2011.setVertexBuffer(0, buffer205);
    compute_pass_encoder0010.end();
    command_encoder301.popDebugGroup()
    render_pass_encoder2010.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2000.setVertexBuffer(0, buffer207);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2011.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.draw(3);
    const command_buffer201 = command_encoder201.finish();
    device30.queue.submit([]);
    render_pass_encoder2001.setVertexBuffer(0, buffer203);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2001.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3011.popDebugGroup();
}