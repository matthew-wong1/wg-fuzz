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
    
    const array0 = new Float32Array([1.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, 0.75, 0.0, -1.0, -0.75, -0.75, -0.75, 0.5, -0.75, 0.5, -0.75, 0.0, 0.5, 0.5, 0.0, 0.75, -0.25, 0.75, -0.75, -0.5, 0.25, -0.25, 0.25, 1.0, 0.0, -0.75, 0.5, -0.25, -1.0, 0.0, 0.0, -0.25, -0.25, 0.75, -1.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.75, 0.75, 1.0, -0.5, 0.0, 0.0, 0.0, -0.5, -0.25, 0.25, 0.25, 0.5, 0.25, -0.5, 0.0, 0.0, 0.0, 0.25, 0.75, -0.75, -0.25, 0.75, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, 0.75, -0.75, 0.75, 0.5, -1.0, 0.0, -1.0, 0.0, -0.25, -0.25, 0.75, 0.75, 0.75, 0.75, 0.75, -1.0, 1.0, 0.75, 0.25, 0.5, 0.5, -1.0, 0.5, 0.5, 1.0, -0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.25, 0.25, -1.0, 0.75, -0.25, -0.5, 0.5, -0.75, 0.0, 1.0, -0.5, 0.0, -0.5, -0.75, -0.75, 0.75, 0.75, -0.75, -0.25, 0.75, -0.25, -0.25, 0.75, 0.75, -1.0, -1.0, -0.5, -0.5, 0.75, -0.5, -0.75, -0.75, 0.75, -0.75, 0.0, -0.75, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.75, 0.5, -0.5, -0.25, -0.75, -0.5, 0.0, -1.0, -0.75, 0.5, 0.5, -1.0, 1.0, 0.25, 1.0, -0.75, 0.5, -0.25, 0.0, 0.5, 1.0, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.5, -1.0, -1.0, -1.0, -0.25, 0.5, -0.5, -0.75, -0.25, 0.0, -0.75, -0.5, -0.5, -1.0, -0.75, 0.5, -0.75, 0.5, 0.5, -0.5, 0.25, 0.75, 0.75, 1.0, 0.25, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array2 = new Float32Array([-1.0, 0.0, 0.0, 0.5, 0.5, 0.25, -0.75, -0.75, 0.75, -0.25, -1.0, -0.5, -0.25, -0.5, 0.5, 1.0, 0.5, 1.0, -0.25, -1.0, -0.75, -0.75, 1.0, 0.75, 1.0, 1.0, 0.25, -0.75, -0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 0.75, -0.25, 0.75, 0.5, -0.5, -0.25, 0.0, -1.0, 1.0, 0.5, -0.5, -0.25, 1.0, 1.0, 0.75, 0.0, 0.75, -1.0, 0.5, 0.25, -0.75, -0.5, -0.5, 0.0, -1.0, 0.0, 0.25, 0.25, 0.5, -0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 0.75, -0.5, 0.5, 0.25, -0.5, -0.25, 0.75, 0.5, -0.25, 0.5, 1.0, 0.5, -1.0, -0.25, -0.5, 0.0, -0.25, -0.25, -1.0, -0.5, 1.0, 1.0, -0.25, -0.25, 0.25, -0.25, 0.25, 0.75, -0.25, 1.0, 0.75, ]);
    const array3 = new Float32Array([1.0, 1.0, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, -0.75, -0.75, 1.0, -0.75, -0.25, 1.0, -0.25, 0.25, -0.25, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, -1.0, -0.5, -0.75, -0.75, -0.5, -0.5, 0.0, 0.25, 0.5, 0.75, -0.25, -0.5, 0.75, 1.0, -0.5, 0.0, -0.5, -1.0, -1.0, -0.75, -0.5, -0.75, 0.5, 0.25, 0.5, -0.75, 0.75, -0.5, 0.0, -0.25, 0.0, -0.5, -0.75, -1.0, 0.5, 0.5, -0.5, -0.25, -0.75, 0.25, 0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 1.0, 0.5, 0.25, 0.25, 1.0, 0.75, 0.0, 0.5, 0.75, 0.5, -1.0, -1.0, -0.75, -0.5, -1.0, 0.0, 1.0, -0.25, -0.5, -0.75, -1.0, 1.0, 0.0, -0.75, -0.75, -0.5, 1.0, 0.5, 0.25, 0.75, 0.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    query000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query000.destroy()
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    buffer000.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const array4 = new Float32Array([-0.5, -0.5, 0.75, -0.25, -0.25, -0.5, -1.0, 0.75, 0.0, 0.0, -1.0, 0.25, -0.25, 0.5, -0.75, 0.75, 0.5, -0.75, -0.25, -0.25, 0.5, -0.5, -1.0, 0.75, -0.75, 0.25, 0.5, -0.25, 0.5, -1.0, -0.75, -0.75, -0.5, -1.0, -0.5, 0.0, -0.75, 0.0, 0.25, -0.25, 0.75, 0.75, 1.0, 0.75, -0.5, -0.5, -1.0, 1.0, 0.75, -1.0, -0.75, 0.75, 0.75, 1.0, -0.25, 0.5, 0.5, 0.0, 0.0, 0.0, 0.0, -0.25, -0.25, 0.5, 1.0, -0.25, -1.0, -0.5, -0.25, 0.0, -0.5, 0.5, 0.5, 0.0, -0.75, 0.25, -0.5, 1.0, -1.0, -0.25, 0.25, 0.0, 0.75, 0.25, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, 1.0, 0.5, -0.5, 0.75, 0.5, 0.75, 0.5, 0.5, -0.5, 0.0, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer002.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const command_buffer001 = command_encoder001.finish();
    
    
    query001.destroy()
    texture000.destroy();
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    query000.destroy()
    
    
    
    
    const array5 = new Float32Array([0.75, -0.5, 1.0, -0.5, 0.0, -1.0, -0.25, -1.0, 1.0, -0.25, -0.25, 0.0, -0.75, -0.25, 1.0, -1.0, 0.5, -0.5, 0.75, 1.0, 0.25, 0.0, -0.25, -0.75, -1.0, 1.0, -0.5, 0.0, 0.0, -0.75, 1.0, -0.25, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, 0.75, 0.0, -0.25, 0.5, 0.5, 0.25, 1.0, -0.75, -0.25, -1.0, -0.75, 0.0, -0.75, 0.25, -0.5, -0.25, 1.0, -0.5, -0.25, 0.0, -1.0, -1.0, 1.0, 0.25, 0.0, 1.0, -0.75, 0.25, -1.0, 0.75, -1.0, 0.75, -0.5, 0.0, 1.0, 1.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.75, 0.25, 0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.25, -1.0, 1.0, 0.25, -0.25, 0.0, -0.5, 0.5, 1.0, -0.75, 0.5, ]);
    
    
    const array6 = new Float32Array([0.0, 0.5, -1.0, 0.25, -0.75, 0.75, 0.75, 0.75, -0.5, 1.0, 0.5, 1.0, -0.75, -0.25, -0.5, -0.5, -0.5, -1.0, 0.25, -0.75, 0.25, 1.0, -0.75, 0.5, 0.5, 0.25, 0.75, -1.0, 0.0, -0.25, 0.75, 0.0, 0.25, 0.25, -0.5, -0.25, -0.25, 0.75, 0.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.75, 1.0, -0.25, -0.75, 0.5, 1.0, 0.75, -0.25, 0.75, -0.25, -0.75, -0.25, -1.0, 1.0, 0.0, -0.75, -0.25, -1.0, 0.5, 1.0, 1.0, 0.25, -0.25, 0.25, -0.5, -0.5, 0.0, -1.0, -1.0, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, 0.0, -1.0, 0.5, -0.25, -0.75, 0.5, 0.5, 0.0, -0.5, 0.5, 0.5, 0.25, 0.25, 1.0, -0.5, -0.25, -0.25, 1.0, 0.75, 1.0, -0.5, ]);
    query003.destroy()
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
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    device00.pushErrorScope("validation");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query003.destroy()
    
    
    
    query002.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query004.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device00.pushErrorScope("internal");
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    
    
    const array7 = new Float32Array([0.25, 0.5, -0.75, 0.5, 0.0, 0.0, -0.5, 0.25, 1.0, -0.5, 0.0, 0.75, -0.75, 0.5, 0.5, 0.0, 0.0, -1.0, -1.0, -1.0, 0.25, 0.0, -0.75, 1.0, -0.5, 0.0, 0.0, -0.75, -0.25, -0.25, -0.75, 0.25, 0.25, 1.0, 0.0, 0.25, 0.5, -0.25, -0.5, -0.5, 0.5, 0.0, -0.75, 0.0, 1.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.25, -0.5, -1.0, 0.0, -0.25, 0.75, 1.0, 1.0, -0.5, 0.75, 1.0, -0.25, -1.0, 0.5, 0.75, 0.0, 1.0, 1.0, 0.75, -1.0, 1.0, -0.75, 0.25, 0.25, 0.75, 0.25, -0.25, -1.0, 0.25, 0.25, 0.25, 1.0, -0.5, -0.5, 0.0, -1.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.75, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, 0.75, 1.0, ]);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    
    
    
    buffer005.destroy()
    query005.destroy()
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device40.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer004.destroy()
    
    
    buffer003.destroy()
    
    
    
    const array8 = new Float32Array([-1.0, -0.5, 0.5, 0.0, 0.5, -1.0, -0.75, -1.0, 0.5, 0.0, 0.5, -0.25, -0.75, -0.5, 0.25, 0.75, 0.0, -0.25, 0.25, 0.75, 0.75, 0.0, -0.75, -1.0, 0.25, 0.75, 0.0, -0.75, -0.25, 0.75, -1.0, -1.0, -0.5, 0.5, 1.0, -1.0, -1.0, 0.0, 0.0, 0.5, -0.75, -1.0, -1.0, -0.5, -0.5, 1.0, -0.25, 0.5, 0.0, 0.25, -0.75, 0.0, 0.5, -1.0, 0.75, 0.25, -1.0, -0.25, 0.75, -1.0, -1.0, -0.75, -0.25, -1.0, 1.0, 0.0, 0.25, 0.75, -0.25, 0.75, -0.75, -0.25, 0.5, 1.0, 0.75, -0.25, 0.5, 0.5, 0.0, -0.25, -1.0, 0.5, 0.5, 0.75, -1.0, 0.25, -0.5, 0.25, 1.0, 0.25, 0.5, 1.0, -0.5, 0.0, -0.5, -0.25, -0.75, 0.25, 0.75, -0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query002.destroy()
    render_bundle_encoder001.setVertexBuffer(0, buffer001);
    render_bundle_encoder000.popDebugGroup();
    buffer006.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    query000.destroy()
    render_bundle_encoder001.draw(3);
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    query005.destroy()
    
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array9 = new Float32Array([-0.5, 0.5, -0.75, 0.0, -0.5, -0.25, -1.0, -0.25, -0.5, 0.0, 0.5, 1.0, -0.75, 1.0, 0.0, 0.0, -0.25, -0.5, -0.75, -1.0, -0.5, 0.0, -0.5, 0.75, -0.25, -0.25, 1.0, 1.0, -1.0, -1.0, -0.75, 1.0, -0.25, -0.25, -0.5, -1.0, 0.75, 0.25, 1.0, 0.75, 0.5, 0.5, -0.75, 0.25, -0.75, -0.5, -0.25, 0.75, 0.0, 0.0, -0.75, -0.75, 0.25, -0.25, -1.0, 0.0, 1.0, -0.25, 0.25, 0.25, -0.5, 0.25, -1.0, -1.0, 0.75, -1.0, 0.5, 1.0, -0.25, -0.75, -0.5, 0.75, -0.25, -0.75, 0.0, 0.5, -0.25, -1.0, 0.25, 0.0, -0.75, -0.25, -0.5, -0.25, -0.25, -0.75, 0.0, 0.75, -1.0, 0.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, -0.5, 0.0, 0.0, 0.0, ]);
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    command_encoder003.popDebugGroup()
    query002.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
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
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query007.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.draw(3);
    render_bundle_encoder002.setPipeline(render_pipeline003);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    compute_pass_encoder0000.popDebugGroup()
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    buffer007.destroy()
    
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder301.insertDebugMarker("mymarker");
    const command_buffer300 = command_encoder300.finish();
    query002.destroy()
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const array10 = new Float32Array([0.75, 1.0, 0.5, 1.0, -0.25, 0.0, 0.5, 0.25, -0.25, -0.5, 0.25, 1.0, 0.5, 0.75, 0.75, 1.0, 0.5, -1.0, 0.75, 1.0, -0.5, -1.0, -0.5, 0.25, 0.75, -0.25, 0.75, -0.25, 1.0, -0.75, 0.5, 0.5, 1.0, 0.75, -0.25, -0.25, 0.25, 0.5, 0.75, -0.5, -0.5, 0.5, -0.5, 0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -1.0, -0.75, -1.0, -0.5, -0.75, -1.0, 1.0, -0.25, -1.0, 0.75, -1.0, 0.75, -0.25, 0.25, 0.5, -1.0, 0.75, -0.75, -0.75, 0.75, 0.75, -0.5, 0.0, -0.5, 0.5, 0.5, -0.25, 0.75, -0.75, 0.25, 0.0, -0.5, 0.25, 0.75, -0.25, 0.5, -0.5, 0.25, -0.5, -1.0, -0.75, 0.25, 1.0, -0.25, 0.0, 0.0, -0.75, 0.0, -0.25, -0.25, -0.75, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder302.clearBuffer(buffer301);
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    render_bundle_encoder000.finish();
    
    query007.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query001.destroy()
    
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query000.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    texture300.destroy();
    texture001.destroy();
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    query300.destroy()
    
    query008.destroy()
    
    query002.destroy()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query002.destroy()
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    
    
    query005.destroy()
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    query006.destroy()
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    texture301.destroy();
    
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    query002.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_bundle_encoder300.setPipeline(render_pipeline301);
    buffer302.destroy()
    compute_pass_encoder0000.popDebugGroup()
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    compute_pass_encoder0020.popDebugGroup()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_bundle_encoder301.insertDebugMarker("marker");
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
    buffer300.destroy()
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    
    
    buffer303.destroy()
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
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.pushErrorScope("out-of-memory");
    query005.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    device50.destroy();
    
    render_bundle_encoder002.setVertexBuffer(0, buffer001);
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder301.setPipeline(render_pipeline302);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder302.setPipeline(render_pipeline304);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query001.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    query301.destroy()
    query004.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline301);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    query002.destroy()
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer009, 0, array9, 0, array9.length);
    
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setPipeline(render_pipeline306);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    buffer009.destroy()
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    query302.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder002.draw(3);
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    buffer0012.destroy()
    buffer008.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group301);
    render_pass_encoder3030.insertDebugMarker("marker");
    compute_pass_encoder0020.setPipeline(compute_pipeline003);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    compute_pass_encoder0040.setBindGroup(0, bind_group003);
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
    render_bundle_encoder300.setVertexBuffer(0, buffer300);
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder300.draw(3);
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    buffer309.destroy()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    
    device80.destroy();
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query005.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device70.destroy();
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    query007.destroy()
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
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
    compute_pass_encoder0000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder304.pushDebugGroup("mygroupmarker")
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder3030.setVertexBuffer(0, buffer300);
    query003.destroy()
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([0.5, -0.5, 0.0, 0.25, 1.0, 1.0, 0.0, 0.25, 0.25, 0.75, 0.5, -0.25, 1.0, 0.5, 0.25, -0.75, -1.0, 0.25, -0.25, 0.75, -0.25, 0.25, 0.75, -0.5, -0.75, 0.5, -0.5, 0.5, 1.0, -0.5, -1.0, -0.5, 0.5, 1.0, -1.0, 0.25, 0.25, 0.25, 0.0, 0.75, 0.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.75, 0.25, -0.25, 0.5, 1.0, -0.75, 0.75, 0.5, 0.25, 0.25, -0.25, 0.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.25, 0.0, -1.0, 0.25, 0.25, 0.5, -1.0, 0.0, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 1.0, -0.25, 0.25, 0.25, 0.75, -1.0, -0.75, 0.5, 0.75, -0.75, 1.0, -0.25, -0.5, 1.0, 0.0, 0.25, 1.0, 0.0, 1.0, -0.5, -0.25, -0.75, -0.5, ]);
    render_bundle_encoder002.popDebugGroup();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setPipeline(render_pipeline306);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    compute_pass_encoder0040.end();
    const command_buffer004 = command_encoder004.finish();
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group004);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3030.end();
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group304);
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder3040.setVertexBuffer(0, buffer303);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3010.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0019, 0);
    render_pass_encoder3040.drawIndirect(buffer302, 0);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder3010.setVertexBuffer(0, buffer303);
    compute_pass_encoder0030.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder3010.draw(3);
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder3010.end();
    render_pass_encoder3040.end();
    command_encoder304.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    const command_buffer304 = command_encoder304.finish();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
}