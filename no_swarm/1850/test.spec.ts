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
    
    
    const array0 = new Float32Array([-0.25, 0.75, 0.5, 1.0, 0.5, 0.5, -1.0, -0.5, 0.75, -0.75, -0.75, 0.25, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, 0.25, 0.25, -0.75, 1.0, 0.5, 0.25, 0.25, 0.0, -1.0, -1.0, 1.0, 0.75, 0.75, 0.75, 0.5, -0.75, 0.75, -0.5, 0.5, 0.0, -0.75, -0.5, 0.75, 0.25, 0.5, -1.0, -0.5, -0.75, 0.5, -0.5, 0.0, 0.75, 0.0, 0.25, 0.75, 0.0, -0.25, 0.0, 0.25, 0.5, 0.5, 0.0, -0.5, -0.5, -0.5, 0.0, -0.75, -0.25, -0.75, -0.5, 0.5, 0.75, 0.5, 0.75, 0.25, 1.0, -1.0, -0.5, 1.0, 0.0, -0.25, 1.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.25, 0.5, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, -0.5, 0.0, -0.25, -0.25, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("out-of-memory");
    
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16uint",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const array1 = new Float32Array([-0.75, -0.25, 1.0, -0.75, -0.5, 0.5, 0.0, -1.0, 1.0, 0.0, -0.25, 0.25, -1.0, -1.0, 1.0, -0.5, 0.75, -1.0, -1.0, -1.0, -1.0, -0.75, 0.75, 0.75, 0.25, 0.75, -0.25, 1.0, -0.75, 1.0, 0.25, -0.75, -1.0, -0.5, 0.0, -0.5, 0.5, -1.0, 0.25, 0.5, -0.75, 0.75, -0.5, -0.5, 0.75, 0.0, 0.75, -0.25, -0.75, -0.25, 0.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.5, 0.5, -0.5, -0.75, 0.0, -1.0, 0.75, 0.75, -0.75, 0.0, 1.0, -1.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, 1.0, -1.0, 0.5, 0.75, 0.75, -0.75, 0.75, 0.75, 0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 0.0, -1.0, -0.25, 0.5, 0.75, -0.75, -0.75, 0.75, -0.5, -0.5, 0.0, 0.5, ]);
    command_encoder001.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("out-of-memory");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    buffer001.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array2 = new Float32Array([-0.5, -0.25, 0.5, -1.0, -0.25, -0.25, 0.5, -0.5, -0.5, -0.5, -1.0, -0.75, -1.0, 1.0, 0.75, 0.5, 0.5, -0.25, 0.5, 0.25, -0.25, -0.5, 1.0, 1.0, 0.25, -0.5, -0.5, -0.25, -1.0, -0.5, 0.0, 0.5, 1.0, -0.75, 0.25, 0.75, 0.75, 0.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.25, 0.25, 1.0, -0.25, -0.25, -0.75, 1.0, 0.75, 0.75, 1.0, -0.75, 1.0, 0.0, -0.25, 0.25, 0.75, -0.5, -0.75, -0.5, 0.0, 0.0, -0.75, 0.25, 1.0, -0.25, -0.75, -0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 1.0, -0.25, -0.5, -1.0, 0.75, -0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.75, 0.5, -1.0, 1.0, 1.0, 1.0, 0.75, 0.5, -0.5, -1.0, -0.75, -0.5, 0.25, 0.0, ]);
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
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
    texture000.destroy();
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    buffer000.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
        occlusionQuerySet: query000
    });
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
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
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    render_pass_encoder0020.setStencilReference(1);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const array3 = new Float32Array([-0.75, 1.0, 0.25, 0.75, 0.25, 1.0, -0.25, -0.25, 1.0, 0.0, 0.0, -1.0, -0.25, -0.75, 0.25, -0.5, -0.5, 0.5, 0.25, 0.5, -1.0, 0.75, 0.25, -0.75, 1.0, -1.0, -0.5, -0.5, -0.25, 0.25, -0.75, 0.5, -0.25, -1.0, -1.0, -0.75, 0.25, 0.25, -0.25, -0.5, -0.25, -0.75, -0.75, 0.25, -1.0, 1.0, -0.25, -0.5, -0.75, -1.0, 0.5, 0.25, 0.75, -1.0, -0.25, 1.0, 0.5, 0.75, 0.5, 0.0, -0.5, 0.75, -1.0, -0.25, 0.5, 0.0, 0.25, -1.0, 0.25, -0.75, -1.0, 0.5, -0.25, 1.0, 0.5, -0.25, 0.0, 1.0, -0.25, 0.75, 0.75, 0.5, -0.25, 0.25, -0.5, -0.75, -0.5, 0.5, 0.5, -0.25, 0.75, -1.0, -0.25, -0.5, 0.25, -0.25, -0.25, 0.0, 0.25, -0.75, ]);
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    command_encoder002.copyBufferToBuffer(
        buffer002,
        0,
        buffer004,
        0,
        400
    );
    texture002.destroy();
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
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
        format: "rg8uint",
        dimension: "2d"
    });
    query002.destroy()
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
    
    buffer002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    buffer006.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    compute_pass_encoder0001.setPipeline(compute_pipeline003);
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query003
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0000.setPipeline(render_pipeline003);
    render_bundle_encoder002.setPipeline(render_pipeline000);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    query000.destroy()
    
    query000.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    buffer007.destroy()
    query003.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
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
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    render_bundle_encoder001.drawIndirect(buffer006, 0);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer001.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    buffer003.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    query000.destroy()
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    texture004.destroy();
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0001.insertDebugMarker("marker")
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query003.destroy()
    query004.destroy()
    query002.destroy()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0000.setStencilReference(1);
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    buffer0011.destroy()
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0001.setPipeline(render_pipeline006);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0040.setPipeline(render_pipeline006);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0010.setPipeline(render_pipeline007);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query003.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query004
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    buffer009.destroy()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline006);
    {
        await buffer0015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0015.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setPipeline(render_pipeline000);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.insertDebugMarker("marker");
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group006);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    {
        await buffer0017.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0017.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0017.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder0001.setVertexBuffer(0, buffer000);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
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
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query005
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query002.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0041.setPipeline(render_pipeline005);
    query001.destroy()
    render_pass_encoder0021.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0014
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0021.setPipeline(render_pipeline008);
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    buffer0013.destroy()
    query004.destroy()
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.pushErrorScope("internal");
    
    buffer0012.destroy()
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.setPipeline(render_pipeline005);
    device00.queue.writeBuffer(buffer0015, 0, array2, 0, array2.length);
    buffer0014.destroy()
    render_pass_encoder0051.setPipeline(render_pipeline009);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer0011,
        0
    )
    buffer0010.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    command_encoder004.clearBuffer(buffer0012);
    render_pass_encoder0050.setPipeline(render_pipeline007);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    buffer004.destroy()
    command_encoder002.clearBuffer(buffer004);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0017, 0, array0, 0, array0.length);
    render_pass_encoder0011.setStencilReference(1);
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder0040.setVertexBuffer(0, buffer0017);
    
    device00.queue.writeBuffer(buffer0018, 0, array3, 0, array3.length);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    command_encoder002.copyBufferToBuffer(
        buffer0015,
        0,
        buffer004,
        0,
        400
    );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    buffer008.destroy()
    
    render_pass_encoder0041.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer0010.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query000.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    buffer0019.destroy()
    buffer0015.destroy()
    buffer009.destroy()
    
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group009);
    buffer0021.destroy()
    
    
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    query001.destroy()
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setStencilReference(1);
    
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0010);
    command_encoder003.copyBufferToBuffer(
        buffer006,
        0,
        buffer0020,
        0,
        400
    );
    const array4 = new Float32Array([0.0, -1.0, -0.5, 1.0, 0.5, -1.0, 0.75, 0.25, -0.5, 0.0, -0.5, 0.0, 0.75, 0.0, 0.25, -0.75, -0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, -0.5, 1.0, 0.25, 1.0, 0.25, 0.5, -0.25, -0.5, 0.25, 0.0, -0.5, -0.75, 0.5, 0.75, 1.0, -0.25, -1.0, 1.0, 0.0, 0.0, 1.0, 0.25, -0.5, -0.75, 0.75, -0.75, 0.5, 0.0, 1.0, -0.75, -0.5, -0.5, -0.5, -0.5, 0.5, 0.25, -1.0, 1.0, 0.0, 0.25, 0.5, 0.0, 0.75, -0.5, 1.0, 0.25, 0.25, 0.0, 0.75, 0.25, 0.75, 0.5, 0.0, 1.0, 0.25, -1.0, 0.0, 0.0, -0.25, -0.75, -0.75, -0.5, -0.5, 1.0, 0.5, 0.5, 1.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, -0.5, 0.0, -0.25, -0.5, ]);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query003.destroy()
    buffer005.destroy()
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    buffer0016.destroy()
    device00.queue.writeBuffer(buffer0020, 0, array3, 0, array3.length);
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.insertDebugMarker("marker");
    render_bundle_encoder002.setVertexBuffer(0, buffer0014);
    query003.destroy()
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0041.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer0014,
        0
    )
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
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

    render_pass_encoder0031.setBindGroup(0, bind_group0011);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    buffer0020.destroy()
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0021.setStencilReference(1);
    
    
    render_bundle_encoder002.draw(3);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.setVertexBuffer(0, buffer008);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    render_pass_encoder0041.pushDebugGroup("group_marker");
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array5 = new Float32Array([-1.0, -0.75, -0.25, -0.25, -0.75, -0.25, -0.25, 1.0, -0.25, 1.0, 0.5, 0.0, -0.5, 0.0, 1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.0, 0.75, 0.5, -1.0, 1.0, -1.0, -0.25, 0.75, -1.0, -0.5, -0.5, -1.0, 0.25, 1.0, -1.0, 0.5, 1.0, 0.0, -0.75, 1.0, -0.75, 0.5, -0.75, 0.0, 0.5, 1.0, 0.5, 0.5, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 0.0, 0.0, 0.75, -1.0, 0.5, -0.75, 0.5, 0.5, 0.0, -0.5, -1.0, -0.25, 0.25, -0.5, -1.0, 0.5, -0.5, 0.25, 1.0, -0.5, -1.0, 0.5, 0.25, 1.0, 1.0, 1.0, -0.75, 0.5, -0.25, -0.25, 1.0, 1.0, 0.25, 0.5, 0.5, -0.75, 1.0, 0.5, 0.0, 0.75, 0.25, 0.25, ]);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0020.setVertexBuffer(0, buffer0012);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
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

    render_pass_encoder0010.setBindGroup(0, bind_group0012);
    
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0051.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder004.copyBufferToBuffer(
        buffer0016,
        0,
        buffer0013,
        0,
        400
    );
    render_pass_encoder0051.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout006]
    });
    command_encoder005.clearBuffer(buffer0021);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0041.insertDebugMarker("marker");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0011.setPipeline(compute_pipeline002);
    device00.queue.writeBuffer(buffer0022, 0, array1, 0, array1.length);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    query003.destroy()
    render_pass_encoder0031.setVertexBuffer(0, buffer0028);
    render_bundle_encoder000.setIndexBuffer(buffer0013, "uint16");
    render_bundle_encoder001.draw(3);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder000.resolveQuerySet(
        query006,
        0,
        32,
        buffer0027,
        0
    )
    device00.queue.writeBuffer(buffer0025, 0, array2, 0, array2.length);
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query005
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    buffer0022.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0002.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0002.setPipeline(render_pipeline008);
    render_bundle_encoder000.drawIndirect(buffer0025, 0);
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer0022,
        0,
        400
    );
    render_pass_encoder0000.setVertexBuffer(0, buffer0016);
    
    
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    buffer0023.destroy()
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0030, 0);
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer0014,
        0
    )
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0010.setVertexBuffer(0, buffer002);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0025, 0, array2, 0, array2.length);
    query001.destroy()
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0013);
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group0014);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
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
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group0015);
    render_pass_encoder0031.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0051.setVertexBuffer(0, buffer009);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0050.setVertexBuffer(0, buffer008);
    render_pass_encoder0001.popDebugGroup();
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0016);
    render_pass_encoder0010.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.setVertexBuffer(0, buffer0016);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0023, "uint16");
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group0017);
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0018);
    render_pass_encoder0041.setVertexBuffer(0, buffer0028);
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.setVertexBuffer(0, buffer0010);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0039, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0020.end();
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
    
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0002.setBindGroup(0, bind_group0019);
    render_pass_encoder0002.setVertexBuffer(0, buffer0023);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0051.end();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0041.end();
    compute_pass_encoder0010.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.end();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer005, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0001.draw(3);
    compute_pass_encoder0001.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.end();
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0020);
    render_pass_encoder0021.setVertexBuffer(0, buffer0043);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0021);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0051, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.end();
    render_pass_encoder0020.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder0000.end();
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0011.end();
    render_pass_encoder0040.end();
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0002.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0020, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0001.drawIndexed(3);
    command_encoder000.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.popDebugGroup();
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0023);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0002.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0001.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0039, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0031.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0002.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0044, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0051.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0002.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0002.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndirect(buffer0052, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0002.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0058, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0045, 0);
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0025);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0057, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0031.end();
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0049, 0);
    render_pass_encoder0002.drawIndirect(buffer0058, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0063, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0057, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0001.drawIndirect(buffer0045, 0);
    render_pass_encoder0051.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndirect(buffer0058, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0051.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0063, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0002.drawIndirect(buffer0046, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0064, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0057, 0);
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndirect(buffer0058, 0);
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0002.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0052, 0);
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
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
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0028);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0030, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0071, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0071, 0);
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer005, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0048, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0029);
    render_pass_encoder0021.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0002.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0075,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0030);
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0031);
    render_pass_encoder0002.end();
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0067, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0071, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0001.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer0064, 0);
    device00.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0063, 0);
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0057, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer0064, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
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
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0032);
    render_pass_encoder0031.drawIndirect(buffer0064, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0040.drawIndirect(buffer0077, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0041.drawIndirect(buffer0071, 0);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0033);
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0001.drawIndirect(buffer0052, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0002.drawIndirect(buffer0057, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0079, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0052, 0);
    render_pass_encoder0031.drawIndirect(buffer0058, 0);
    render_pass_encoder0031.drawIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndirect(buffer0062, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0071, 0);
    render_pass_encoder0001.drawIndirect(buffer0058, 0);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0068, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndirect(buffer0015, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndirect(buffer0082, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndirect(buffer0055, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0011.popDebugGroup()
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0034);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndirect(buffer0064, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0071, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0073, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndirect(buffer0065, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0058, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0035);
    render_pass_encoder0002.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndirect(buffer0073, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0045, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0002.drawIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0002.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0002.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0073, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0036);
    render_pass_encoder0002.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0089, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0090, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0090, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0071, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0001.drawIndirect(buffer0082, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0037);
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0064, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer0052, 0);
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0030, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0093, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0057, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0002.setIndexBuffer(buffer0057, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0095,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0038);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0002.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0090, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0011.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0078, 0);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0050.end();
    render_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0059, "uint16");
    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0097,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0039);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
}