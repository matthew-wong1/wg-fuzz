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
    const array0 = new Float32Array([-0.25, -0.5, 1.0, -0.5, 0.25, 0.0, -1.0, 0.75, -1.0, -1.0, -0.75, 0.0, 0.0, 0.25, -1.0, 0.0, -0.75, 0.0, -0.75, 0.0, -1.0, 0.25, 0.5, -0.5, -0.25, -0.5, 0.75, 0.25, -1.0, 0.0, 0.0, -0.25, 0.25, 0.25, 0.75, 0.25, -1.0, -0.5, 0.0, -0.25, -0.75, 1.0, 1.0, 0.5, 0.5, -1.0, 0.5, 0.5, 1.0, 0.25, -0.5, 0.5, 0.5, 0.25, -1.0, 0.25, 0.0, -0.25, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, 0.25, 0.25, 0.75, -0.25, 0.0, 1.0, -0.25, 0.75, -0.25, -0.75, 0.0, 1.0, -1.0, -0.75, -0.75, 1.0, 1.0, 1.0, 0.5, 1.0, 0.0, -0.75, 0.75, -0.75, 0.5, -0.75, -1.0, 0.5, 0.25, 0.25, 0.5, 0.75, -0.5, -0.25, -1.0, -1.0, ]);
    
    const array1 = new Float32Array([-0.25, 0.0, -1.0, 0.5, 0.0, -0.5, -0.5, -0.5, -0.75, 0.0, -0.25, -0.75, -0.75, 0.0, 0.0, 0.75, -1.0, -1.0, -0.75, -0.25, -0.75, -0.5, 0.5, -0.5, -0.25, -0.75, -1.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.0, 0.25, 0.75, -1.0, -0.25, -0.25, 0.5, 1.0, 0.0, 0.0, -1.0, -0.25, 0.25, 0.25, -0.5, -0.25, 1.0, 0.25, 0.0, -1.0, 0.5, -1.0, -0.75, 0.75, 0.0, -0.25, 0.0, 1.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.25, -1.0, 0.0, -0.25, -0.75, 0.25, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, -1.0, -0.5, 1.0, 1.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.0, 0.75, -0.5, -0.5, -0.75, -0.25, -0.25, 0.75, 0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const array2 = new Float32Array([0.75, 0.0, 1.0, 0.25, 0.75, 0.0, 1.0, -0.25, -0.5, 1.0, 1.0, -0.75, 1.0, 0.0, 0.0, -0.25, -0.75, 0.25, -0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 0.5, -0.75, -1.0, 0.25, -0.5, 0.0, 1.0, 1.0, -1.0, 1.0, -0.25, 1.0, 0.75, 0.0, 1.0, 0.25, -0.75, -1.0, -0.25, 0.75, -1.0, -1.0, 0.25, -0.75, -0.75, -0.25, -0.5, -0.5, 0.0, 0.0, 1.0, 0.5, 0.0, 0.25, -0.75, -0.75, 1.0, -0.5, -1.0, 1.0, 0.5, -0.5, 1.0, 0.75, -0.5, -1.0, -0.75, 0.25, -0.75, 0.75, -0.25, 0.75, 0.5, 1.0, -0.25, -0.75, -0.75, 0.25, 0.25, 0.5, -0.25, -1.0, -0.5, -0.25, 0.75, -0.75, -0.25, -0.25, 1.0, 1.0, 0.75, -0.75, 0.5, 0.0, 0.0, 0.25, ]);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.pushErrorScope("out-of-memory");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("out-of-memory");
    const texture101 = device10.createTexture({
        label: "texture101",
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
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const array3 = new Float32Array([-0.5, 0.5, 0.5, -1.0, 0.0, 0.0, -0.5, -0.75, 0.0, 0.0, -0.75, 0.5, 1.0, 0.75, 1.0, 0.75, -0.25, 0.0, 0.75, -0.25, 0.5, -0.5, 0.0, 0.0, 0.25, 0.0, 0.5, 0.0, 0.75, 1.0, 1.0, 0.25, -0.5, -0.5, 0.25, -0.5, -0.75, -0.25, 0.25, 1.0, 0.75, 0.25, 0.5, 0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.25, -1.0, 0.25, 0.25, 1.0, -1.0, 0.0, -0.25, 0.75, 0.0, -0.5, -1.0, 0.5, -0.25, 0.75, 0.75, 0.5, 0.75, -0.75, 1.0, 0.0, 0.25, 0.0, -0.25, -0.75, -0.75, 1.0, 0.25, -0.5, 0.0, -0.75, 0.75, 0.25, 0.25, 0.0, -0.75, 0.0, -1.0, -0.5, 0.0, 0.5, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, -0.75, -1.0, -0.75, 1.0, ]);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture100.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array4 = new Float32Array([0.75, 0.25, -1.0, -0.5, 0.5, -1.0, 1.0, -0.75, -0.5, -1.0, -0.5, -0.25, 0.75, 0.5, 0.25, 1.0, -0.25, 0.75, 1.0, 0.5, 0.0, -0.75, -0.25, -1.0, 0.25, -0.5, -0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.75, 0.0, 0.75, -0.5, -0.5, 0.25, 0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.0, 1.0, 0.25, -0.5, -0.25, 1.0, -1.0, 0.5, -0.5, -1.0, 0.75, -0.75, -0.5, 0.5, -0.25, -0.25, -0.5, -0.75, -0.25, -0.5, 0.0, 0.5, 1.0, -1.0, 0.0, 0.5, -1.0, 0.25, -0.75, -0.75, 0.25, -1.0, 0.25, -0.25, -0.5, 1.0, 0.75, 1.0, -1.0, -0.75, 0.0, -0.75, 1.0, 0.25, -0.5, 0.75, 0.25, -0.75, 0.75, 0.5, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
        occlusionQuerySet: undefined
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer001.destroy()
    buffer100.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline001);
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const array5 = new Float32Array([-0.75, -1.0, 0.5, 1.0, -0.75, 1.0, 0.75, -0.25, 0.25, 0.75, -0.5, 0.0, 1.0, -0.75, -1.0, -1.0, 0.25, 0.25, -0.25, 0.75, -0.25, 0.75, 0.75, 0.5, 1.0, 0.25, 0.25, 0.5, 0.5, 0.0, -1.0, 0.0, -0.5, 0.25, 0.25, 1.0, -0.75, 0.0, -0.5, 0.25, 0.5, 0.5, 0.5, -0.75, -1.0, -0.75, 0.0, 0.25, -0.5, 0.0, -0.25, -0.5, 1.0, -0.75, 1.0, -0.75, -0.75, 0.0, 0.5, -0.25, -0.5, -0.25, -0.75, -0.75, 0.0, 1.0, 0.75, 0.25, 1.0, -1.0, 0.25, -0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, 0.75, -1.0, 1.0, 0.5, 1.0, 0.75, 0.5, 0.75, -0.5, -0.75, -0.75, -0.5, 0.25, 0.75, 1.0, 0.75, -0.25, 0.5, -0.25, -0.75, -0.75, 1.0, ]);
    render_bundle_encoder000.popDebugGroup();
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder0010.setStencilReference(1);
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
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture103.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    buffer003.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture101.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder000.popDebugGroup()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    texture105.destroy();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder000.insertDebugMarker("mymarker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.0, -1.0, 1.0, -0.75, -1.0, 0.0, -0.75, -0.75, 0.75, 0.0, 1.0, -0.5, 0.75, 0.5, -0.25, 1.0, 0.0, 0.25, -0.75, -0.75, -0.5, 0.0, 0.0, 0.0, -0.5, -0.5, 0.75, 0.75, -0.75, -0.75, 0.75, -0.5, -1.0, 1.0, -1.0, -0.75, -0.5, -0.75, 1.0, 0.5, 0.5, 0.75, 1.0, 0.5, -0.75, -0.75, -0.25, 1.0, -0.75, -0.5, 0.0, 0.25, -0.5, 0.0, 0.0, 0.75, 0.75, 1.0, -0.25, 1.0, 0.75, 1.0, -0.25, 0.25, -0.25, -0.25, -0.5, -0.25, 0.25, -0.75, -0.75, 1.0, -0.75, 0.5, -0.25, 0.75, 0.5, 0.0, 0.0, -0.25, -1.0, 0.75, 0.0, -0.25, 0.0, 0.5, -1.0, 0.5, -0.5, 0.25, 1.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.25, -1.0, 0.75, 0.5, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    
    render_bundle_encoder000.popDebugGroup();
    const array7 = new Float32Array([0.0, 1.0, -0.5, -0.5, 0.75, 0.0, -0.5, -0.75, 0.25, 0.5, -0.75, -0.75, 0.0, 0.25, 0.5, 0.0, -0.25, -1.0, 0.0, 1.0, 0.75, 0.25, -0.75, 0.5, -0.25, -0.25, 0.0, 0.75, 0.5, 1.0, 1.0, -0.75, -0.75, -0.75, -0.75, 1.0, -0.25, 0.5, -1.0, -0.25, 1.0, -0.5, 0.5, 0.0, 0.25, 0.5, 0.25, 0.5, 1.0, -0.25, -0.5, 0.0, -1.0, -0.25, 0.25, 1.0, 0.5, 0.0, 0.75, 0.5, -0.25, 0.0, -1.0, -0.75, 1.0, 0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.75, -1.0, 1.0, -0.75, -0.25, -0.75, 0.25, 0.5, -0.25, -0.25, 0.25, 0.75, -1.0, 0.0, 1.0, -0.75, 0.75, -0.5, 1.0, 0.75, 0.75, 0.0, 0.5, 0.5, -1.0, -0.75, -0.75, 0.5, -1.0, ]);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
        occlusionQuerySet: undefined
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    texture102.destroy();
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder1020.beginOcclusionQuery(0)
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query000.destroy()
    query001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    render_pass_encoder0010.setStencilReference(1);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    buffer005.destroy()
    
    
    render_bundle_encoder000.setPipeline(render_pipeline004);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("internal");
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query001.destroy()
    query001.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
        layout: render_pipeline004.getBindGroupLayout(0),
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    query002.destroy()
    buffer007.destroy()
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0000.setStencilReference(1);
    buffer101.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query000.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder1030.popDebugGroup()
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder0000.pushDebugGroup("group_marker");
    texture106.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer008.destroy()
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query002.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_bundle_encoder002.setPipeline(render_pipeline003);
    const array8 = new Float32Array([0.0, 0.0, 0.5, 0.0, -0.25, -1.0, 0.25, -0.75, 0.5, -1.0, -0.5, 0.5, -1.0, 0.5, -0.25, 1.0, -0.25, -1.0, -0.25, -0.5, 0.0, 1.0, 0.75, 0.5, 0.5, 0.25, 0.25, 0.5, 0.5, -0.5, 1.0, -0.25, 0.5, -0.5, 0.75, 0.75, 0.0, -0.5, 0.25, 0.0, 0.0, -0.25, -0.5, 0.75, 0.0, -0.5, -0.25, 0.5, -0.5, -0.5, 0.75, -0.75, 0.0, -0.25, 0.75, -0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 0.75, 0.5, 0.25, -0.25, -0.25, -1.0, 0.0, 0.75, 0.25, 0.5, -1.0, 0.75, 0.25, 0.75, -0.75, 0.0, 0.5, 0.75, -0.75, 1.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.75, 0.25, -0.5, 1.0, 0.5, 0.25, 1.0, 0.75, 0.75, -0.5, -0.75, -1.0, 0.0, 0.5, ]);
    
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
    
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    buffer006.destroy()
    texture002.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    texture104.destroy();
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
    device20.destroy();
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.popDebugGroup();
    
    render_bundle_encoder000.popDebugGroup();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array9 = new Float32Array([-0.75, 0.0, -1.0, 0.5, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, 0.25, 0.75, 0.5, -0.75, -1.0, -0.5, 0.25, 1.0, 1.0, 0.0, 0.25, 0.75, 0.25, 1.0, 0.25, 1.0, -0.25, -0.75, -0.25, 0.75, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, 0.75, 1.0, -0.5, 0.75, -0.5, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, -0.5, 1.0, 0.25, -0.25, -0.75, 0.5, -0.75, -1.0, 0.25, -0.5, -0.25, 0.5, -0.5, 1.0, 1.0, 0.5, -0.5, 1.0, 0.0, 0.5, 0.25, 0.0, 1.0, 0.25, 0.5, -0.25, 0.25, 1.0, 0.0, -1.0, -0.5, 0.0, 0.25, 1.0, -0.75, 1.0, -1.0, 0.5, -0.5, -0.5, -0.75, 1.0, -1.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.75, -0.5, 0.75, -0.5, 0.5, ]);
    buffer009.destroy()
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    render_pass_encoder1020.endOcclusionQuery()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.pushErrorScope("validation");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer0011.destroy()
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    
    buffer004.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query002.destroy()
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder102.setPipeline(render_pipeline100);
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
    render_pass_encoder1020.beginOcclusionQuery(1)
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
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
    
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer104.destroy()
    
    render_pass_encoder0020.setPipeline(render_pipeline007);
    
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1040.setStencilReference(1);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group101);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.executeBundles([])
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.popDebugGroup();
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query002.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    buffer300.destroy()
    
    render_bundle_encoder102.popDebugGroup();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query003
    });
    query003.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query001.destroy()
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0030.setPipeline(render_pipeline007);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1040.setVertexBuffer(0, buffer108);
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1060.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.insertDebugMarker("marker");
    
    device40.pushErrorScope("internal");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1060.setStencilReference(1);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder0030.popDebugGroup();
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
        layout: render_pipeline007.getBindGroupLayout(0),
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
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1060.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1060.setStencilReference(1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder300.insertDebugMarker("mymarker");
    compute_pass_encoder1050.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder1060.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    buffer109.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer107.destroy()
    render_pass_encoder1060.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const command_buffer300 = command_encoder300.finish();
    
    buffer400.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    
    buffer1011.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.setPipeline(render_pipeline101);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1040.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.endOcclusionQuery()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer100, ]);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1060.setBindGroup(0, bind_group104);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.setVertexBuffer(0, buffer108);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1060.draw(3);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group105);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1050.end();
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1020.setVertexBuffer(0, buffer108);
    render_pass_encoder1020.draw(3);
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1021, 0);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1020.end();
    command_encoder102.popDebugGroup()
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    compute_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer103, ]);
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
}