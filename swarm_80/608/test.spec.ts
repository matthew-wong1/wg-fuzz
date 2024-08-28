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
    
    
    
    
    
    const array0 = new Float32Array([0.25, 0.75, 0.5, 0.75, 0.25, 0.75, 0.75, 0.5, 0.5, 0.25, -0.5, 0.0, -0.25, -0.5, 0.5, -0.5, 0.75, 0.75, 0.75, 1.0, 0.25, 0.25, 0.25, -0.5, -0.5, 0.0, 0.5, -0.5, 0.75, -0.75, -1.0, 0.25, 0.75, -1.0, -0.5, -0.25, 0.0, 0.5, -0.75, 0.0, 0.0, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, 1.0, -0.75, -0.75, 0.25, 0.0, -0.75, 0.25, -1.0, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, 1.0, 0.5, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, 1.0, 0.5, -0.5, -0.25, -0.25, -0.75, 0.75, -0.5, 1.0, -0.75, 1.0, 0.5, 1.0, 0.25, -0.75, 0.0, -1.0, 1.0, 0.25, -0.75, 0.5, -0.75, 0.0, 1.0, 0.75, 0.25, 1.0, 0.0, -0.25, 0.75, ]);
    
    
    const array1 = new Float32Array([-0.75, -0.5, 0.0, -1.0, -1.0, 0.0, 0.25, 1.0, -1.0, 0.25, -0.5, 1.0, 0.5, 0.0, -0.5, -0.25, 0.0, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, -0.75, -0.75, -0.75, 1.0, -0.25, 0.5, 0.25, -0.25, -0.5, 1.0, -0.75, 0.25, -0.25, 1.0, 0.25, -0.25, -1.0, -1.0, 0.25, -0.75, -0.5, 0.0, -1.0, 0.75, 1.0, 1.0, 0.25, -0.5, 1.0, 0.75, -0.25, 0.5, 1.0, 0.75, 1.0, 1.0, 1.0, -0.25, -0.75, 0.75, 0.5, -0.75, 0.5, 0.0, 1.0, -1.0, -0.25, 0.25, 0.5, 0.0, 0.0, 0.5, 0.75, 0.0, -0.5, 0.0, 1.0, -0.25, -1.0, -0.5, 0.0, 1.0, 0.25, 0.5, -0.25, -0.5, -0.25, -1.0, -1.0, -0.25, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array2 = new Float32Array([-1.0, -0.25, 1.0, 0.25, 1.0, 0.5, -0.25, -1.0, -0.5, 0.25, -0.25, 0.0, 0.25, -1.0, -0.5, 0.75, 0.75, -0.5, -0.75, -0.5, 0.75, 1.0, 0.0, 0.25, -0.75, -1.0, 0.25, -1.0, -0.25, -0.75, 0.25, -1.0, 0.25, 1.0, -0.75, -0.75, 1.0, -0.5, 0.0, 0.0, 0.0, 0.5, 0.5, -1.0, -0.5, 0.25, 0.75, 0.25, 1.0, -0.5, -0.5, -0.25, -0.75, 1.0, 0.25, -0.25, 1.0, -0.5, -1.0, -1.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.5, -0.25, -1.0, -0.75, 0.5, -0.75, 0.25, 0.0, 1.0, -1.0, 0.75, -1.0, 0.0, 0.0, 0.75, 1.0, -0.25, 0.75, 0.25, 1.0, 0.0, -1.0, -0.5, 0.75, 0.5, 0.75, -0.5, -0.75, 0.25, 0.75, 1.0, 0.0, 0.25, -1.0, -1.0, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer001 = command_encoder001.finish();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array3 = new Float32Array([0.25, -0.5, 0.5, 0.0, -1.0, 0.25, -0.75, -0.75, -1.0, 0.5, 0.5, 0.5, 0.25, -1.0, 0.5, -0.75, 0.75, -0.5, 0.75, -1.0, 1.0, -0.25, 0.0, -1.0, -0.5, 1.0, 1.0, 0.75, -0.5, 1.0, 0.75, -0.75, 0.0, 0.5, -0.75, -0.25, 0.5, 0.0, -0.5, 0.25, 0.75, -0.25, -0.25, 0.5, -0.75, -0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 0.0, -1.0, -1.0, 0.5, 0.5, 0.5, -0.5, -0.5, -0.5, -0.5, -0.75, -0.75, 0.25, 0.25, -0.25, -1.0, 0.5, 0.25, -0.25, -0.75, 0.75, 0.0, -0.25, 1.0, 0.25, -1.0, 0.0, -0.75, 0.75, 0.0, 0.0, -0.5, -1.0, 0.5, 1.0, 0.5, 0.0, -1.0, -0.75, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, -0.5, 0.25, -0.5, -0.75, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    texture002.destroy();
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    command_encoder003.insertDebugMarker("mymarker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    render_bundle_encoder001.popDebugGroup();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    texture000.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    command_encoder200.insertDebugMarker("mymarker");
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    texture003.destroy();
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer101.destroy()
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const array4 = new Float32Array([-0.5, 0.25, 0.75, 1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.0, 0.75, -0.75, -0.75, -1.0, -0.25, 0.75, -0.75, -0.75, -1.0, 0.5, 0.25, -1.0, -1.0, -1.0, 0.5, -0.25, -0.5, 0.25, 0.25, 0.0, 0.0, 0.0, 0.25, 0.0, 1.0, 0.25, 0.0, 1.0, 0.75, 0.0, -0.5, 0.5, -0.75, -0.75, -0.25, 0.5, -0.5, -0.5, -0.5, -0.75, 1.0, 0.5, -0.5, -1.0, 0.0, -0.5, -0.5, -1.0, 0.0, 0.5, 0.5, -0.5, 0.75, -1.0, -0.25, 0.5, -0.5, 0.5, 1.0, 1.0, 0.25, 0.75, -1.0, 1.0, 0.75, 0.5, 0.5, 0.75, 0.5, -0.5, -0.75, 1.0, 1.0, -0.5, 0.0, 1.0, -0.75, -0.75, -0.75, -1.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.25, -0.75, 0.5, 1.0, -0.5, ]);
    device20.queue.submit([command_buffer201, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("internal");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture100.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array5 = new Float32Array([-0.5, 0.0, 0.75, -1.0, 0.0, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, 1.0, -0.25, -1.0, 0.0, -0.25, 1.0, 0.0, 0.75, 0.25, 0.25, 0.0, 0.0, -0.5, 0.5, -0.25, -0.5, 0.75, -0.5, -0.25, -0.25, -0.5, 0.5, -0.75, -0.5, -1.0, -1.0, 0.75, -0.25, -0.5, -0.75, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 0.5, 0.25, -0.5, 0.25, 0.0, -0.5, 1.0, 1.0, -0.75, -1.0, -0.75, 0.25, 1.0, 0.25, -0.75, 0.0, 0.0, 0.5, -0.75, -1.0, -0.75, 0.5, 1.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.5, 0.5, 0.5, -0.5, 1.0, -0.25, 0.5, -1.0, -0.25, 0.25, -0.5, 0.25, -0.5, -1.0, -0.75, ]);
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
    query000.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer002.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline002);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder0040.setPipeline(render_pipeline003);
    const array6 = new Float32Array([0.0, -0.5, 0.25, -0.5, -0.75, 0.25, 0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 1.0, -0.25, -0.25, 0.5, 0.5, 0.75, 0.25, -1.0, -0.5, 1.0, 0.25, -1.0, 0.25, 0.0, -0.5, 0.5, 1.0, 0.5, 1.0, 0.5, -0.75, -1.0, -1.0, 0.0, 0.25, 0.25, 0.25, 0.25, -0.5, -0.75, 0.25, -0.25, -1.0, 0.25, -1.0, 0.0, -0.75, 0.5, -0.25, 0.25, 0.0, -0.5, -1.0, 0.25, 0.0, 0.75, -0.25, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 0.5, 0.0, -0.25, -1.0, 0.25, -0.25, 0.5, 0.0, 0.25, 0.75, -0.25, 0.25, -1.0, 0.0, -1.0, 0.75, -0.5, -0.75, 0.0, -1.0, 0.75, 0.5, 1.0, 0.5, -0.5, -0.25, 0.5, 0.25, 0.5, 0.5, 0.25, -0.25, 1.0, 0.0, -0.75, ]);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array7 = new Float32Array([0.0, 0.25, -0.75, 0.0, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, -1.0, 0.5, 1.0, -0.25, -0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.25, -1.0, 1.0, -0.5, -1.0, 0.75, 0.75, -0.75, -0.25, -0.5, 0.5, -0.75, -0.5, 0.25, 0.25, -0.75, 0.25, 0.75, -0.5, -1.0, -0.25, -0.25, 0.25, 0.0, 0.5, -0.25, -0.25, -0.5, 1.0, 0.25, -0.5, 0.5, 0.75, -1.0, 0.5, 0.25, 0.75, 0.0, 0.0, -0.75, 0.75, 0.75, 0.75, -1.0, -0.75, 0.5, -0.25, -0.5, 0.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.5, 0.5, 0.5, -0.25, 1.0, 0.25, -1.0, -0.5, -0.75, -0.5, -1.0, 0.5, 0.5, 0.75, -0.75, 0.5, -0.5, 0.5, -0.75, 0.25, -1.0, 0.0, -1.0, -1.0, 0.25, 1.0, ]);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("out-of-memory");
    texture102.destroy();
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    texture101.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    buffer200.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    query001.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query001.destroy()
    device10.destroy();
    
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.setStencilReference(1);
    command_encoder202.pushDebugGroup("mygroupmarker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query002.destroy()
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture004.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder0040.insertDebugMarker("marker");
    
    texture005.destroy();
    render_bundle_encoder002.popDebugGroup();
    command_encoder200.popDebugGroup()
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder202.insertDebugMarker("mymarker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    command_encoder202.popDebugGroup()
    const array8 = new Float32Array([0.5, -0.75, -0.25, 0.0, -0.5, -0.5, -1.0, 0.25, -0.25, 0.0, -1.0, 1.0, 0.75, 0.5, 1.0, 1.0, -0.75, -0.5, -0.25, -0.25, -1.0, -0.25, -1.0, -0.25, -0.5, -0.5, 0.25, -0.25, -0.25, 1.0, -0.75, 0.5, 0.0, 0.25, 0.75, 0.75, -1.0, 1.0, -1.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.5, 0.0, -1.0, -0.75, -1.0, 1.0, 1.0, -1.0, 0.25, 0.75, -0.75, 0.0, 0.25, -1.0, 0.5, 0.5, 0.25, -1.0, 1.0, 0.25, 0.25, -0.25, 0.25, 1.0, 0.25, -1.0, 0.0, 0.5, -0.75, 0.5, -0.25, 0.0, 1.0, 0.5, 0.75, -0.75, 0.0, 1.0, 0.0, 1.0, 1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 0.75, 0.75, 0.5, -0.75, 1.0, -0.75, 0.25, -0.25, 1.0, 0.25, ]);
    
    
    query000.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer008.destroy()
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    render_bundle_encoder000.insertDebugMarker("marker");
    query003.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query003.destroy()
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query003.destroy()
    render_bundle_encoder001.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder202.clearBuffer(buffer201);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.25, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, -0.25, 1.0, -0.25, 0.25, 1.0, -0.75, 0.25, 0.25, 0.75, -0.5, 0.5, -0.5, 1.0, -1.0, -0.75, -1.0, 1.0, 1.0, -0.5, -0.75, -1.0, -0.75, 0.25, -1.0, -0.75, 0.25, 0.5, 0.0, -1.0, 1.0, -0.75, 1.0, -0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 0.5, 0.75, -0.25, 0.5, -0.25, -1.0, 0.0, -1.0, 0.25, 0.0, -0.5, 0.25, -0.5, -1.0, 1.0, -0.5, -0.5, -0.5, 0.25, -1.0, 0.25, 0.5, -0.5, 0.25, -1.0, -0.75, -0.25, 0.75, 0.25, 0.0, -0.25, -0.25, 0.0, 0.0, -1.0, 0.0, -0.5, 0.75, -0.25, 0.25, 1.0, 0.0, 0.0, 0.75, 1.0, 1.0, 1.0, 0.5, 0.25, -0.75, -0.25, 0.5, -0.75, -1.0, -0.75, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const array10 = new Float32Array([-0.25, 0.25, 0.25, -0.5, 0.0, 0.5, -0.75, 0.25, 0.5, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, -1.0, 0.25, -1.0, -0.5, -0.5, 0.75, 0.75, 0.25, 1.0, 0.0, -1.0, -1.0, -1.0, -0.25, -0.25, -1.0, -0.75, 0.5, -0.5, -0.25, 0.0, 0.0, 0.75, 0.75, 0.75, -0.25, 1.0, -0.25, -0.75, 0.75, 1.0, -0.25, -0.75, -0.75, 0.75, 0.0, -0.25, -0.75, 0.25, -0.5, -0.5, 0.25, -0.75, 1.0, 0.0, 0.5, -0.25, -0.25, -0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -1.0, 0.5, 1.0, -1.0, 1.0, -1.0, 0.75, 1.0, 0.5, 0.75, 0.5, 0.75, 0.75, 1.0, -0.25, -0.75, 0.0, 0.5, 1.0, 0.75, 0.0, 0.25, -1.0, 0.75, -0.5, 0.5, -0.25, 0.25, 0.5, 0.0, -0.75, ]);
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query000.destroy()
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    query000.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture007.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture008.destroy();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const array11 = new Float32Array([0.5, -1.0, 0.5, 0.75, -1.0, 0.25, 0.0, -0.25, -0.5, -1.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.25, 0.0, -0.25, 0.5, 0.0, -0.75, -0.75, -0.75, 0.0, 1.0, 0.75, -0.5, 0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.25, 1.0, 0.75, 1.0, -1.0, 0.5, 0.5, 1.0, 0.5, -1.0, 0.25, -0.5, -0.75, 0.5, 0.0, 1.0, -0.5, -0.25, -1.0, 0.75, 0.0, -1.0, -0.25, 0.75, -0.5, -1.0, -0.5, -1.0, 0.0, -0.25, -1.0, 0.25, -0.25, -0.5, -0.5, -0.5, -1.0, -1.0, -0.5, -0.5, -1.0, 0.75, 0.25, 0.75, -0.75, 0.5, -1.0, -1.0, 0.5, 0.25, -0.25, 0.0, 1.0, 0.0, -1.0, -1.0, -0.75, 0.0, 0.25, 0.0, 0.5, 0.5, 1.0, -0.5, 0.0, 0.25, -1.0, ]);
    
    command_encoder202.clearBuffer(buffer201);
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    buffer005.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query003.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    query001.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    query001.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture006.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    compute_pass_encoder2020.insertDebugMarker("marker")
    buffer500.destroy()
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query003.destroy()
    texture200.destroy();
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    buffer501.destroy()
    query001.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    buffer300.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder203.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query004.destroy()
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query001
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.pushErrorScope("out-of-memory");
    query004.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeTexture({ texture: texture009 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer007.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    command_encoder203.clearBuffer(buffer201);
    device00.queue.writeTexture({ texture: texture009 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    buffer400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_pass_encoder0050.setPipeline(render_pipeline003);
    command_encoder300.pushDebugGroup("mygroupmarker")
    buffer502.destroy()
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.popDebugGroup();
    texture400.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder203.insertDebugMarker("mymarker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query200.destroy()
    
    buffer004.destroy()
    query004.destroy()
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    buffer302.destroy()
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    
    
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    
    render_pass_encoder0040.setStencilReference(1);
    
    device40.destroy();
    compute_pass_encoder2020.insertDebugMarker("marker")
    command_encoder301.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture009 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder2020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    buffer0011.destroy()
    
    command_encoder300.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    texture300.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder0050.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder002.popDebugGroup();
    query001.destroy()
    render_bundle_encoder302.popDebugGroup();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    render_bundle_encoder202.popDebugGroup();
    query301.destroy()
    device50.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture009 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    
    query006.destroy()
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    command_encoder006.insertDebugMarker("mymarker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query003
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_pass_encoder0060.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.setPipeline(render_pipeline006);
    const command_buffer500 = command_encoder500.finish();
    const command_buffer302 = command_encoder302.finish();
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group004);
    command_encoder300.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer302, ]);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
}