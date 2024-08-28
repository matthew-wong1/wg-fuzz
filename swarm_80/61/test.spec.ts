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
    const array0 = new Float32Array([-0.25, 0.0, -0.25, -1.0, 0.75, 0.5, -0.75, 0.0, -0.75, -0.25, -0.5, 0.75, -0.25, -0.75, -0.25, 0.25, -1.0, 0.75, -0.25, 0.0, 1.0, 0.75, 0.5, 0.0, 0.5, -0.5, 0.75, 0.0, -0.5, -1.0, 0.75, 0.75, 0.75, 0.0, -0.5, -0.75, 0.0, 0.5, -0.5, 0.0, 0.75, 0.25, 0.0, 0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.5, 0.5, 0.0, 0.75, -0.25, 0.0, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, -0.5, 0.25, 0.5, 0.25, -0.25, -1.0, 0.5, -1.0, -0.25, -0.25, 0.5, 0.5, -0.25, 1.0, -0.5, 1.0, -0.5, 0.25, 0.0, 0.25, -0.5, -1.0, 0.75, -0.25, -0.5, 0.75, 0.75, -0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.25, -1.0, -1.0, -1.0, 0.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query001.destroy()
    
    
    query000.destroy()
    const array1 = new Float32Array([-1.0, 0.75, 1.0, -0.5, 0.25, -1.0, -0.25, -0.75, 0.5, 0.0, 0.75, 1.0, 0.25, -1.0, -0.25, 1.0, 0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.75, 1.0, 0.25, 0.25, 0.75, -0.5, 0.25, 0.25, -0.75, -0.25, 1.0, -0.75, -1.0, -0.25, 0.0, 0.5, 0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 0.75, 0.0, -0.75, 0.5, -0.75, 0.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.5, 0.0, -1.0, -0.5, 1.0, 0.25, 0.0, 0.25, 1.0, 0.0, -1.0, 0.25, -1.0, -0.5, -0.25, -1.0, -0.25, -1.0, 0.25, -0.75, 0.25, -1.0, -0.75, 0.25, -0.25, 1.0, -0.5, 0.75, -1.0, -0.25, 0.75, -1.0, -0.25, -0.75, 0.5, 1.0, -0.25, 1.0, 0.75, 0.25, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const array2 = new Float32Array([-0.25, 1.0, -0.25, 0.5, 1.0, -0.25, -0.5, -0.75, -0.5, -0.5, -1.0, 0.75, 1.0, -0.75, 0.75, -0.25, 0.75, 0.0, 0.75, 0.75, -0.5, -0.5, -1.0, 0.25, -0.75, -1.0, 0.75, 0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -0.75, 0.75, 0.0, 1.0, 1.0, 0.75, 0.0, 1.0, 0.5, 0.25, 0.75, -0.75, 1.0, 1.0, 1.0, -0.5, -0.25, -0.25, 0.0, -1.0, 0.75, -1.0, -1.0, -0.25, 0.75, 1.0, 0.5, -1.0, 0.25, 0.0, 0.75, 0.0, -0.25, 0.5, 0.25, -0.5, 0.25, 1.0, 0.25, 0.75, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.5, -0.5, -1.0, 0.75, 0.75, -0.25, -0.25, 0.5, -0.5, -1.0, 0.75, -0.25, -1.0, 0.5, -0.75, 0.75, 0.25, -0.75, 0.75, 0.25, 1.0, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    query002.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    query002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder000.popDebugGroup()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.pushErrorScope("internal");
    
    
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
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
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
    render_bundle_encoder000.setPipeline(render_pipeline001);
    query001.destroy()
    query001.destroy()
    device20.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    query001.destroy()
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const array3 = new Float32Array([0.5, 0.25, 1.0, 0.0, 0.25, -0.5, 0.25, -0.25, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, -0.5, 0.5, 0.75, -0.25, -0.75, -0.75, 0.75, 0.75, -1.0, 0.5, 1.0, -0.25, 0.5, 0.25, 0.0, 0.5, 0.75, -1.0, -0.5, -1.0, -0.25, -0.5, 0.75, 0.0, -0.25, 1.0, 0.0, -1.0, -0.75, -1.0, -0.75, -0.25, 0.75, 0.0, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, -0.25, 0.25, -1.0, 0.25, 0.5, 0.0, 1.0, -0.5, -1.0, 1.0, -1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.0, -0.75, 0.75, 1.0, 0.75, 0.5, 0.25, 0.5, -1.0, -0.5, -1.0, 0.25, -0.75, 0.75, -0.5, -0.75, -0.25, -0.75, 0.0, 0.0, -0.75, 0.5, 1.0, -0.5, 0.25, -1.0, 1.0, 0.5, 0.5, 0.0, ]);
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query002.destroy()
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    query000.destroy()
    device00.pushErrorScope("validation");
    
    
    buffer002.destroy()
    
    query003.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    buffer000.destroy()
    device20.pushErrorScope("internal");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query003.destroy()
    
    
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    device30.destroy();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const array4 = new Float32Array([-0.75, -0.25, -0.5, 1.0, 0.5, -1.0, -1.0, 1.0, 0.75, 0.0, -1.0, -1.0, -1.0, -0.25, 0.5, 0.25, 0.75, -0.25, -0.25, 0.0, 0.25, 0.5, -0.5, -0.5, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 0.0, -0.75, 0.0, 0.25, -0.5, -0.75, -0.25, 0.75, -0.5, 0.5, -0.75, 0.25, 0.75, 0.5, -0.75, 1.0, -0.25, -0.75, -0.75, 0.25, -0.25, 0.0, 0.5, 0.75, -0.5, 0.5, 0.5, -0.5, 0.75, 0.5, -0.75, 0.0, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, -0.25, -0.75, -0.5, -1.0, -0.5, 0.75, 0.75, 0.0, -0.5, -0.75, -0.5, 0.75, 0.25, 0.25, 0.25, 0.5, 0.0, 1.0, -0.5, 0.25, 0.25, -1.0, -0.75, 1.0, 0.25, -0.75, -1.0, -0.75, -0.25, 0.5, -1.0, -1.0, ]);
    
    query003.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer004.destroy()
    buffer001.destroy()
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
    render_bundle_encoder000.popDebugGroup();
    
    query004.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query004.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    buffer200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    query005.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder000.setVertexBuffer(0, buffer004);
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder201.popDebugGroup();
    
    const array5 = new Float32Array([-0.25, 0.5, -0.25, 1.0, -0.5, 0.5, -0.75, -0.25, 1.0, 0.25, -0.5, -0.5, -0.25, 1.0, 1.0, 0.75, 0.5, -1.0, -0.75, 0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.75, 0.75, 1.0, 1.0, 0.5, -1.0, -1.0, -0.5, -0.5, 1.0, 1.0, 0.75, 0.0, 0.25, 0.5, 0.75, 0.5, -0.25, -0.5, -0.25, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, 0.25, -0.25, 1.0, 0.75, 0.0, -0.5, 0.5, 0.75, 0.0, 0.25, 0.5, 0.0, -1.0, -0.75, -0.75, 1.0, 0.5, 0.0, -0.5, 1.0, 0.75, -0.25, 0.25, -0.25, -0.5, 1.0, -0.75, 0.25, 0.25, -0.5, 1.0, -0.25, 1.0, 1.0, 0.5, 0.25, 0.25, -0.25, 0.5, 0.25, 0.25, 0.75, 0.5, 0.5, 0.25, -0.75, 0.75, 1.0, -0.75, ]);
    
    query003.destroy()
    
    const array6 = new Float32Array([-0.5, -0.25, 0.25, -1.0, 1.0, 1.0, 0.0, 1.0, -1.0, -0.75, 1.0, -1.0, 0.5, -0.25, -0.75, 0.0, -0.75, -0.5, 0.5, 1.0, 0.0, 0.25, 0.75, -0.5, 0.5, -0.75, 0.5, 0.25, -1.0, 1.0, -0.25, 0.0, -0.75, -0.75, 0.25, -1.0, -0.5, -0.25, -0.5, -0.75, 0.75, -0.25, -0.25, 0.0, 0.5, 0.75, 0.0, 0.25, 0.75, -0.75, 0.75, -1.0, 0.5, 0.75, 0.5, 0.5, -0.5, 1.0, -0.75, 0.75, -1.0, 0.25, 0.25, 0.0, -0.5, -0.25, 0.5, 0.75, 0.5, -0.25, -0.75, 0.5, -1.0, 0.5, 1.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.75, -1.0, 0.25, -0.5, -0.5, -0.5, 0.75, -1.0, 0.25, 0.0, 0.25, 0.75, 0.5, 0.0, 0.5, -0.75, 0.75, 0.75, 0.5, 0.5, ]);
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    
    
    query003.destroy()
    query200.destroy()
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query203.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer006.destroy()
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer005.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const command_buffer002 = command_encoder002.finish();
    
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    query005.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
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
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    render_bundle_encoder000.draw(3);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    
    
    buffer003.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    query001.destroy()
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    
    
    buffer400.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const command_buffer003 = command_encoder003.finish();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query005.destroy()
    query002.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    query000.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    buffer201.destroy()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    query201.destroy()
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder200.popDebugGroup();
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query006.destroy()
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    device40.destroy();
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer204.destroy()
    query000.destroy()
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    
    
    query001.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder001.setVertexBuffer(0, buffer004);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer203 = command_encoder203.finish();
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder001.popDebugGroup();
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer003,
        0
    )
    
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer003,
        0
    )
    query004.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.popDebugGroup()
    query200.destroy()
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    buffer203.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder006.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    
    command_encoder001.resolveQuerySet(
        query005,
        0,
        32,
        buffer003,
        0
    )
    
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query004.destroy()
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    buffer205.destroy()
    
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
        query004,
        0,
        32,
        buffer003,
        0
    )
    query005.destroy()
    
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query005.destroy()
    query600.destroy()
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    const render_pipeline0024 = device00.createRenderPipeline({
        label: "render_pipeline0024",
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
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const array7 = new Float32Array([-1.0, 1.0, 0.5, 0.75, 0.0, 0.5, 0.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.25, -0.75, -0.25, -0.25, 0.75, -1.0, -0.5, -0.75, -0.5, 0.5, -0.75, -0.25, 0.5, 1.0, 0.75, 0.75, 0.75, 0.5, -0.25, -1.0, 0.5, -0.5, 0.5, 0.25, 0.0, -0.75, -0.5, 0.0, -0.75, 0.5, 0.0, 0.75, -0.5, -0.75, 0.75, 0.5, 1.0, 0.5, 1.0, 0.0, -0.5, -1.0, -0.75, 1.0, 1.0, -0.25, -0.25, -0.75, -0.5, 1.0, 0.0, -0.75, 0.25, 0.75, 0.75, 0.0, 1.0, 1.0, 0.75, -0.5, 0.5, -0.75, 1.0, 0.25, 1.0, 0.5, 0.5, -1.0, 1.0, -0.25, -0.5, -0.5, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, -0.5, 1.0, 0.0, 0.0, 0.5, -0.75, -0.5, -0.25, -0.5, 0.75, ]);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query005.destroy()
    buffer202.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.setPipeline(render_pipeline0017);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder204.clearBuffer(buffer206);
    query006.destroy()
    
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer003,
        0
    )
    const render_pipeline0025 = device00.createRenderPipeline({
        label: "render_pipeline0025",
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
        query005,
        0,
        32,
        buffer003,
        0
    )
    command_encoder006.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    query202.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_buffer204 = command_encoder204.finish();
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline0017.getBindGroupLayout(0),
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
    
    
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer003,
        0
    )
    
    buffer007.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([-0.25, 0.5, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, -0.25, -0.5, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.5, -1.0, 0.25, 1.0, -0.25, 0.0, -0.25, -0.25, 0.5, -1.0, 0.25, -0.75, 1.0, -0.25, -0.75, 0.25, 0.75, 1.0, -1.0, -0.25, 0.75, -0.75, 0.5, -1.0, 0.5, 0.25, 0.75, -0.75, 0.25, 0.5, -0.25, 0.75, 0.75, -0.25, -0.75, 0.5, 0.0, -0.25, -0.5, 0.0, -0.5, -0.5, 0.5, 0.0, -0.75, 0.5, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, -1.0, -0.75, -0.5, -1.0, -0.75, 0.0, 0.75, 1.0, -1.0, -0.25, 0.0, 1.0, -0.25, 0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 0.0, 1.0, -1.0, 0.0, -0.75, -0.75, 0.0, -0.25, -0.5, 0.5, -0.5, -0.5, 0.25, ]);
    const command_buffer006 = command_encoder006.finish();
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder001.draw(3);
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.pushErrorScope("internal");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const array9 = new Float32Array([-0.25, 0.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.5, -0.5, 1.0, 1.0, 0.75, -0.75, -1.0, -0.25, -0.5, -0.25, 0.0, 0.0, 0.5, -0.25, 0.0, -1.0, 0.5, 0.25, -0.75, -0.75, 0.25, 0.5, -0.5, 1.0, -0.25, 1.0, 0.75, 0.5, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, -0.75, 0.75, 0.25, -0.5, 0.25, -0.5, 0.5, 0.25, -0.25, -0.75, -0.5, 0.0, 1.0, 1.0, -1.0, 0.5, 0.5, 0.25, -0.75, -0.75, -0.5, -1.0, -0.5, 0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.25, 0.0, -0.25, 0.75, -0.75, -0.25, 0.25, -0.5, 0.5, 1.0, 0.25, 0.75, 0.5, -0.25, 0.75, -0.75, -1.0, 0.0, 0.25, 0.0, -0.75, 0.5, -0.75, -1.0, 0.0, 0.25, -1.0, -0.75, -1.0, ]);
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    const array10 = new Float32Array([1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 0.25, 0.5, 1.0, -0.75, 0.75, -0.5, -0.75, 0.0, -0.5, 1.0, -1.0, 0.75, 1.0, 1.0, -1.0, -0.25, 0.5, 0.5, 0.5, -0.75, -0.5, -1.0, 1.0, 0.25, 0.25, -0.25, -0.5, 1.0, -0.25, -0.5, -0.5, 0.5, -0.75, 0.25, -0.25, -1.0, -0.25, 0.5, -0.75, 0.0, 0.5, 0.25, 1.0, 0.25, -0.5, -0.25, 1.0, 0.0, 0.25, -0.75, -0.25, 0.75, 0.5, -0.5, 0.25, 0.5, 0.5, -1.0, -1.0, -0.25, -0.75, 0.75, -0.75, 0.25, -1.0, 0.0, 0.25, -0.75, 0.75, -0.5, 1.0, 0.75, -0.5, -0.25, 0.5, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -1.0, -1.0, -0.75, 0.25, -0.5, -1.0, -0.75, 1.0, -1.0, 0.0, -1.0, -0.5, -0.25, ]);
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline0026 = device00.createRenderPipeline({
        label: "render_pipeline0026",
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const render_pipeline0027 = device00.createRenderPipeline({
        label: "render_pipeline0027",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    
    render_bundle_encoder000.popDebugGroup();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder005.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer007 = command_encoder007.finish();
    const command_buffer005 = command_encoder005.finish();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device00.queue.submit([command_buffer002, command_buffer006, command_buffer007, ]);
    device00.queue.submit([command_buffer005, ]);
}