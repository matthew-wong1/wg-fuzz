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
    const array0 = new Float32Array([-0.75, -0.25, -0.75, -1.0, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.5, -0.75, -0.5, 0.25, 0.5, -1.0, -1.0, 0.75, 0.5, 0.25, 0.5, 0.5, -0.25, -1.0, -0.75, -0.25, -0.5, 0.5, 0.5, -1.0, -1.0, 0.25, -0.25, 0.25, -0.25, -0.25, 0.75, -0.5, 0.25, 0.0, -0.75, -0.25, 1.0, 0.0, 0.5, -0.75, 0.75, -0.75, 0.75, 0.5, -0.25, 0.0, -0.25, -1.0, 0.25, 1.0, -1.0, -0.75, 0.0, 1.0, 0.5, 0.25, -0.75, -0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.75, -1.0, -0.75, -0.5, -0.25, -0.25, -0.5, -0.75, 0.5, 0.0, -0.25, -1.0, -0.5, 0.5, 1.0, 0.0, 0.75, 0.0, -0.5, -0.75, 0.0, 0.75, -0.75, -1.0, 0.0, 0.75, 1.0, 0.0, 0.5, -0.75, 0.25, ]);
    
    
    
    
    const array1 = new Float32Array([1.0, -0.25, -0.5, -1.0, -1.0, 0.25, 0.5, 0.5, 0.5, 0.5, 0.25, 0.0, -0.25, -1.0, 1.0, 0.0, -0.75, 0.25, 0.0, -0.75, -0.75, 0.5, 0.75, 0.75, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, -0.5, -0.5, 0.5, -0.5, 0.0, 0.0, 0.25, -0.5, -0.5, -0.25, -0.25, 0.0, 0.75, 0.0, 0.25, 1.0, 0.5, -1.0, -1.0, 0.5, -0.75, 0.5, -0.25, 0.0, -0.5, 1.0, -0.25, -1.0, 1.0, -0.25, -1.0, 1.0, 0.5, -0.5, 0.25, 0.0, 0.0, 0.75, -0.75, 0.5, 0.25, 0.25, 0.75, 0.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.5, 0.25, -0.5, -1.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.25, 0.25, -0.25, 0.25, -0.75, 1.0, 0.5, 0.5, -0.25, 0.5, 0.75, 1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    device00.pushErrorScope("internal");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-0.25, 0.5, -1.0, -0.25, 0.75, -0.25, 0.0, -0.25, -0.5, -0.5, 0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 0.5, -0.5, -0.75, 1.0, 1.0, 0.0, -0.25, -0.25, -0.25, -0.25, 1.0, -1.0, 1.0, -0.25, 0.75, -1.0, -0.75, 0.25, 0.5, 0.25, -0.25, 0.75, -0.5, -0.5, -0.25, -0.5, 0.75, -0.5, 0.25, 0.5, 0.5, 0.5, 0.75, 0.0, 0.5, 0.5, 0.75, 0.5, 0.0, 1.0, -0.5, -1.0, -0.75, -0.75, 0.25, -0.75, 0.75, -1.0, 0.5, -1.0, 0.5, 0.5, 0.0, -0.5, 0.25, 0.5, -0.75, 0.25, 0.25, 0.0, 0.0, -0.75, -0.75, 0.0, 0.25, -0.5, 0.25, -0.25, 0.25, 1.0, 0.75, -0.25, 0.75, 1.0, -0.25, -1.0, 1.0, 0.25, 0.25, 0.5, 0.0, 0.25, 0.75, 0.5, ]);
    device00.pushErrorScope("validation");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.setPipeline(render_pipeline000);
    query002.destroy()
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
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
        occlusionQuerySet: query000
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("out-of-memory");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0001.setStencilReference(1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    
    query001.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array3 = new Float32Array([-0.25, -0.5, 0.25, 0.5, -0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -0.25, -0.25, 0.75, 1.0, -0.5, 0.0, 0.75, -0.75, 0.75, 0.5, 0.5, -0.75, -0.5, 1.0, 0.5, 1.0, 1.0, 0.0, -0.25, 0.5, 0.0, -0.75, 1.0, 0.25, 1.0, 0.75, -1.0, -0.25, -1.0, -0.75, 0.5, -0.5, 0.5, -0.75, 0.0, 1.0, 0.5, 1.0, 0.5, -0.5, 0.75, 0.5, 0.75, -0.5, -0.25, -0.75, -1.0, -1.0, 1.0, 0.0, 0.75, -0.5, 1.0, -0.25, 1.0, 0.0, 0.75, 0.75, 1.0, -0.25, 0.25, -0.5, 0.25, -0.5, 0.75, -1.0, 0.0, -0.25, 1.0, 1.0, 1.0, -0.25, -0.25, 0.0, 1.0, 0.25, 0.75, 0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 1.0, 0.5, 0.25, 0.75, -1.0, 0.75, -0.75, ]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setPipeline(render_pipeline001);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    device00.queue.submit([]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query003
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
        layout: render_pipeline000.getBindGroupLayout(0),
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
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array4 = new Float32Array([1.0, -0.5, -0.25, 0.0, 0.0, -1.0, -1.0, 0.75, 0.0, 0.0, 0.0, -0.25, -1.0, 0.5, -0.25, 1.0, 0.5, -0.25, -0.25, -0.25, -0.75, -1.0, -1.0, 1.0, -0.75, -0.5, -0.75, 0.75, 0.0, 0.5, -0.5, -0.5, -1.0, -0.25, 0.75, 0.25, -0.25, 1.0, -0.25, 1.0, 0.25, -1.0, -1.0, -0.25, 0.5, -1.0, -1.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -1.0, 0.5, 0.25, -0.25, -0.5, -0.5, 1.0, -0.25, 1.0, -0.75, -0.25, -0.25, -0.75, -1.0, -0.25, 1.0, 0.25, 0.5, -1.0, -0.75, -1.0, -0.25, 0.5, 1.0, 0.75, 0.5, -0.75, -1.0, -1.0, 1.0, 0.0, -0.75, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, -1.0, 1.0, -0.75, 0.25, 0.25, -0.5, 0.0, ]);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
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
    render_pass_encoder0010.setPipeline(render_pipeline002);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    texture001.destroy();
    render_pass_encoder0000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group001);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder200.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder0000.setVertexBuffer(0, buffer005);
    
    
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const array5 = new Float32Array([1.0, -0.75, 1.0, -0.25, -0.75, -1.0, 0.0, 0.0, 0.0, 0.5, 1.0, 0.25, 0.75, -0.5, 0.0, -1.0, 0.5, 0.75, 0.25, -1.0, 0.0, -0.5, 1.0, -0.75, 0.25, 1.0, -0.75, 0.0, 1.0, 0.75, 0.75, 0.0, 0.0, 0.25, -0.75, -1.0, -1.0, -0.5, -1.0, -1.0, 0.0, 1.0, 0.25, 1.0, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.0, -1.0, -1.0, -0.75, -0.25, 0.75, 0.5, -1.0, -0.75, 0.75, 0.5, 0.5, -0.75, 0.5, -1.0, -0.5, 0.25, -0.5, 0.0, 0.75, -0.75, 0.0, 0.5, -0.75, 1.0, -0.25, 1.0, 0.75, 0.5, -0.5, 1.0, -1.0, -0.25, 0.25, 0.5, 0.75, 0.5, -0.5, -0.75, -0.75, 0.75, 1.0, 0.5, -1.0, -0.25, 0.5, 0.0, -0.25, -1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    texture202.destroy();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setStencilReference(1);
    query004.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    compute_pass_encoder0000.popDebugGroup()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    render_pass_encoder0000.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    render_pass_encoder0001.popDebugGroup();
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder0011.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("out-of-memory");
    query004.destroy()
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    render_pass_encoder2000.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.popDebugGroup();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device30.pushErrorScope("validation");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    query301.destroy()
    
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder2000.executeBundles([])
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder0011.setPipeline(render_pipeline000);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    
    device00.pushErrorScope("out-of-memory");
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder0002.setPipeline(render_pipeline002);
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0001.setPipeline(compute_pipeline008);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder200.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder502.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout006,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("out-of-memory");
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.popDebugGroup();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0002.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.executeBundles([])
    const command_buffer502 = command_encoder502.finish();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    texture200.destroy();
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const array6 = new Float32Array([0.75, 0.0, -1.0, -0.25, -0.5, 0.75, -0.75, 1.0, 1.0, -0.5, -0.5, 0.5, 0.0, -0.25, 0.5, -0.75, -0.5, 0.0, -0.5, -1.0, 0.25, 0.0, -1.0, 0.5, 0.25, 1.0, 0.0, 1.0, 0.75, 0.0, 0.25, 0.25, 0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 1.0, -0.25, 0.0, 0.75, 0.5, -0.5, -1.0, -0.5, 0.5, -0.75, -1.0, 0.0, 0.75, -0.5, 0.25, -0.5, 0.5, 0.25, -0.25, -0.75, 0.5, 0.25, 0.75, 0.0, 0.0, -1.0, -0.75, -1.0, -0.25, 0.0, -0.75, -0.75, 0.75, 0.75, -0.25, -1.0, 0.5, -0.25, -0.5, -0.5, 0.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -1.0, 0.5, -1.0, -0.25, 0.25, -0.5, 0.25, 0.25, -1.0, 0.0, -0.25, 0.75, 1.0, -0.25, 0.0, ]);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout008,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout006,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    command_encoder302.insertDebugMarker("mymarker");
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout007,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_pass_encoder0010.popDebugGroup();
    command_encoder000.copyTextureToTexture(
        {
            texture: texture002
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
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder2011.setPipeline(render_pipeline202);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    
    query200.destroy()
    texture500.destroy();
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2010.setPipeline(render_pipeline204);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    command_encoder503.clearBuffer(buffer501);
    texture000.destroy();
    
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0002.popDebugGroup();
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const command_buffer500 = command_encoder500.finish();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setPipeline(render_pipeline204);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
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
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0011.setStencilReference(1);
    
    command_encoder501.insertDebugMarker("mymarker");
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    texture203.destroy();
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
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("validation");
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer006);
    render_pass_encoder2000.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.popDebugGroup();
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group003);
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    command_encoder300.popDebugGroup()
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder0000.endOcclusionQuery()
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0002.setBindGroup(0, bind_group005);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    device50.queue.submit([command_buffer502, ]);
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group006);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group007);
    render_pass_encoder2011.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0017, 0);
    render_pass_encoder0010.setVertexBuffer(0, buffer006);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0002.setVertexBuffer(0, buffer006);
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.setVertexBuffer(0, buffer001);
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder0002.draw(3);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    render_pass_encoder0000.end();
    render_pass_encoder0010.end();
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0002.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder2010.setVertexBuffer(0, buffer206);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group203);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0002.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2010.draw(3);
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder2000.end();
    render_pass_encoder0002.drawIndirect(buffer006, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    render_pass_encoder2020.draw(3);
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2000.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0002.drawIndirect(buffer004, 0);
    compute_pass_encoder0001.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, ]);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group204);
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.end();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer006, 0);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group008);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.end();
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.setVertexBuffer(0, buffer205);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    device00.queue.submit([]);
    device30.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0010.popDebugGroup();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.draw(3);
    device50.queue.submit([command_buffer502, ]);
    const command_buffer000 = command_encoder000.finish();
    device50.queue.submit([]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0002.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder2011.end();
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder0002.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0002.drawIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder0002.end();
    render_pass_encoder2011.end();
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.popDebugGroup();
    command_encoder201.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0020, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0020, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0012, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group009);
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0002.popDebugGroup();
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0010);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    device40.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.end();
    device60.queue.submit([]);
    compute_pass_encoder0001.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    device60.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0019, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2000.draw(3);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder0010.popDebugGroup();
    device40.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0002.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.drawIndirect(buffer008, 0);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0011);
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    device00.queue.submit([]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0002.end();
    device20.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    device50.queue.submit([]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder0002.end();
    render_pass_encoder2011.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0002.drawIndirect(buffer001, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer006, 0);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([]);
    render_pass_encoder2020.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder0001.popDebugGroup();
    device40.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0002.end();
    device30.queue.submit([command_buffer302, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0022, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0002.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer001, ]);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer007, 0);
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0002.drawIndirect(buffer0027, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder0001.popDebugGroup();
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.popDebugGroup();
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0013);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device50.queue.submit([command_buffer503, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device60.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0002.setIndexBuffer(buffer0018, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0001.popDebugGroup()
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0016);
    render_pass_encoder0002.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0002.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0021, "uint16");
    device50.queue.submit([command_buffer502, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    device50.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0017);
    compute_pass_encoder0001.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0002.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0002.end();
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    compute_pass_encoder0000.end();
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    device60.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([]);
    render_pass_encoder0002.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0002.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder0001.popDebugGroup();
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0018);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0019);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder0002.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2011.popDebugGroup();
    device60.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0020);
    compute_pass_encoder0001.dispatchWorkgroups(100);
}