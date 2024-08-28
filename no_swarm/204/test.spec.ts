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
    const array0 = new Float32Array([-0.5, 0.25, -1.0, 0.75, -0.5, -0.75, 0.75, -0.25, -1.0, 0.5, 0.0, 0.5, -0.75, 0.0, 0.0, 0.75, -0.75, 0.5, -1.0, -0.25, 0.0, -0.5, 0.0, -0.75, 0.75, -0.25, 0.25, 0.0, 0.0, 0.0, -0.25, -1.0, 1.0, -1.0, 0.25, -0.5, 0.25, -0.5, -0.25, 0.25, 0.25, 0.25, 0.25, 0.25, -0.5, 0.75, -0.25, 0.75, 1.0, -0.75, 0.25, -0.75, -1.0, -0.25, -0.75, 1.0, -0.5, -0.5, -0.5, -1.0, -0.5, 0.0, -0.5, -0.25, -0.75, -1.0, 1.0, -0.75, 0.0, -0.25, -0.25, -0.5, 0.5, -0.5, -0.75, -1.0, 0.25, 0.75, 0.25, -0.5, -1.0, -0.25, -1.0, -1.0, 0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -0.75, 0.25, -0.25, 0.5, -0.75, -0.75, -1.0, -1.0, 0.75, -0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([0.0, 1.0, 0.25, -1.0, -0.25, 1.0, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, 0.25, -1.0, 0.25, 0.5, -0.5, -0.5, -1.0, -0.5, 0.0, 0.5, -0.5, -1.0, 0.0, -0.5, 1.0, 0.0, -0.5, 1.0, 0.25, 1.0, -1.0, -0.5, 0.0, -0.75, -0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.5, -0.5, 0.25, -0.5, -0.5, 0.0, -0.25, -1.0, -1.0, 0.5, -0.25, 0.75, -0.5, -0.5, -0.25, -1.0, -0.5, -0.5, -0.25, -0.5, -0.5, -0.75, -0.75, -0.5, 0.75, 0.75, 0.5, -0.25, -0.25, -0.75, 1.0, 0.5, -0.25, 0.25, -0.75, 1.0, 0.75, 0.25, 0.5, 1.0, -0.5, 0.0, -1.0, 0.5, -1.0, 0.5, -0.75, -0.25, 0.75, -0.75, 0.25, 0.5, 0.0, 0.0, 0.5, 0.25, -0.25, -0.25, ]);
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.insertDebugMarker("mymarker");
    texture001.destroy();
    
    texture000.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.pushErrorScope("out-of-memory");
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
        occlusionQuerySet: query001
    });
    const query002 = device00.createQuerySet({
        label: "query002",
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
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.executeBundles([])
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.pushErrorScope("validation");
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_buffer002 = command_encoder002.finish();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.setPipeline(render_pipeline002);
    
    
    render_pass_encoder0000.setPipeline(render_pipeline001);
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setStencilReference(1);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.submit([command_buffer002, ]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0000.popDebugGroup();
    query004.destroy()
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    render_bundle_encoder000.setPipeline(render_pipeline002);
    query004.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
    buffer001.destroy()
    
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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

    render_pass_encoder0000.setBindGroup(0, bind_group001);
    texture002.destroy();
    query000.destroy()
    query000.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer000.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device10.pushErrorScope("validation");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        occlusionQuerySet: query002
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder0040.setPipeline(render_pipeline003);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query003.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder0000.setStencilReference(1);
    buffer002.destroy()
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query001.destroy()
    query000.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder0040.beginOcclusionQuery(0)
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const array2 = new Float32Array([0.25, -1.0, -0.5, 0.75, 0.5, -0.25, 1.0, 0.5, 0.5, -0.75, 0.5, 0.0, -0.75, 0.25, 0.25, -0.25, -0.25, 0.0, 0.25, -1.0, -0.25, 1.0, 0.5, -1.0, 0.0, 0.0, 1.0, -1.0, -0.75, 0.75, -1.0, -0.25, 0.0, -0.5, 0.5, 0.75, 0.25, 0.25, 0.5, 1.0, -0.75, 1.0, -0.5, 0.0, -1.0, -0.25, -0.25, -0.25, 0.25, -0.25, -0.5, -0.5, -0.75, 0.75, -0.25, -0.5, -0.25, -0.25, -1.0, 0.5, 0.25, -0.5, 0.5, -1.0, 0.5, 0.5, 1.0, 1.0, -1.0, 0.25, 0.25, -0.75, -0.25, 0.75, -0.5, -0.75, 0.5, -0.25, 1.0, 0.5, 0.75, 0.75, 0.75, -0.5, 0.25, 1.0, -0.25, -0.25, -0.25, 0.75, 1.0, -0.5, -0.5, 0.0, 0.5, -0.75, 0.5, -0.75, -0.75, 0.25, ]);
    buffer006.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0010.insertDebugMarker("marker");
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
    buffer003.destroy()
    
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([0.0, -1.0, 0.25, 0.25, 0.25, -0.75, -1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.0, -0.5, 0.0, -0.5, 1.0, -0.25, -1.0, 0.75, -0.75, 0.5, 0.25, 0.25, -0.75, 0.25, -1.0, 0.5, 1.0, 0.75, 0.75, -0.5, -0.5, 0.5, -1.0, 1.0, 0.75, 0.75, 0.25, 1.0, 0.75, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.25, -1.0, 0.25, -0.5, -0.5, 0.5, -0.25, 0.75, -0.5, -0.75, 0.0, 0.5, 0.0, 0.0, 0.75, 0.5, 0.0, -0.5, 0.25, 0.25, 0.75, -1.0, -1.0, 0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -0.25, 1.0, -0.5, 0.75, 0.25, -0.75, 0.75, 1.0, -1.0, -0.25, -0.5, -0.75, -0.25, 0.5, 0.5, -0.75, 1.0, -0.5, 0.0, ]);
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setPipeline(render_pipeline002);
    buffer005.destroy()
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    
    render_pass_encoder0050.insertDebugMarker("marker");
    
    buffer004.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer009.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query001.destroy()
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
    query000.destroy()
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    query005.destroy()
    buffer101.destroy()
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setStencilReference(1);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0000.setStencilReference(1);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer008.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query100.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
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
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    texture100.destroy();
    render_pass_encoder0040.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array4 = new Float32Array([-1.0, -0.5, 0.25, 0.25, -0.75, 1.0, -0.75, -0.75, 1.0, -0.75, 0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 1.0, 1.0, 0.25, 0.5, 1.0, -1.0, -0.25, 0.75, -0.75, -0.75, 0.5, 0.5, 0.75, 0.0, 0.0, -1.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.5, -0.75, 0.25, -0.5, 0.0, 0.0, 0.5, 0.5, 0.0, 1.0, 0.75, -1.0, 0.0, -0.25, -1.0, 0.75, 1.0, 0.75, -1.0, 0.75, 0.75, 0.25, 0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 0.0, -0.75, 1.0, -1.0, 0.75, 0.0, -0.25, 0.5, 0.5, -1.0, -1.0, -0.25, 0.5, -0.75, -0.25, 1.0, 0.0, -0.25, -0.75, 0.25, 0.5, 1.0, -0.5, -0.75, -0.25, 0.75, 0.25, -0.5, 0.5, -0.5, -0.25, -0.5, -1.0, 0.5, 0.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    buffer0011.destroy()
    const array5 = new Float32Array([-0.25, -1.0, -0.25, 0.75, 0.75, 0.0, 0.5, 0.25, -0.75, 0.25, 0.25, 0.75, 0.25, 0.25, -0.5, -1.0, 0.75, 0.25, 0.0, 0.5, 0.5, 1.0, 1.0, -0.75, -0.5, 0.0, -0.25, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, -0.25, -0.75, 0.0, 0.5, -0.5, 0.25, 0.5, 0.0, 0.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.75, -0.75, -0.75, 0.5, -0.75, -0.5, -1.0, -0.5, -0.75, -0.25, 0.75, -0.75, -0.75, -0.5, -0.5, -0.25, -0.75, -0.75, -0.75, 0.75, -0.5, -0.5, 1.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.25, -0.5, 1.0, -1.0, -0.25, -0.5, 0.25, -0.5, 0.5, 0.0, 0.25, 1.0, -0.25, -0.25, 0.75, 0.25, 0.25, 0.25, 0.25, 0.5, 0.75, 0.0, -0.25, -0.25, -0.25, ]);
    const array6 = new Float32Array([0.25, 0.75, 0.5, 0.75, -0.25, 0.75, -0.75, -1.0, 0.0, -0.25, -0.5, -1.0, -0.5, 1.0, -1.0, -0.75, -1.0, -0.5, 1.0, 0.5, 0.5, -0.25, 0.5, 1.0, -0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 0.0, 0.75, -0.25, 0.5, 0.0, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, -0.25, 0.75, 0.75, -0.25, 0.0, 1.0, 1.0, 0.5, 0.75, 0.75, 1.0, -0.5, 0.25, 0.25, 1.0, -0.5, 1.0, -0.25, 1.0, -0.25, 0.75, -0.25, -0.75, 1.0, 0.75, -0.75, -0.5, 0.25, 0.0, -1.0, 0.75, 1.0, 0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, -0.25, 0.25, 1.0, 1.0, 0.5, 0.25, 0.0, 0.75, 1.0, -0.5, 0.25, 0.0, 0.25, -0.75, -0.75, ]);
    device10.pushErrorScope("out-of-memory");
    query101.destroy()
    texture003.destroy();
    render_bundle_encoder002.setPipeline(render_pipeline003);
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    
    query100.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    texture103.destroy();
    render_pass_encoder0050.setStencilReference(1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0014, 0);
    render_pass_encoder0010.popDebugGroup();
    
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query100.destroy()
    
    buffer0013.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0014, 0, array2, 0, array2.length);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0014, 0, array2, 0, array2.length);
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
    device00.queue.writeBuffer(buffer0014, 0, array3, 0, array3.length);
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    render_bundle_encoder100.setPipeline(render_pipeline104);
    
    query000.destroy()
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setStencilReference(1);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query005.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    buffer0012.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query100.destroy()
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    buffer0010.destroy()
    query007.destroy()
    
    query009.destroy()
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query008.destroy()
    query006.destroy()
    device00.queue.writeBuffer(buffer0014, 0, array0, 0, array0.length);
    query000.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    buffer0014.destroy()
    const array7 = new Float32Array([0.75, 0.0, 1.0, -0.25, 0.75, 0.0, -0.25, -0.25, 1.0, -1.0, -0.5, 0.0, -0.5, 0.5, 0.25, 0.75, 1.0, -1.0, 0.0, -1.0, 0.5, -0.25, 0.5, -1.0, -0.5, -1.0, 1.0, 0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 0.75, -0.75, 0.5, -1.0, 0.0, -0.5, 0.75, -0.5, -1.0, 0.75, 0.0, -0.5, -0.75, -0.5, 0.0, 0.25, -0.5, 0.75, 0.25, 0.0, 0.75, 0.75, -0.25, -0.5, 1.0, -0.5, 1.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.0, -0.5, -0.75, -0.25, 0.25, 0.25, 0.25, 0.0, 0.0, 0.75, 0.75, 0.75, 0.75, 1.0, 0.75, -0.5, -1.0, -0.75, 1.0, 0.0, 0.75, 0.25, -0.75, -0.5, -1.0, 0.0, -0.75, 1.0, -0.5, 0.25, 1.0, -0.75, 0.25, 1.0, 0.25, ]);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group007);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query008.destroy()
    query005.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    texture101.destroy();
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    query004.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query102.destroy()
    buffer0017.destroy()
    
    query006.destroy()
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    query002.destroy()
    
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0016.destroy()
    query102.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
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
        occlusionQuerySet: query009
    });
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder002.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query005.destroy()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0040.setStencilReference(1);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query009.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.setPipeline(render_pipeline0012);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline0012.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    compute_pass_encoder0030.end();
    const command_buffer003 = command_encoder003.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}