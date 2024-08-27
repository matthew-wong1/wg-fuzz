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
    
    
    const array0 = new Float32Array([0.0, -0.25, 0.0, -1.0, 0.5, 1.0, -1.0, 0.5, -0.25, -1.0, 0.75, -0.25, -1.0, 0.5, 0.5, 0.5, 1.0, 1.0, 0.0, 0.0, 0.25, -0.75, -0.75, 0.0, 0.25, -0.75, -0.25, -0.5, 0.5, -0.25, 0.5, 0.75, 0.25, 0.5, 0.0, 1.0, 0.75, 0.25, 0.5, 0.75, 1.0, -1.0, 0.25, 0.0, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, -0.25, 0.75, -0.25, -0.5, -0.75, -1.0, 0.5, -1.0, -0.25, 0.25, 0.75, 1.0, -0.75, -0.75, 0.0, -0.25, 0.25, 0.0, 0.75, 0.25, 1.0, -0.25, 1.0, -0.75, -1.0, -0.5, -0.5, -0.25, 0.25, 0.5, -0.75, -1.0, 1.0, 0.5, 1.0, 0.75, 0.75, 1.0, -0.75, 0.0, 0.5, 0.75, -0.25, 0.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.75, ]);
    
    const array1 = new Float32Array([-0.5, 1.0, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, -0.5, -0.25, -0.25, 0.75, -0.25, 1.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.0, 0.75, 0.75, 0.25, 0.0, -0.5, 0.5, -0.75, 0.0, -1.0, 1.0, -1.0, -1.0, 0.25, 0.5, -0.5, -1.0, 0.0, 0.75, 0.0, -0.25, 0.5, 0.0, 0.75, 1.0, 0.5, 0.0, 0.0, -0.25, -0.25, 0.5, -0.5, -0.25, -0.75, 0.5, 1.0, 0.25, -0.25, -0.5, -0.25, 0.75, -0.5, -1.0, 0.0, 0.0, -1.0, -0.75, -0.5, 0.5, 0.25, 0.5, -0.5, -0.25, 1.0, 0.25, 0.5, -0.5, 0.5, -0.75, -1.0, 0.0, 1.0, 0.0, -0.5, 0.5, -1.0, 0.25, -0.5, 0.0, 1.0, 0.25, -1.0, 0.0, -0.5, -1.0, -0.75, -0.25, 0.0, 0.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    buffer001.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
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
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    
    buffer000.destroy()
    
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
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array2 = new Float32Array([0.5, -1.0, -1.0, -1.0, -1.0, -0.75, 1.0, 1.0, 0.75, 1.0, 0.0, -0.5, 1.0, -0.25, -0.75, 0.5, 0.25, 0.5, 0.5, -0.25, 0.25, -0.5, 0.5, 1.0, 0.5, -0.75, 0.25, 0.25, 1.0, -1.0, -0.25, -0.5, -0.25, -0.75, 0.0, -1.0, 0.75, -0.25, 1.0, -0.25, 0.25, -0.25, -1.0, -1.0, 0.25, -0.25, -0.25, 0.75, 0.5, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, -0.75, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, 0.75, -0.75, 0.75, 1.0, 0.75, -0.75, -0.25, 0.0, -0.25, 0.75, 0.0, -0.25, 0.25, -0.25, 0.25, 0.75, -1.0, 1.0, -0.75, 0.5, -1.0, -0.5, 0.5, -0.5, 0.0, -0.5, -0.75, 0.0, -0.25, -1.0, -1.0, 0.0, -0.25, -0.75, 0.25, -0.5, 0.75, 1.0, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const array3 = new Float32Array([-0.75, 0.0, -0.25, -0.25, 0.75, 0.5, 1.0, 1.0, -0.75, 0.5, -0.5, 0.5, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, 0.25, 1.0, 0.5, 0.5, 1.0, 0.5, 1.0, 0.0, 0.75, 0.75, 0.5, -0.5, -0.75, -1.0, -0.5, 0.5, -0.75, 1.0, 0.75, -0.25, 1.0, 1.0, 0.5, 0.0, -0.5, 0.0, 0.25, -0.25, 0.5, 1.0, -1.0, 0.25, 0.5, 1.0, 0.25, 0.25, -0.75, 0.25, 0.0, 1.0, 0.25, 1.0, -1.0, -1.0, -0.25, -1.0, -1.0, -0.75, 0.0, 0.75, -0.5, 0.75, 0.75, -0.75, -0.25, 0.5, 1.0, 0.5, -0.75, -0.5, 0.5, -1.0, 0.25, 0.0, 1.0, 0.25, -0.25, 0.0, 0.75, -0.5, 1.0, -0.5, 1.0, 1.0, -1.0, -0.5, -1.0, -0.25, -0.75, 0.0, 0.75, 0.75, ]);
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device10.pushErrorScope("validation");
    const command_buffer001 = command_encoder001.finish();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
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
        occlusionQuerySet: query000
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0000.popDebugGroup();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setPipeline(render_pipeline001);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const query002 = device00.createQuerySet({
        label: "query002",
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
    
    render_bundle_encoder001.popDebugGroup();
    buffer001.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    render_pass_encoder0021.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
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
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query001.destroy()
    
    const array4 = new Float32Array([1.0, 0.5, 0.75, -0.75, 0.5, 0.75, 0.75, 0.75, 0.5, 0.25, -0.25, 0.75, 0.25, 0.5, -0.25, 1.0, 0.25, 0.75, 0.75, 0.0, 0.25, -1.0, -0.5, 0.0, -0.75, 0.75, -0.5, 0.25, -0.5, -1.0, 0.25, 0.0, 0.5, -0.5, 0.75, -1.0, -0.5, -0.5, 0.5, 0.25, 0.0, 0.25, 0.5, 0.75, -0.75, 0.5, 0.25, 0.5, 0.25, 0.0, -0.5, -1.0, 1.0, -0.5, 1.0, 0.5, -0.75, -0.5, 0.75, -0.5, 0.5, 0.25, -0.5, 0.25, -1.0, 1.0, 0.75, -0.75, -1.0, 1.0, 0.5, -1.0, -0.5, 0.5, -0.25, -0.75, 0.0, -0.75, 1.0, 0.0, -1.0, 0.75, 0.75, -1.0, 0.5, -1.0, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, 0.75, -0.75, -0.75, 0.25, -0.25, 0.25, 0.75, -1.0, ]);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    render_pass_encoder0021.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0021.setPipeline(render_pipeline001);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    query000.destroy()
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query000.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setStencilReference(1);
    
    
    render_bundle_encoder002.setVertexBuffer(0, buffer006);
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_pass_encoder0020.setStencilReference(1);
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    texture002.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    buffer006.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer003.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.setVertexBuffer(0, buffer006);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder0001.setPipeline(render_pipeline000);
    
    
    
    
    buffer004.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture001.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    render_pass_encoder0020.setStencilReference(1);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
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

    render_pass_encoder0021.setBindGroup(0, bind_group002);
    
    render_pass_encoder0021.setStencilReference(1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer0010.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.drawIndirect(buffer004, 0);
    buffer004.destroy()
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
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
    render_bundle_encoder000.draw(3);
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    render_pass_encoder0000.popDebugGroup();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query002.destroy()
    render_pass_encoder0021.setStencilReference(1);
    query003.destroy()
    render_bundle_encoder002.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query002.destroy()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group003);
    compute_pass_encoder1000.popDebugGroup()
    texture002.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.insertDebugMarker("marker");
    const array5 = new Float32Array([1.0, -0.5, 0.75, 0.5, -0.5, 1.0, 0.0, -0.75, -1.0, 0.5, -1.0, -0.5, 0.5, 0.75, -0.5, 0.75, 0.5, 0.5, -1.0, 0.0, -0.75, 0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 0.0, -0.5, 0.75, -0.25, 0.5, -0.5, 0.0, -0.5, 0.75, 0.5, 0.75, 0.75, 0.75, -0.25, -0.25, 0.75, 0.0, 1.0, 1.0, 1.0, 0.25, 1.0, 1.0, -1.0, 0.0, -1.0, -0.25, -0.5, 0.0, -0.25, -0.75, 0.75, 0.0, -0.25, -0.5, -0.25, 0.5, 0.75, -0.75, -1.0, -0.75, 0.0, -0.75, -0.25, 0.5, -0.25, -0.5, -0.75, 0.5, 0.0, 0.75, -0.25, -0.25, -0.75, -0.75, -0.75, -0.75, -0.75, -0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 1.0, 0.75, 0.75, 0.5, 0.25, 0.25, 0.25, 0.0, -0.75, ]);
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    texture000.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0021.setVertexBuffer(0, buffer006);
    render_pass_encoder0021.setStencilReference(1);
    buffer009.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder0001.insertDebugMarker("marker");
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0001.setStencilReference(1);
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0021.end();
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer100.destroy()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    query001.destroy()
    query100.destroy()
    render_pass_encoder0001.setStencilReference(1);
    
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder003.pushDebugGroup("group_marker");
    buffer008.destroy()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer0014.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    render_bundle_encoder003.setPipeline(render_pipeline004);
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.submit([command_buffer001, ]);
    command_encoder102.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer100.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.insertDebugMarker("marker");
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer007.destroy()
    device10.pushErrorScope("validation");
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setVertexBuffer(0, buffer0015);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder100.setPipeline(render_pipeline106);
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
    texture003.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.finish();
    buffer002.destroy()
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group006);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    const command_buffer200 = command_encoder200.finish();
    command_encoder101.insertDebugMarker("mymarker");
    const command_buffer101 = command_encoder101.finish();
    query003.destroy()
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.popDebugGroup();
    query002.destroy()
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer0012,
        0
    )
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0006,
            },
        ],
        occlusionQuerySet: query002
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_pass_encoder0020.end();
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0017, 0, array3, 0, array3.length);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, render_bundle_encoder002, ])
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query003
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0031.setPipeline(render_pipeline004);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0041.setPipeline(render_pipeline007);
    const command_buffer201 = command_encoder201.finish();
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture200.destroy();
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    buffer0011.destroy()
    render_bundle_encoder001.setIndexBuffer(buffer0018, "uint16");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer007.destroy()
    render_bundle_encoder001.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    device10.pushErrorScope("internal");
    
    
    
    render_pass_encoder0040.setVertexBuffer(0, buffer0014);
    render_pass_encoder0001.setStencilReference(1);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.draw(3);
    
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer0018.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer0013.destroy()
    query200.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group008);
    render_pass_encoder0000.setVertexBuffer(0, buffer007);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder003.setBindGroup(0, bind_group009);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    compute_pass_encoder0040.setPipeline(compute_pipeline0011);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0001.setVertexBuffer(0, buffer0020);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([]);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0010);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0011);
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0031.setVertexBuffer(0, buffer0020);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0041.setVertexBuffer(0, buffer0021);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    command_encoder102.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0012);
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
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
        layout: compute_pipeline0011.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0013);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0031.end();
    const command_buffer003 = command_encoder003.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0014);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1000.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0041.setIndexBuffer(buffer003, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.end();
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline0011.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0015);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    command_encoder100.popDebugGroup()
    render_pass_encoder0000.end();
    render_pass_encoder0020.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0030.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    const command_buffer000 = command_encoder000.finish();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer104, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.popDebugGroup();
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    compute_pass_encoder0040.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    device20.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0000.end();
    device20.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    device20.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0021.draw(3);
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline0011.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0017);
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0041.drawIndexed(3);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0021.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0043, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer002, ]);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline0011.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0019);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0021.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0030.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer105, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer105, 0);
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
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
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0031.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0051, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0020.end();
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer106, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline0011.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0021);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    device10.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.drawIndirect(buffer0056, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0049, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer107, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0022);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0031.drawIndexed(3);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder0040.end();
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    compute_pass_encoder0040.end();
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline0011.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0023);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0001.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
}