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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.5, 0.0, 0.75, -0.25, -0.75, 0.25, -0.75, 1.0, 0.0, -0.75, 0.5, -0.25, -1.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.5, -0.75, -1.0, 0.75, 0.25, 0.5, 0.0, -0.25, -0.5, -0.5, 0.25, 0.5, 0.25, 1.0, -1.0, 1.0, 0.0, 1.0, 0.25, 0.5, 0.5, 0.0, 0.75, -0.5, -0.25, -0.5, 0.25, -0.25, 1.0, 1.0, 0.25, 0.5, 0.25, -0.5, -0.5, -0.5, -0.75, 0.25, 0.75, -0.5, -0.75, -0.75, 0.25, 1.0, 0.25, 0.5, 0.75, 0.75, 1.0, -1.0, 0.5, 0.0, 0.5, -0.5, -0.5, -0.75, -0.75, -0.5, -0.25, -0.25, -0.5, 0.0, 1.0, 0.75, 0.75, 0.0, -0.75, 1.0, 0.75, -0.5, -0.5, -1.0, 0.0, -0.25, 0.75, 1.0, -0.25, 1.0, -0.5, -0.5, -0.75, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array1 = new Float32Array([1.0, -0.5, 0.75, 1.0, -1.0, -1.0, -0.75, 0.5, 0.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.5, 0.25, 0.25, -0.5, -0.5, 0.25, -0.25, 0.25, -0.5, 0.25, 0.0, 0.25, 0.25, -0.75, -0.5, 0.5, -0.5, -0.25, 1.0, 0.5, 1.0, 0.5, -0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.75, -0.5, 0.75, 0.0, 1.0, 0.25, 0.5, 0.5, -0.25, 0.75, -1.0, 0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 0.5, -0.25, 0.0, -0.75, -0.25, 0.5, -1.0, -0.25, 0.75, 0.5, -0.25, 1.0, -0.25, 1.0, -0.25, -0.5, -0.75, 0.25, 0.0, 0.25, 1.0, 0.0, -1.0, 0.75, 1.0, 0.75, -0.25, 0.75, -1.0, 0.5, -0.25, 0.0, 0.5, 1.0, 0.25, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
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
    device00.pushErrorScope("internal");
    
    
    const array2 = new Float32Array([1.0, -0.75, 0.25, 0.25, -0.25, 0.75, 1.0, -0.75, 1.0, -0.25, 0.5, 0.0, -1.0, 0.25, -0.5, -0.5, 0.5, 0.5, 0.25, 0.25, 1.0, 0.75, -0.5, 0.75, 0.5, -0.25, -0.5, -0.25, 0.5, -0.25, 1.0, -0.25, -0.75, -0.5, -0.25, 0.5, 1.0, -0.75, 0.75, 0.5, 0.25, 0.75, 1.0, -0.75, 1.0, -1.0, -1.0, 0.5, -1.0, -0.25, 0.5, 1.0, -1.0, -1.0, 0.5, -1.0, 0.75, -1.0, -0.5, 0.75, -1.0, -1.0, -0.5, 0.0, 0.75, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -1.0, 1.0, 0.0, 1.0, -1.0, 0.0, -0.75, -0.25, -0.5, 0.75, -0.75, -0.5, -0.25, 0.25, -1.0, 0.75, 0.0, -0.5, -0.5, 0.5, 0.5, -0.75, 1.0, 0.5, 0.25, -0.25, 0.5, 0.25, 0.5, ]);
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
    query000.destroy()
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    query001.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    render_pass_encoder0010.setPipeline(render_pipeline002);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    const command_buffer000 = command_encoder000.finish();
    query001.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    texture103.destroy();
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
        occlusionQuerySet: undefined
    });
    
    texture102.destroy();
    
    query100.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
        occlusionQuerySet: query003
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0030.setPipeline(render_pipeline001);
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    render_pass_encoder0040.setPipeline(render_pipeline001);
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
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder0040.insertDebugMarker("marker");
    device10.destroy();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-1.0, 0.0, 0.75, -0.5, 0.25, 0.5, 0.25, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, 0.75, 0.75, 1.0, 1.0, -0.75, -0.75, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, -1.0, -1.0, -0.5, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, 0.75, -0.75, 0.75, -1.0, -1.0, 0.5, 1.0, 0.5, 0.75, -0.5, -0.5, 0.5, 1.0, 0.75, 0.25, -0.5, 0.25, -1.0, 0.25, 0.5, -1.0, 0.0, -0.25, -1.0, 0.0, 1.0, -0.5, 0.25, -0.25, -0.75, 1.0, 0.75, -1.0, -1.0, -1.0, 0.5, 1.0, 0.75, -0.5, 0.0, 0.75, -0.75, -0.5, 0.25, -0.25, 0.75, -0.75, -0.75, 0.25, -0.5, 0.75, -0.25, 0.25, 1.0, -0.75, 1.0, 0.25, -0.75, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, ]);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0020.setPipeline(render_pipeline003);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0040.insertDebugMarker("marker");
    texture000.destroy();
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query004
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group001);
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer004.destroy()
    render_pass_encoder0030.popDebugGroup();
    
    render_pass_encoder0050.setPipeline(render_pipeline000);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0030.beginOcclusionQuery(0)
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    
    render_pass_encoder0060.executeBundles([])
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
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

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0040.setStencilReference(1);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.submit([command_buffer000, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0060.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline004);
    
    render_pass_encoder0050.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0060.setPipeline(render_pipeline002);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0030.endOcclusionQuery()
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0040.popDebugGroup();
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
    device30.destroy();
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    query001.destroy()
    render_pass_encoder0020.popDebugGroup();
    buffer008.destroy()
    query004.destroy()
    const array4 = new Float32Array([0.75, -0.25, 0.5, -0.75, 1.0, 0.25, 0.75, -1.0, 0.5, -0.75, -1.0, 1.0, 0.0, 0.5, 0.0, -0.25, 1.0, 1.0, 0.5, -0.75, -0.5, 1.0, 0.25, -1.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.25, -1.0, 0.0, -0.5, 1.0, -0.5, -0.75, -0.25, 0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.75, 0.75, -0.25, 1.0, -0.25, -0.25, 0.5, 0.5, 0.25, 1.0, -0.5, -0.25, 0.75, 0.0, -0.75, 0.75, 1.0, 1.0, 0.75, 0.0, 0.0, 1.0, 0.5, 1.0, 0.0, 0.75, -1.0, -0.25, 1.0, 0.0, 0.0, -0.25, -0.5, -1.0, -0.25, 0.75, -0.75, 0.5, 0.75, 0.0, 0.25, -0.25, 0.0, 0.0, 0.5, -0.75, 0.5, 0.75, -0.5, -0.25, 0.75, -0.75, 1.0, 0.5, 1.0, -0.75, -0.25, ]);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group004);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    
    query003.destroy()
    
    query002.destroy()
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer009.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    buffer003.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const command_buffer200 = command_encoder200.finish();
    
    render_pass_encoder0060.insertDebugMarker("marker");
    buffer000.destroy()
    device20.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device00.pushErrorScope("internal");
    buffer0010.destroy()
    render_pass_encoder0020.setStencilReference(1);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0050.setStencilReference(1);
    
    render_bundle_encoder000.popDebugGroup();
    
    
    buffer006.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0060.setStencilReference(1);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture001.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    buffer002.destroy()
    render_pass_encoder0040.popDebugGroup();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0040.pushDebugGroup("group_marker");
    buffer001.destroy()
    buffer0012.destroy()
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    query000.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    texture200.destroy();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0060.pushDebugGroup("group_marker");
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
    render_pass_encoder0010.setStencilReference(1);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query001.destroy()
    const array5 = new Float32Array([0.0, -0.75, -0.5, 0.25, -0.5, 1.0, 1.0, -0.5, -0.5, 0.0, -0.5, 1.0, 0.0, -1.0, -0.75, 0.75, 0.0, 1.0, -0.25, 0.5, -1.0, -0.75, -0.25, 0.25, -0.5, 0.75, -0.25, -0.75, -0.75, 0.5, 1.0, -0.5, 0.5, 0.0, 0.25, -0.75, -1.0, -0.25, 0.75, 0.0, 0.0, 0.0, 1.0, 0.25, 0.75, 0.25, 0.5, -0.75, -1.0, 1.0, 0.75, 1.0, -0.25, 0.75, 0.25, 0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 0.75, -1.0, -0.25, -0.75, -0.25, -1.0, 0.75, -0.75, 1.0, -0.25, 0.25, 0.75, -0.75, 0.75, -0.75, 0.75, 0.75, -1.0, 0.75, 0.0, -0.5, -0.75, 0.25, -0.5, -0.75, 1.0, 1.0, 1.0, 0.25, 1.0, 0.75, -0.25, 0.0, 0.75, -1.0, 1.0, 0.25, 0.75, -1.0, ]);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array6 = new Float32Array([0.75, 0.5, -0.5, -1.0, 0.5, -0.25, 0.25, 0.25, -0.5, 1.0, 0.25, -1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 0.0, -0.5, 0.0, 0.75, 0.5, 1.0, -0.75, 0.0, 0.25, -0.25, -0.5, -0.5, 0.25, 0.0, 0.5, 0.5, -0.75, -1.0, 0.5, 0.0, 0.5, -1.0, -1.0, 0.75, 0.75, 0.0, 0.5, 0.75, -1.0, 0.75, 0.25, -0.5, -0.75, 1.0, 0.0, 0.25, -1.0, 0.0, -0.5, -0.25, -0.75, -0.5, 1.0, 1.0, -1.0, 0.0, 0.5, 1.0, -0.75, -0.75, -0.75, 0.5, 0.0, 0.0, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, 1.0, -0.25, 0.5, 0.75, 1.0, 0.75, 0.5, 0.5, 0.25, -0.5, 1.0, 0.5, 0.25, 0.75, 0.5, 0.0, -0.5, 0.0, 0.5, -0.25, 1.0, 0.25, 1.0, ]);
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    query004.destroy()
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.popDebugGroup();
    query002.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer005.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline008);
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group007);
    device00.pushErrorScope("out-of-memory");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0025 = texture002.createView({ label: "texture_view0025" });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.destroy();
    render_pass_encoder0020.popDebugGroup();
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query001.destroy()
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group008);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query005.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
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
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    texture003.destroy();
    render_pass_encoder0060.setStencilReference(1);
    
    
    render_pass_encoder0060.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0050.popDebugGroup();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer0011.destroy()
    
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder0040.setStencilReference(1);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0060.insertDebugMarker("marker");
    
    command_encoder201.insertDebugMarker("mymarker");
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
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2020.setPipeline(render_pipeline200);
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

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    
    
    
    buffer0016.destroy()
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0026 = texture002.createView({ label: "texture_view0026" });
    
    render_pass_encoder0050.setStencilReference(1);
    query000.destroy()
    const array7 = new Float32Array([-0.5, -0.75, 0.5, 0.0, 1.0, -1.0, 0.75, -0.25, 1.0, -0.25, -0.75, -0.75, 0.25, 1.0, 0.5, 0.0, -0.5, 0.25, 1.0, 0.0, 0.0, 0.75, 0.25, 0.5, -0.5, 0.5, 0.25, -0.5, 0.5, 0.5, -0.25, -0.5, 0.0, -0.5, 0.75, 0.25, 0.25, -0.5, 1.0, 0.5, -1.0, -0.5, 0.5, -0.25, -0.25, -0.75, 1.0, 0.5, 1.0, -0.75, 0.75, 0.0, -0.75, -0.75, -0.25, -1.0, 0.25, -1.0, -0.25, -0.5, -0.75, 1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, 1.0, 0.5, -1.0, 1.0, 0.25, 0.0, 0.0, 0.5, 0.25, -0.5, 0.25, -0.75, 1.0, -1.0, -0.75, 0.75, 0.5, 0.25, -0.25, 1.0, 0.75, 1.0, 0.0, 0.25, -1.0, -0.5, -0.5, 1.0, -0.5, ]);
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
        occlusionQuerySet: query200
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query001.destroy()
    device00.queue.writeBuffer(buffer0020, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0020, 0, array5, 0, array5.length);
    
    query201.destroy()
    
    
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    buffer0020.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0026,
            },
        ],
        occlusionQuerySet: query004
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    render_pass_encoder0070.setPipeline(render_pipeline0010);
    buffer0021.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    query001.destroy()
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setStencilReference(1);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder0070.pushDebugGroup("group_marker");
    query007.destroy()
    render_pass_encoder0060.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder2010.beginOcclusionQuery(0)
    
    render_pass_encoder2030.setPipeline(render_pipeline200);
    render_pass_encoder0060.popDebugGroup();
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

    render_pass_encoder2030.setBindGroup(0, bind_group201);
    render_pass_encoder0040.popDebugGroup();
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

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
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
        layout: render_pipeline0010.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group009);
    render_pass_encoder0030.popDebugGroup();
}