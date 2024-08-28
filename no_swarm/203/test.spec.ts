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
    
    
    const array0 = new Float32Array([-0.75, -1.0, -0.25, 0.0, 0.25, -0.75, 0.75, -1.0, 0.0, -0.75, 0.25, 0.5, -0.25, -0.75, -0.25, 1.0, 0.75, -0.75, -0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.25, 1.0, 0.75, 0.75, 0.0, -0.5, 0.5, -0.75, 0.0, -0.5, 0.25, -1.0, 0.75, 0.25, 0.0, 0.0, 1.0, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -0.5, 0.75, -0.25, 0.75, 0.25, -0.75, -0.75, -0.25, 0.75, -1.0, -0.5, 0.0, 1.0, 0.0, -0.5, 0.5, -0.25, 0.25, 1.0, -0.75, 1.0, -0.25, 1.0, 0.0, -0.25, 0.25, -0.25, 0.25, 1.0, 0.75, 0.25, 0.0, -0.5, 1.0, 0.75, 1.0, -1.0, -0.25, 0.25, -1.0, -0.25, 0.75, 0.75, 0.0, 1.0, 0.25, -0.5, 1.0, -0.75, 1.0, -0.75, -0.75, -0.25, ]);
    const array1 = new Float32Array([-0.5, -1.0, -0.75, -0.25, 0.0, -0.75, 0.5, -1.0, 0.25, 0.75, -1.0, -1.0, 1.0, 0.75, -1.0, 0.5, 0.5, 0.25, 0.25, 0.0, 1.0, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -0.5, -1.0, 0.25, -1.0, 0.5, -0.5, 0.75, -0.5, 0.75, -0.5, 0.0, 0.25, -0.75, 0.75, 0.25, -1.0, 0.75, 0.0, -1.0, -0.75, 1.0, 1.0, -0.5, 0.75, -0.25, -0.5, 1.0, -0.25, 0.75, 0.25, 0.25, 0.25, -0.5, 0.25, 0.75, 0.5, 0.25, -0.5, 0.75, -0.75, -1.0, 0.0, 0.25, -0.5, -0.25, -1.0, -0.25, 0.5, 0.5, -1.0, 1.0, -0.75, 0.5, -0.5, -0.25, 1.0, -0.5, -0.5, -0.75, 0.0, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, -0.5, ]);
    const array2 = new Float32Array([-0.75, -0.75, 0.5, -1.0, 0.25, 0.25, -0.5, 1.0, 0.75, 1.0, -0.5, -0.5, -0.25, 0.0, 0.25, 0.0, 0.75, -0.25, 0.25, 0.75, 1.0, -0.5, -0.75, 0.25, 0.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.25, -0.75, -0.75, -0.75, -1.0, 1.0, -0.25, -0.75, -1.0, 0.75, 0.25, -1.0, -0.75, 0.75, 1.0, 0.75, -0.25, 0.75, -0.5, -1.0, -1.0, 1.0, -0.25, -0.25, -0.25, 0.0, 0.25, 0.0, -0.25, 1.0, 0.5, 0.75, -0.75, -0.25, -0.75, 0.75, -0.75, -0.25, 0.0, 0.5, 0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.5, -0.5, 0.25, 0.5, -0.75, -1.0, 0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.5, -0.75, 1.0, -0.25, 0.5, 0.25, -0.25, 0.75, 0.5, -1.0, -1.0, -0.25, ]);
    
    const array3 = new Float32Array([0.75, -0.75, 0.0, 0.0, 1.0, 0.5, 0.5, 0.75, 0.5, 0.0, 0.5, -0.75, 0.0, -1.0, 0.0, 0.5, -0.75, -0.75, 0.75, 0.0, -0.75, -0.5, -0.75, 0.25, 0.0, -0.75, 0.0, -0.75, -0.25, 0.0, 0.0, -0.75, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, 0.25, 0.5, 0.25, -0.75, 0.0, 0.25, 0.75, 1.0, 1.0, 0.0, 0.75, 1.0, -0.25, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, -1.0, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, 0.25, -0.5, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, 1.0, 1.0, 1.0, 0.25, -0.5, 1.0, 1.0, 0.75, -0.75, -0.75, -0.75, -0.75, 0.25, 0.25, 0.0, -0.25, 1.0, 0.75, -0.5, -0.75, 0.75, 0.25, 0.25, 1.0, 0.0, -0.25, 0.5, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array4 = new Float32Array([0.75, -0.5, 0.5, 0.25, 0.0, 0.25, 1.0, 0.0, 0.75, -1.0, 0.5, 1.0, -0.25, -0.25, -1.0, 0.0, 0.5, 0.75, 0.5, 0.25, 0.25, 0.5, 0.5, -0.25, 0.25, 1.0, 0.75, 0.75, -0.75, -0.25, -0.25, 1.0, 0.5, -0.5, 0.25, 1.0, -0.75, 0.75, 0.25, 0.75, 0.0, 1.0, 0.75, 0.25, -0.75, 0.0, 0.5, 0.0, 1.0, -0.75, -1.0, 1.0, -0.25, 0.0, 0.0, -0.75, 1.0, 0.5, 0.0, -1.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.75, -1.0, -0.75, 0.75, -0.25, 0.75, 0.25, -0.5, 0.75, 0.25, 0.0, -0.5, 0.25, -0.25, -0.25, 0.25, 0.75, -0.5, -1.0, -0.5, -1.0, 1.0, 0.25, 1.0, 0.0, -0.5, -0.5, 0.25, 0.0, 0.5, -1.0, -0.25, -1.0, -1.0, 1.0, ]);
    const array5 = new Float32Array([0.25, 1.0, 0.25, 0.0, 0.25, 0.75, 0.0, 1.0, -0.5, 0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 0.25, -0.25, 0.25, -1.0, -0.25, -0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 0.25, 0.0, 0.25, 0.0, 0.0, 0.5, 0.0, 1.0, 1.0, -0.5, 1.0, -1.0, -0.5, -0.25, 0.0, 1.0, 0.25, 0.0, -0.75, -0.75, -1.0, -1.0, 0.75, -0.75, -1.0, 0.75, 0.5, -0.25, 0.0, -1.0, -1.0, 0.0, -0.5, -0.5, 0.0, 0.0, -0.25, -1.0, -0.25, 0.5, -0.75, 0.5, -0.25, 1.0, -0.25, 1.0, 0.5, -1.0, -0.25, 0.0, -1.0, -0.75, 0.0, 0.25, 1.0, -1.0, 0.75, -0.25, 0.25, 0.75, -0.75, -1.0, -0.25, 0.0, -0.75, -0.5, 0.5, 1.0, 1.0, 0.75, -0.25, -0.75, 0.0, 1.0, ]);
    
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
    command_encoder000.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    query001.destroy()
    query000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.setPipeline(render_pipeline000);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.pushErrorScope("internal");
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    query001.destroy()
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
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder002.popDebugGroup();
    
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
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("out-of-memory");
    query000.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
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
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    buffer003.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer001.destroy()
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    texture000.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    compute_pass_encoder0010.popDebugGroup()
    query001.destroy()
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    compute_pass_encoder0000.popDebugGroup()
    buffer004.destroy()
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    render_bundle_encoder001.popDebugGroup();
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.dispatchWorkgroups(100);
    buffer007.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    query000.destroy()
    
    const array6 = new Float32Array([1.0, -0.75, -0.5, -0.75, -0.75, 0.25, 0.75, 1.0, 0.75, 0.75, 0.0, -1.0, -0.75, 0.5, 1.0, -0.75, 0.0, -0.25, 1.0, 0.75, 1.0, -0.5, -0.5, 1.0, -0.75, -0.5, 0.75, -1.0, -0.75, 0.5, 0.0, 0.5, 0.0, 0.0, 0.25, 0.25, 0.25, -0.25, -0.25, -0.25, 0.25, 1.0, 0.5, -1.0, 0.75, -0.75, 0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 0.25, -0.5, 0.25, 0.25, -0.75, -0.25, -1.0, 0.75, 1.0, 0.5, -0.25, 0.25, -0.75, 0.5, 0.5, 0.25, 1.0, 0.0, -0.75, -1.0, -0.5, 0.25, 0.75, 0.25, 0.0, 1.0, 0.75, -1.0, 0.75, 0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 0.25, 1.0, 0.25, -0.25, -1.0, -0.25, -0.75, 0.75, 0.5, 1.0, -0.25, -0.5, -0.25, ]);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    query000.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array7 = new Float32Array([-1.0, -0.75, -1.0, -0.75, -0.5, 1.0, -0.5, -0.5, 0.75, 0.75, 0.0, 0.25, -0.5, 0.75, 0.25, 1.0, 1.0, -1.0, 0.75, -0.25, 1.0, 0.25, 0.75, -0.5, -0.5, 0.25, -0.75, 1.0, 0.5, -1.0, 1.0, 1.0, -0.5, -1.0, 1.0, -0.5, -0.75, -0.75, 0.75, -0.75, -0.5, 0.0, -0.25, 0.25, 1.0, -0.75, 0.0, 0.5, -0.5, -0.5, 1.0, -0.75, -1.0, 0.0, 0.25, -1.0, 0.0, -0.75, -0.25, 0.75, 0.0, 0.25, 0.75, -1.0, 0.0, 0.25, -0.75, 1.0, 0.75, -1.0, -0.25, 0.75, -0.75, -0.75, 0.5, -0.25, -0.25, 0.75, 0.25, 0.25, 1.0, -0.25, 0.0, -0.25, -0.5, -0.25, -0.25, -0.5, -0.25, 0.5, 0.5, 0.25, -0.5, -1.0, 0.5, -0.25, -0.25, 0.0, 0.0, -0.25, ]);
    buffer009.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    buffer008.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer006.destroy()
    compute_pass_encoder0010.popDebugGroup()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group004);
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query002.destroy()
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
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
    buffer0010.destroy()
    
    
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0030.setPipeline(compute_pipeline004);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0012, 0);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    
    device00.queue.writeBuffer(buffer0012, 0, array7, 0, array7.length);
    
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
    
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer0014.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    query002.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    command_encoder200.insertDebugMarker("mymarker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group006);
    query000.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    query002.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0017, 0);
    
    buffer005.destroy()
    query003.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer0011.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer0017, 0, array3, 0, array3.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device00.queue.writeBuffer(buffer0017, 0, array3, 0, array3.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query002.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array8 = new Float32Array([-1.0, -0.75, 1.0, 0.0, -1.0, -1.0, 0.75, 0.0, 0.25, 0.0, -0.5, -0.25, 0.75, -0.25, 0.0, -0.75, -0.75, -1.0, 1.0, -0.5, -1.0, -0.25, 1.0, 0.5, 0.0, 1.0, 0.25, -0.75, 1.0, -0.25, 0.25, -0.75, -0.5, -1.0, -0.25, 1.0, 0.0, 0.25, 0.0, 0.5, -0.75, 0.5, -0.75, 0.0, -1.0, -0.75, -0.5, 0.5, -0.5, 0.25, 0.25, -1.0, -0.25, -0.5, -0.5, -0.75, 0.25, 0.5, -0.5, -0.25, 0.75, -0.25, -0.75, 0.5, -0.5, -0.75, 0.5, 0.75, -1.0, -0.5, 0.5, -0.25, -1.0, -1.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.75, -0.5, 0.25, -0.25, -0.75, -1.0, 0.5, 0.5, 1.0, -0.75, -1.0, -1.0, 0.75, 1.0, 0.25, 1.0, 1.0, -0.5, 0.25, 0.75, 0.25, ]);
    render_bundle_encoder002.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder0000.end();
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeBuffer(buffer0017, 0, array7, 0, array7.length);
    query002.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    buffer0012.destroy()
    compute_pass_encoder0010.popDebugGroup()
    
    query200.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.dispatchWorkgroups(100);
    buffer201.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0017, 0, array1, 0, array1.length);
    
    device00.queue.writeBuffer(buffer0017, 0, array7, 0, array7.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    
    compute_pass_encoder0030.end();
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer003 = command_encoder003.finish();
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder004.insertDebugMarker("mymarker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    
    buffer200.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    buffer0016.destroy()
    texture201.destroy();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0017, 0, array8, 0, array8.length);
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    command_encoder000.clearBuffer(buffer0017);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    device00.queue.writeBuffer(buffer0017, 0, array6, 0, array6.length);
    command_encoder005.clearBuffer(buffer0017);
    device00.queue.writeBuffer(buffer0017, 0, array4, 0, array4.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0017, 0, array1, 0, array1.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.queue.writeBuffer(buffer0017, 0, array6, 0, array6.length);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const command_buffer004 = command_encoder004.finish();
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer004, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    query000.destroy()
    device20.pushErrorScope("internal");
    buffer002.destroy()
    
    device00.queue.writeBuffer(buffer0017, 0, array8, 0, array8.length);
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer0018,
        0
    )
    
    device00.queue.submit([command_buffer003, ]);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0017, 0, array6, 0, array6.length);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    
    texture202.destroy();
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout006,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    query000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer0018,
        0
    )
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    compute_pass_encoder0010.popDebugGroup()
    texture200.destroy();
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0000.setStencilReference(1);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    device00.pushErrorScope("out-of-memory");
    
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder005.pushDebugGroup("mygroupmarker")
    query202.destroy()
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer0018,
        0
    )
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setPipeline(render_pipeline004);
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    
    
    query001.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setPipeline(render_pipeline003);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group007);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout008,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout006,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout008,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setPipeline(render_pipeline006);
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group009);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0010.end();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
}