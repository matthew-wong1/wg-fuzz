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
    const array0 = new Float32Array([-0.25, 1.0, 1.0, 1.0, 0.25, 0.5, -0.25, 0.5, 1.0, 0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.0, -1.0, -0.5, 0.25, -0.5, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, 0.25, 0.5, 1.0, 0.5, -0.25, 1.0, -1.0, -0.25, 1.0, 0.75, 0.75, -0.5, 0.75, 0.5, 0.0, -1.0, -0.25, -0.5, -0.5, 0.75, 0.0, -1.0, 0.75, -0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 0.25, 1.0, 0.75, 0.75, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 0.25, 1.0, -0.25, 0.5, -0.75, 0.75, -0.75, -0.25, 1.0, 0.25, 0.5, 0.0, 0.5, 0.0, -1.0, -1.0, -1.0, 1.0, 0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 0.0, -0.75, 0.0, -1.0, -0.25, 1.0, 0.75, 0.25, 0.5, -0.25, -0.5, ]);
    const array1 = new Float32Array([-0.75, 0.5, 0.75, 1.0, 0.5, 0.75, -0.25, -0.5, 0.5, 0.25, -0.5, -0.75, -0.25, 1.0, 0.5, -0.75, 1.0, -1.0, 0.0, -0.25, 0.5, -0.5, -0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 1.0, 0.0, 0.0, -1.0, 0.0, 0.25, 1.0, -0.75, -1.0, 0.0, -0.5, -0.5, -0.25, 0.25, 1.0, -0.75, 0.75, 0.25, 0.75, 0.5, 0.25, 0.75, 0.5, -0.5, 0.25, 1.0, -0.5, -1.0, 1.0, -0.25, -0.25, -0.5, 1.0, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, 1.0, 0.75, 0.75, -0.75, 0.25, -1.0, 0.5, -0.75, -0.5, -0.25, 0.25, 0.25, -0.75, -0.75, -0.75, 0.25, 1.0, -0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, -0.25, -0.75, -0.75, 1.0, 0.75, -0.25, 0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([-0.75, -0.25, 0.75, -1.0, 0.0, -0.25, 0.0, -0.75, -0.75, 0.25, -0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 1.0, 0.5, -0.25, 0.25, -0.25, -0.25, 1.0, -0.25, -0.5, -0.75, -0.5, -1.0, -0.75, 0.5, 0.75, -1.0, -0.75, 0.75, 1.0, -1.0, 0.25, -1.0, 0.25, 0.75, 0.25, -0.75, -0.75, 0.75, -0.25, 0.25, 0.5, -0.75, -0.5, -1.0, -0.75, 0.5, -0.75, -1.0, 0.75, -0.75, -0.75, 1.0, 0.25, -0.75, 0.5, -0.25, 0.0, -0.75, 0.75, -0.75, 1.0, 0.25, 1.0, 0.5, 0.0, -1.0, -1.0, 0.5, -0.75, -0.75, -1.0, -1.0, -0.25, 0.25, -0.75, 0.0, -0.25, 0.25, -0.5, 0.0, 0.75, 0.0, -1.0, 0.75, -0.25, 1.0, -0.75, 1.0, 0.0, 0.25, -0.25, -0.5, 0.25, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    query000.destroy()
    
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    buffer000.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
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
    texture000.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    query000.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query002.destroy()
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
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
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query003.destroy()
    buffer001.destroy()
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query001.destroy()
    const array3 = new Float32Array([-1.0, 0.0, -0.75, 0.0, 0.0, -0.5, -0.25, -0.75, -0.75, -0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 0.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.0, -0.25, 0.0, -0.5, -1.0, 0.0, -0.75, -0.5, -0.5, -0.75, 0.75, -0.25, -0.75, 0.5, 0.5, -1.0, 0.75, 0.25, 0.0, 0.0, -0.25, 0.25, -0.75, 1.0, 0.5, 0.5, -0.25, -1.0, 0.0, 0.5, 1.0, 0.25, -0.25, 1.0, -0.5, 0.0, 1.0, -1.0, 0.0, -0.25, 1.0, -0.5, 0.25, -0.25, -0.25, -0.5, -0.75, 0.0, -0.5, -0.5, -1.0, -1.0, -1.0, 1.0, -1.0, -0.75, -0.75, 0.75, -0.5, 0.5, 0.75, -0.25, 0.75, 0.75, 0.5, 0.25, 0.5, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, 1.0, -0.75, 0.25, -0.5, 1.0, -0.5, ]);
    
    texture001.destroy();
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    
    query002.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    query002.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query004.destroy()
    buffer003.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query004.destroy()
    
    const array4 = new Float32Array([-0.5, 0.0, 0.25, 0.25, 1.0, 0.5, -0.5, -0.75, 0.5, 1.0, -0.25, 0.5, -0.75, -0.25, 0.5, -0.5, -0.25, 0.5, 0.75, 0.25, 0.0, 1.0, -0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.25, -1.0, -0.25, 0.5, 0.0, -0.25, 0.5, 1.0, 1.0, 0.5, 0.75, 0.0, -0.25, -1.0, 0.0, 0.25, -0.25, -0.75, 1.0, -0.25, 0.75, 1.0, 0.75, 0.75, -1.0, 0.75, 0.5, -1.0, -0.25, 1.0, 0.75, -0.25, -0.75, -0.25, -0.5, 0.25, 1.0, 1.0, 0.0, -1.0, -0.5, -1.0, 0.0, -1.0, -1.0, -0.5, -0.5, 0.5, 0.25, -0.5, 1.0, -0.75, -1.0, -1.0, 0.75, 0.5, -0.25, -1.0, 0.75, 0.75, 0.25, 0.0, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, -0.25, 0.5, ]);
    
    render_bundle_encoder002.popDebugGroup();
    const array5 = new Float32Array([0.0, -1.0, 0.75, -0.75, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, 1.0, 1.0, 1.0, 0.75, 0.5, 1.0, -0.25, -1.0, -0.25, 0.75, 0.0, -0.25, -0.75, -0.25, -0.25, -0.25, 0.25, 0.0, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.5, -0.75, 0.5, 0.0, -0.5, 1.0, -0.5, -1.0, -1.0, -1.0, 0.5, 0.25, 0.5, 1.0, -0.75, 0.5, 0.0, -0.25, -1.0, -0.75, -0.25, -0.5, -1.0, -0.25, 0.25, 0.75, 0.5, 0.0, 0.75, -1.0, 0.25, 1.0, 0.25, 0.0, -0.25, 1.0, -0.25, -0.75, 0.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.25, -0.5, 0.25, -0.5, 0.0, 0.25, 0.25, -0.25, 0.5, 0.75, -0.75, -0.75, -0.5, -0.5, 0.25, 1.0, 0.25, 0.0, -1.0, -0.5, -0.5, ]);
    query000.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    query001.destroy()
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query002.destroy()
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
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
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
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    
    buffer005.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    buffer006.destroy()
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.popDebugGroup()
    query003.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer002.destroy()
    
    query004.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    query002.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    query000.destroy()
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    query004.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query003.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    query000.destroy()
    query000.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0010.popDebugGroup()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    query004.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array6 = new Float32Array([-0.25, -0.25, 1.0, 1.0, -1.0, -0.25, -0.5, 0.75, 0.25, -0.25, 0.25, -0.25, -0.5, -0.5, 0.0, 0.25, 0.75, -0.5, 1.0, -0.75, 0.25, 1.0, -0.5, -0.5, 0.0, 0.75, 0.0, -0.5, -0.5, 0.25, -0.75, 0.75, -0.25, -0.75, -0.75, 0.75, 0.25, 0.25, 0.0, 0.0, 1.0, -0.5, 1.0, -0.75, -0.75, 1.0, 1.0, 0.5, 0.0, 0.0, -0.75, 0.25, 0.75, -0.25, -1.0, 0.5, 0.75, -0.5, -1.0, -0.25, 0.5, -1.0, 1.0, 0.0, -1.0, 0.0, 0.25, -0.25, 0.75, -0.5, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, 0.5, -0.25, 0.5, 0.5, 0.5, 0.5, 0.5, -1.0, 1.0, 1.0, -0.75, -1.0, -0.75, 0.75, 0.25, -0.5, 1.0, 0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 0.0, ]);
    query003.destroy()
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
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
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    query001.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
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
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder003.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    query003.destroy()
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0010.popDebugGroup()
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
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer007.destroy()
    buffer008.destroy()
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query006.destroy()
    
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    query008.destroy()
    query005.destroy()
    buffer004.destroy()
    query002.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query006.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder001.popDebugGroup();
    command_encoder004.resolveQuerySet(
        query008,
        0,
        32,
        buffer001,
        0
    )
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query005.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    buffer009.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query002.destroy()
    query003.destroy()
    const command_buffer005 = command_encoder005.finish();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query006.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-0.75, 1.0, -0.75, 0.5, 0.75, 0.5, 1.0, 0.75, 0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 0.5, 0.0, -0.75, 0.5, -0.75, -0.75, 0.25, 0.25, 1.0, -1.0, 0.75, -0.75, 0.75, -1.0, 0.25, -1.0, 0.75, 0.0, 0.5, 0.25, 0.25, 0.5, -1.0, 0.5, 1.0, -0.25, 0.75, -0.75, -0.25, 0.25, 1.0, -0.5, 0.25, 0.75, -1.0, 1.0, -0.75, 0.75, 0.25, 0.25, -0.75, -0.75, 0.25, -0.5, -0.75, 1.0, 0.0, 0.75, -0.75, -0.75, 1.0, 0.75, 0.0, 0.75, 0.0, 0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 0.25, -1.0, 1.0, -1.0, -1.0, -0.75, 0.5, -0.25, -0.25, -0.75, 0.0, -0.5, -0.25, 0.25, -0.25, -0.75, -0.75, 0.75, 0.0, 0.75, 0.75, -1.0, 0.75, 0.0, 0.5, ]);
    texture300.destroy();
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    texture402.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
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
    const command_buffer004 = command_encoder004.finish();
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    
    query009.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    
    
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    texture403.destroy();
    
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    query000.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    texture302.destroy();
    
    
    buffer402.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    compute_pass_encoder0000.popDebugGroup()
    
    texture401.destroy();
    query400.destroy()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder500.insertDebugMarker("mymarker");
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.pushDebugGroup("mygroupmarker")
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    buffer401.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder400.popDebugGroup();
    command_encoder500.pushDebugGroup("mygroupmarker")
    command_encoder006.insertDebugMarker("mymarker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query004.destroy()
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    buffer300.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query006.destroy()
    command_encoder006.resolveQuerySet(
        query008,
        0,
        32,
        buffer001,
        0
    )
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.submit([command_buffer004, ]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0020.popDebugGroup()
    command_encoder006.resolveQuerySet(
        query009,
        0,
        32,
        buffer000,
        0
    )
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder000.popDebugGroup();
    query004.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    device20.destroy();
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query000.destroy()
    query000.destroy()
    command_encoder006.resolveQuerySet(
        query007,
        0,
        32,
        buffer001,
        0
    )
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder006.resolveQuerySet(
        query006,
        0,
        32,
        buffer000,
        0
    )
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    texture003.destroy();
    const command_buffer301 = command_encoder301.finish();
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    query006.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder0000.popDebugGroup()
    command_encoder007.resolveQuerySet(
        query009,
        0,
        32,
        buffer001,
        0
    )
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    command_encoder006.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    command_encoder007.resolveQuerySet(
        query008,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer0011
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
    query001.destroy()
    
    buffer0011.destroy()
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder007.resolveQuerySet(
        query008,
        0,
        32,
        buffer000,
        0
    )
    
    
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder007.resolveQuerySet(
        query007,
        0,
        32,
        buffer001,
        0
    )
    command_encoder006.resolveQuerySet(
        query009,
        0,
        32,
        buffer000,
        0
    )
    query006.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array7, 0, array7.length);
    texture002.destroy();
    query009.destroy()
    texture301.destroy();
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    device00.queue.submit([command_buffer005, ]);
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    command_encoder006.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder007.pushDebugGroup("mygroupmarker")
    
    
    query008.destroy()
    command_encoder007.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query300.destroy()
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query009.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    
    query302.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    buffer0010.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder006.resolveQuerySet(
        query007,
        0,
        32,
        buffer001,
        0
    )
    command_encoder007.resolveQuerySet(
        query008,
        0,
        32,
        buffer000,
        0
    )
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    command_encoder007.resolveQuerySet(
        query009,
        0,
        32,
        buffer000,
        0
    )
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0030.popDebugGroup()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder0010.popDebugGroup()
    query006.destroy()
    
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder3000.popDebugGroup()
    query008.destroy()
    
    
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    query008.destroy()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder006.resolveQuerySet(
        query007,
        0,
        32,
        buffer000,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder0030.popDebugGroup()
    command_encoder006.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer006, ]);
}