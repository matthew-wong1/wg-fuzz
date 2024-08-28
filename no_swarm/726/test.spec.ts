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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer000.destroy()
    device00.pushErrorScope("out-of-memory");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    command_encoder000.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array0 = new Float32Array([0.5, 0.25, 1.0, 0.5, 0.75, 0.25, 0.75, -0.75, -0.75, -0.5, 0.0, 0.75, -0.25, -0.75, -0.25, 0.75, 0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 1.0, -0.75, -0.5, -0.25, 0.75, -0.5, 0.0, 0.5, -0.25, 0.0, -0.75, 0.25, 1.0, 0.0, 0.75, -0.5, 0.75, 0.0, 0.5, -1.0, -1.0, 0.0, 0.5, -1.0, -0.5, -1.0, -1.0, 0.25, 0.25, -0.25, -0.75, -0.5, 0.25, 0.25, -0.75, -0.5, -0.5, 0.75, 0.5, 0.0, -0.25, 0.25, -0.75, -0.75, -0.75, -0.25, -1.0, -1.0, -0.75, -0.75, 0.5, 0.5, 0.5, -0.75, 0.25, 0.5, -0.75, -1.0, -1.0, 0.0, 0.25, 0.0, 0.0, -1.0, 1.0, 0.0, -0.25, -1.0, 0.0, 0.0, 0.0, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, -0.25, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer001.destroy()
    
    const command_buffer000 = command_encoder000.finish();
    const array1 = new Float32Array([-0.75, -0.25, 1.0, -0.25, -0.5, -0.75, 0.75, -1.0, -1.0, 0.75, -0.75, 0.5, 1.0, -0.75, -0.75, 0.0, -1.0, -0.5, 1.0, -0.5, 0.5, -1.0, 0.0, 0.25, -0.75, -0.75, -1.0, 0.25, 0.5, -0.5, -0.75, -0.75, 1.0, 0.0, 0.5, 1.0, 1.0, -0.75, -0.75, 0.75, -1.0, -0.5, 0.75, -0.75, -0.5, 0.25, -0.25, 0.25, -0.75, 0.0, 1.0, 0.5, 0.25, 0.25, 0.0, -0.5, -0.75, 0.75, -0.75, 0.75, 0.25, -1.0, 0.5, -0.75, -0.75, 0.25, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, 0.0, 0.0, -1.0, 0.25, -0.5, -1.0, -0.5, 0.75, -0.75, -0.5, 0.25, -1.0, -0.25, 0.25, -0.25, 0.0, -0.75, -0.75, 1.0, 0.5, 0.0, -0.5, -0.5, -0.25, 0.25, -0.25, -1.0, -0.75, ]);
    
    query000.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer000, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query001.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    
    buffer003.destroy()
    buffer005.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    query001.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    buffer002.destroy()
    
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
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer007.destroy()
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    
    query000.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    query000.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    texture001.destroy();
    device00.queue.submit([command_buffer002, ]);
    
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer006.destroy()
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    buffer008.destroy()
    buffer101.destroy()
    const command_buffer100 = command_encoder100.finish();
    
    
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    query000.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    query101.destroy()
    
    buffer100.destroy()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    texture000.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    query101.destroy()
    
    query001.destroy()
    query001.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer0010.destroy()
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer103.destroy()
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    buffer104.destroy()
    query001.destroy()
    
    
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer102.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0030.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    const array2 = new Float32Array([0.25, -0.5, 1.0, -0.75, 1.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.5, -1.0, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, -0.5, -0.75, 0.25, 0.5, -0.5, -0.75, -0.25, -0.75, -0.75, -0.25, -1.0, 0.5, 0.75, 1.0, -0.5, -1.0, -0.5, 0.75, 0.0, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, 0.5, 1.0, 0.0, -0.5, 0.0, -0.5, -0.75, -0.5, 1.0, -0.75, -1.0, 0.75, -0.25, 1.0, -0.25, 0.5, -0.5, 1.0, 0.75, 0.25, -0.5, 0.75, 0.25, -0.5, 0.5, 0.0, 0.75, 0.75, -1.0, -1.0, -0.75, -1.0, -0.5, -0.75, -0.25, -0.25, -0.75, 0.5, -0.5, -0.5, -0.75, -0.25, -1.0, -0.75, -0.75, -0.75, 1.0, -0.75, 1.0, 1.0, -1.0, -0.25, 0.75, -0.75, -1.0, -0.75, 1.0, ]);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0040.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query000.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    
    
    query002.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer0011.destroy()
    compute_pass_encoder0010.popDebugGroup()
    query102.destroy()
    
    render_bundle_encoder002.popDebugGroup();
    buffer105.destroy()
    
    render_pass_encoder0040.setPipeline(render_pipeline003);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0040.setStencilReference(1);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
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
    query004.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
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
    
    render_bundle_encoder100.popDebugGroup();
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    query002.destroy()
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    texture104.destroy();
    texture101.destroy();
    render_pass_encoder0030.popDebugGroup();
    query003.destroy()
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query103.destroy()
    
    render_pass_encoder0040.popDebugGroup();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query004.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer0013.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setStencilReference(1);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.popDebugGroup();
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
    texture103.destroy();
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    render_pass_encoder1020.setPipeline(render_pipeline101);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
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
    
    query004.destroy()
    
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder101.resolveQuerySet(
        query104,
        0,
        32,
        buffer104,
        0
    )
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder101.popDebugGroup()
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.setPipeline(render_pipeline101);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
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
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const array3 = new Float32Array([-0.75, 1.0, 0.75, 0.0, -0.75, 0.5, 0.5, 0.75, 0.0, -0.75, -1.0, -0.5, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 0.75, 0.0, -0.5, 0.0, 0.5, 0.0, 0.0, 0.25, 1.0, 0.0, 0.25, 0.0, 0.75, -0.75, 0.5, 0.0, -1.0, -1.0, -0.25, 0.0, 1.0, -0.5, -1.0, -0.5, 0.5, -0.5, -0.75, 0.0, 0.0, 0.5, 1.0, -0.75, 0.25, -0.25, 1.0, 0.25, 0.0, 1.0, 0.75, -1.0, 1.0, 0.75, -0.5, 0.5, -0.25, -0.75, 0.25, 0.25, -0.75, -1.0, 0.5, -0.25, -1.0, 0.25, -0.5, 0.25, 0.0, 1.0, -0.5, -0.5, 0.0, -0.75, -0.25, 0.5, 0.25, 0.0, -1.0, 0.0, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, -1.0, 0.25, ]);
    buffer0012.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    device10.queue.submit([command_buffer100, ]);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    texture002.destroy();
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer107.destroy()
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query006
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    render_pass_encoder0050.setPipeline(render_pipeline000);
    render_bundle_encoder102.setPipeline(render_pipeline101);
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1040.setPipeline(render_pipeline101);
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1050.setPipeline(render_pipeline104);
    query103.destroy()
    render_pass_encoder1010.setStencilReference(1);
    
    
    render_pass_encoder1050.setStencilReference(1);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    texture102.destroy();
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder1030.beginOcclusionQuery(0)
    command_encoder006.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query006
    });
    const array4 = new Float32Array([0.25, -0.25, 0.5, 0.75, -1.0, 0.5, 0.5, -0.75, -1.0, 1.0, 0.0, 0.25, 0.5, -0.25, -1.0, -0.25, 0.5, 0.5, -1.0, -0.25, -1.0, -1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 1.0, -0.25, 1.0, 0.0, -1.0, -0.25, -0.5, 1.0, -0.25, 0.25, 0.25, 0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.75, 0.25, 0.75, 1.0, 0.0, 0.0, 0.5, 0.25, 0.25, -0.75, -0.5, 0.25, 0.5, 0.0, 0.0, 0.75, 0.25, -1.0, -0.5, -1.0, -0.25, 0.75, 0.0, 0.75, 0.0, 0.25, -1.0, 0.5, 0.25, -0.75, 0.75, 0.5, 1.0, -1.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.25, 1.0, -0.25, 0.25, 0.25, 0.25, 0.5, 0.25, -0.5, -1.0, 0.5, 0.0, -0.5, -0.75, 0.0, 0.25, 0.25, ]);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder0060.setPipeline(render_pipeline001);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device40.destroy();
    device30.pushErrorScope("internal");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder102.popDebugGroup();
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

    render_pass_encoder0050.setBindGroup(0, bind_group005);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group104);
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

    render_pass_encoder0060.setBindGroup(0, bind_group006);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder1030.popDebugGroup();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    render_pass_encoder0040.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer001 = command_encoder001.finish();
}