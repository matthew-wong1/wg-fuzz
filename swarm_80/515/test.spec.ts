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
    const array0 = new Float32Array([0.5, 0.75, 0.75, 0.25, 0.5, 0.5, -0.5, -0.5, -0.25, 1.0, 0.25, 0.75, 0.75, 0.25, -0.25, 0.5, -1.0, -0.5, 0.5, 0.25, 0.75, 0.0, 0.0, -0.25, -0.5, -0.75, 0.75, 1.0, 0.0, 0.75, 0.5, -0.5, -0.75, 0.5, 0.25, -0.75, 0.75, -0.75, -0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -1.0, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, 0.75, 0.75, 0.25, 1.0, 1.0, 0.75, 0.0, 0.75, -0.25, 1.0, -0.75, 0.75, -0.5, -0.25, 0.75, 1.0, -0.25, -1.0, 0.25, -0.5, -0.5, 0.0, 1.0, -0.5, -1.0, -0.75, 0.25, 0.0, 0.25, 0.25, 0.75, -0.75, -0.5, -1.0, 0.25, -1.0, -0.5, 1.0, -0.5, -0.25, 1.0, -0.5, -0.25, 0.25, 1.0, 0.25, -1.0, 1.0, -0.75, ]);
    const array1 = new Float32Array([0.5, -0.5, 0.25, 1.0, 0.5, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, 0.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.5, -1.0, 0.5, -0.75, 1.0, -0.25, 0.0, 0.0, -0.5, -0.75, -1.0, -0.25, 1.0, 0.5, -0.5, 0.5, -1.0, 0.75, 0.5, 0.75, 1.0, 0.5, -1.0, -0.75, 0.75, -0.25, 0.5, -0.75, -0.5, 1.0, -0.25, 0.0, -0.75, 0.0, 0.0, 0.25, 1.0, -0.5, 0.25, 0.75, -0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.75, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 0.0, -0.5, 0.0, 0.25, -0.5, -0.75, 0.75, 1.0, -1.0, 0.0, -1.0, 1.0, -0.25, -0.75, 1.0, 0.75, -1.0, -0.75, 0.5, 0.25, -0.75, -0.25, 0.0, 1.0, -0.25, 0.5, 0.5, 0.75, 0.75, 0.5, ]);
    const array2 = new Float32Array([0.25, -0.75, 0.25, 0.25, -0.5, 0.25, -1.0, -0.5, 0.0, 0.75, -1.0, -0.25, 1.0, 1.0, -0.25, 0.5, -0.75, 0.0, -0.5, 1.0, 0.75, 0.5, 0.0, 0.5, 0.0, -0.25, -0.25, 0.25, 0.5, -1.0, -1.0, -0.75, 1.0, -1.0, 0.0, 1.0, 0.25, -0.5, -1.0, -0.75, -0.5, 0.75, -0.25, 1.0, 0.0, 0.0, 0.25, 0.75, -0.25, 0.0, 1.0, -1.0, 1.0, 0.5, -0.75, 0.25, 0.0, 0.0, -1.0, -0.5, 0.25, -0.75, -0.25, 1.0, 0.75, 0.25, 0.0, 0.75, 0.25, 0.75, -0.5, 0.25, 0.0, -0.5, -1.0, -1.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 1.0, -0.5, 1.0, 1.0, 0.0, 0.25, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, 0.25, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([-0.5, 0.25, 1.0, 0.0, 1.0, -0.5, 0.25, 0.5, 1.0, -0.25, -0.5, -1.0, 0.25, 0.5, 0.75, -0.75, 0.5, 0.0, -0.5, 1.0, 0.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.75, -0.75, -0.5, 0.5, 0.75, 0.5, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, -1.0, -0.75, 0.0, 0.25, -0.25, -0.25, 1.0, -1.0, 1.0, 0.25, 0.75, 1.0, -0.25, 0.25, 0.75, 0.0, -0.5, -0.25, -0.5, 0.0, -1.0, -0.75, 0.5, 0.25, -0.25, 1.0, -0.75, -0.25, 0.5, -0.25, 0.25, -0.25, 0.25, 1.0, -0.25, -1.0, 0.5, 0.0, -0.75, -0.25, 0.25, 0.5, 0.75, 1.0, 0.75, 1.0, -0.25, 0.25, 0.0, 0.0, 0.25, 0.25, -0.25, 0.75, -0.25, 0.0, 0.75, -0.25, -0.25, -1.0, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture000.destroy();
    device00.pushErrorScope("out-of-memory");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
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
    device00.pushErrorScope("internal");
    query000.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
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
    device00.pushErrorScope("internal");
    render_bundle_encoder000.setPipeline(render_pipeline001);
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
    texture001.destroy();
    query002.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const array4 = new Float32Array([0.0, -0.5, -0.75, 0.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.75, 0.75, 0.75, 0.5, 0.75, 0.25, 1.0, -1.0, 0.0, -1.0, -0.25, 0.75, -0.75, -0.5, -0.5, 1.0, 1.0, 0.25, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -0.5, -0.5, -0.25, -1.0, 0.0, 0.5, 0.75, 0.25, 0.0, -0.5, 0.5, -0.5, -0.5, 0.75, -0.5, 1.0, 0.0, -1.0, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, 0.75, 0.0, -0.5, -0.75, 0.0, -1.0, -1.0, -0.75, 0.0, -1.0, -0.25, -0.25, -0.5, 0.0, -0.5, 0.25, 0.25, 0.25, -0.25, 1.0, -0.5, -0.25, -0.75, -0.75, 0.5, -0.5, 0.25, -0.5, 0.75, 0.0, -1.0, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, 0.75, 1.0, -0.75, 0.0, -0.75, 0.75, ]);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    query002.destroy()
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
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
    query001.destroy()
    query002.destroy()
    
    
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
    buffer001.destroy()
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
    const array5 = new Float32Array([1.0, 0.5, -0.25, -1.0, 0.5, 0.25, 0.0, 0.5, 0.5, 1.0, -0.75, 0.0, -0.25, 0.5, -1.0, -0.75, -0.25, 0.0, -1.0, 0.0, -0.75, 1.0, -0.25, 0.0, -1.0, -0.75, -0.75, 0.5, 0.5, -0.5, 0.0, 1.0, 0.0, -1.0, 0.75, 0.75, -1.0, -1.0, 0.0, 0.25, 1.0, 0.75, -1.0, -0.25, 1.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -1.0, 0.25, -1.0, -0.75, -0.25, 0.25, -0.5, 0.75, 0.0, -0.75, -0.75, -0.25, 0.0, -1.0, 0.75, 0.0, -0.75, -1.0, -0.25, 1.0, -0.5, -0.25, -0.75, -0.25, -0.5, -0.25, -0.5, -0.5, 0.75, 0.75, -0.5, 0.5, 0.75, 1.0, 0.25, 0.25, -0.5, 0.75, -0.75, -0.25, 0.75, -0.25, -0.75, 1.0, -0.75, 1.0, 0.5, 0.25, -0.75, ]);
    buffer002.destroy()
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query001.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    buffer003.destroy()
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
    
    buffer000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    query005.destroy()
    device00.queue.submit([command_buffer000, ]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query003.destroy()
    query004.destroy()
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    query001.destroy()
    
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
    
    texture002.destroy();
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
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    
    query005.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    query004.destroy()
    query001.destroy()
    query003.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    query005.destroy()
    query004.destroy()
    const array6 = new Float32Array([0.0, -1.0, 0.75, 0.25, -0.5, 0.75, 0.5, -0.25, -0.5, 1.0, -0.25, -0.25, 0.25, -1.0, -0.75, 0.25, -0.75, 1.0, -0.25, -0.5, -0.25, 0.25, 0.0, 0.5, 0.25, -0.75, 1.0, 0.5, 0.0, 0.75, -0.25, -0.75, 0.0, -0.25, -0.75, -0.75, 0.5, -0.25, 0.0, -1.0, -1.0, 1.0, -0.5, 0.5, 0.25, 0.5, -0.75, 0.5, 1.0, 0.5, -0.75, -0.25, 0.75, -1.0, -1.0, 0.75, 0.25, 1.0, -1.0, 0.0, -1.0, -0.75, 0.75, -0.25, 0.25, 1.0, -0.75, -0.25, 0.5, -0.5, -1.0, -0.5, 0.75, -0.25, -0.25, -1.0, -0.75, 0.0, 0.0, 0.75, 0.0, -1.0, -0.5, -1.0, 0.25, 1.0, 0.75, 1.0, 0.0, 1.0, 0.75, 0.0, -0.75, 1.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.25, ]);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array7 = new Float32Array([0.25, 0.5, -1.0, 0.0, 0.5, 0.0, 1.0, 0.5, -0.5, -0.5, -0.5, -1.0, 1.0, -0.25, -1.0, 0.5, 0.5, -0.25, -0.25, -0.75, -0.75, 1.0, 0.75, 0.5, -0.25, 0.25, 0.25, -0.25, 0.25, 0.75, -0.5, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, 1.0, 1.0, 1.0, 0.75, -1.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.0, -0.25, 0.5, 0.0, 0.75, 0.25, 1.0, 1.0, -1.0, -0.5, 1.0, 0.5, 1.0, -0.75, 1.0, -0.25, -0.75, -0.25, -0.5, -0.5, -1.0, -0.25, 0.5, -1.0, 0.5, -0.5, 0.75, -0.25, -0.75, -0.5, -0.25, 0.5, 0.25, -0.25, 0.0, 0.75, -0.5, -0.5, -1.0, -0.25, 0.5, -0.5, 0.75, -0.5, -0.75, 0.25, 0.25, 1.0, -0.25, -0.25, 1.0, 0.25, -0.5, ]);
    query002.destroy()
    query002.destroy()
    query001.destroy()
    query005.destroy()
    
    query005.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer001 = command_encoder001.finish();
    query002.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query003.destroy()
    
    
    buffer005.destroy()
    texture003.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    query002.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    
    
    
    device00.pushErrorScope("validation");
    
    query001.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device10.destroy();
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const array8 = new Float32Array([1.0, 0.75, 0.75, 0.0, 0.25, -0.75, -0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 0.0, -1.0, 1.0, 0.75, 0.0, 0.5, 0.5, -0.75, -0.25, -0.5, 1.0, -0.75, 0.0, -0.5, -0.25, -0.25, -0.75, 0.25, 0.75, 0.5, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 0.0, 0.25, 1.0, 0.5, 0.75, 0.25, 0.5, -1.0, -0.25, -0.25, 0.0, -0.5, 1.0, -0.75, 0.0, 0.0, -0.25, 0.75, -0.5, -0.75, -0.25, -0.75, -0.75, 0.75, -0.5, 0.75, -0.5, 0.5, 1.0, 0.0, -0.75, 0.75, -0.25, 1.0, -0.25, -1.0, 0.5, -1.0, 0.5, 0.5, -0.75, 0.75, 0.0, 1.0, -1.0, -0.75, 0.5, 0.5, 0.5, -0.25, -1.0, -1.0, 0.0, 0.75, -0.25, 0.5, 0.25, -0.25, -0.5, -0.75, -0.25, -0.25, ]);
    const array9 = new Float32Array([0.75, -0.5, 0.0, -0.5, -0.5, 0.5, 0.25, -0.25, 1.0, 0.0, -0.25, 0.0, -0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 0.25, -0.75, -0.75, -0.75, 0.75, 0.0, -0.5, -0.5, -0.25, 0.75, -0.5, 0.25, -0.5, -0.75, 0.25, -0.5, 0.5, 0.5, -0.25, 0.0, -0.75, 0.5, -0.25, -0.5, 0.75, 0.25, 0.0, 1.0, -0.25, 0.75, 0.25, -0.5, 0.5, 0.25, 0.75, -0.5, -1.0, -0.75, -0.5, -1.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.0, 0.5, -0.5, -0.5, 0.5, 0.75, 0.25, -0.25, -1.0, -0.25, -0.75, 0.0, 0.0, -0.5, -0.75, -0.5, -0.5, 0.25, -0.5, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 0.0, 1.0, -0.75, -0.5, 0.25, -0.75, -0.25, 1.0, -0.25, -1.0, -0.5, -0.25, ]);
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    device00.queue.writeTexture({ texture: texture004 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture200.destroy();
    texture004.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer004.destroy()
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture005.destroy();
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    const array10 = new Float32Array([-0.75, -0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.5, 0.5, 1.0, 0.75, 0.5, -0.5, 0.75, -0.25, 0.0, 1.0, 1.0, 0.5, -0.75, -1.0, 1.0, -0.5, 0.0, 0.0, 0.25, 1.0, 0.5, 0.25, 1.0, -0.25, -0.5, -0.25, -0.25, -1.0, -1.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.25, -0.5, -1.0, -0.5, 0.0, 0.0, 0.75, 0.5, 0.75, 0.75, 0.25, -1.0, -0.25, 0.75, 0.75, -0.5, -0.75, 0.5, 0.0, -1.0, 0.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.0, 1.0, 0.5, -0.75, -0.75, 0.0, -0.25, 1.0, 0.75, 0.0, -0.25, 1.0, -0.5, -0.25, -0.75, 0.5, 0.25, 0.75, 0.0, 0.5, -0.5, 0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 1.0, -0.25, 0.25, 0.5, 1.0, ]);
    const command_buffer002 = command_encoder002.finish();
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("internal");
    texture007.destroy();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    query002.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    query004.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    query002.destroy()
    
    device20.destroy();
    texture006.destroy();
    const array11 = new Float32Array([-0.25, -0.5, 0.0, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, 0.75, 1.0, 0.75, 0.75, 0.0, 0.5, -1.0, -0.5, 0.75, -1.0, 0.5, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, 0.25, -0.5, -1.0, -1.0, 1.0, 0.5, 0.25, 0.25, -0.5, 0.25, 0.25, -0.75, 0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.0, 0.75, 0.25, -0.25, 1.0, -1.0, -0.25, -0.5, 0.75, 0.75, 1.0, -0.5, -0.25, 1.0, 1.0, -0.75, 0.0, 0.75, 1.0, -0.25, 0.75, -0.75, -0.25, 0.75, 0.0, -1.0, 1.0, 0.0, -1.0, -0.75, -0.5, -1.0, 0.0, -0.5, -0.5, -1.0, -0.75, 1.0, -0.25, 0.75, 0.0, -0.75, 0.75, 0.5, -1.0, 0.75, 0.75, -0.5, 0.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.5, ]);
    const array12 = new Float32Array([-0.75, 0.75, 0.5, -1.0, 0.0, -0.75, -1.0, -0.5, 0.25, 0.5, 0.75, -0.25, -1.0, 0.75, -0.5, -0.25, 0.25, -0.75, -1.0, -0.25, 0.0, -1.0, 0.25, -0.75, 0.0, -0.5, -0.25, 0.25, -0.5, -0.5, 0.75, -1.0, 0.0, -0.75, 0.0, 0.75, 0.75, -0.5, 0.75, 1.0, 0.0, -1.0, 0.25, 0.75, -0.5, 0.25, 0.75, 0.0, -0.75, 0.75, -1.0, 0.75, -0.75, -0.25, 0.25, -0.25, -0.5, 0.25, -0.75, -0.5, 1.0, 1.0, 0.0, -0.5, 0.5, -1.0, 0.0, -1.0, -0.5, -0.25, 0.0, 0.5, 1.0, -1.0, 0.25, 1.0, -1.0, 0.5, -1.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.25, 0.0, 0.0, -0.75, -0.5, 0.75, 0.75, 0.25, 0.75, 0.25, 0.75, 0.5, -0.25, 0.75, 0.75, 1.0, ]);
    query004.destroy()
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    query000.destroy()
    query004.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
    query400.destroy()
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
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
    query003.destroy()
    const array13 = new Float32Array([-0.5, 0.25, -0.75, -0.25, -0.25, 1.0, -1.0, 0.5, 1.0, 0.75, 0.5, -0.25, 0.0, 0.5, -0.75, -0.5, 0.25, 0.25, 0.75, 0.75, 1.0, 0.25, -0.25, -0.25, 0.25, 0.5, 0.5, -0.25, -0.5, 0.75, -0.75, -0.25, -0.5, 0.0, 0.0, 1.0, -0.5, 0.75, 0.5, -0.25, 0.75, -0.25, 0.5, -1.0, 0.25, 0.75, -1.0, 1.0, 1.0, 0.0, 0.5, -0.75, -1.0, 0.5, 1.0, 0.0, -0.75, 0.5, -0.25, 0.5, -1.0, 1.0, 0.0, -0.75, 0.5, -1.0, -0.5, -0.75, 1.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.5, -0.25, 0.5, -1.0, -0.25, -1.0, 0.25, 0.0, -0.5, -0.75, -1.0, -1.0, 0.0, 0.75, -1.0, -1.0, -0.75, -0.25, 0.25, 1.0, 0.5, -1.0, 1.0, -0.5, -1.0, -0.5, ]);
    const render_pipeline0024 = device00.createRenderPipeline({
        label: "render_pipeline0024",
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
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture401.destroy();
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query004.destroy()
    
    const render_pipeline0025 = device00.createRenderPipeline({
        label: "render_pipeline0025",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pipeline0026 = device00.createRenderPipeline({
        label: "render_pipeline0026",
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
    const array14 = new Float32Array([-0.25, 0.25, 0.75, -0.25, 1.0, -0.5, -0.5, 1.0, 0.0, -0.5, -0.75, -0.25, -0.75, -0.75, -0.75, 0.75, -0.25, 0.5, 0.75, 1.0, 0.0, 0.5, -0.25, -0.25, -0.5, 0.25, -0.75, 0.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.0, -0.5, -1.0, -0.25, 0.75, 1.0, 0.75, -0.25, 0.0, 0.75, -0.5, -0.25, 0.0, 0.25, 0.5, -0.5, 0.25, 0.0, 0.5, -1.0, 0.0, 0.5, -0.25, -1.0, 0.0, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, 1.0, -0.25, 0.75, 0.0, 0.25, -1.0, -1.0, -1.0, -1.0, 1.0, -0.5, -1.0, 1.0, -1.0, 0.75, -1.0, -0.25, 0.5, -0.25, 0.75, -0.25, 0.0, 1.0, 0.0, 1.0, 1.0, -0.5, 0.5, 0.75, -0.25, -0.5, -0.25, -0.75, -0.75, -0.75, 0.5, ]);
    
    
    query005.destroy()
    const command_buffer400 = command_encoder400.finish();
    query004.destroy()
    query006.destroy()
    const render_pipeline0027 = device00.createRenderPipeline({
        label: "render_pipeline0027",
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
    
    
    
    query006.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    
    query002.destroy()
    const render_pipeline0028 = device00.createRenderPipeline({
        label: "render_pipeline0028",
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
    
    const render_pipeline0029 = device00.createRenderPipeline({
        label: "render_pipeline0029",
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
    const render_pipeline0030 = device00.createRenderPipeline({
        label: "render_pipeline0030",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
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
    const array15 = new Float32Array([0.5, 0.5, -0.25, -0.5, 0.75, -0.5, -0.25, -0.25, -0.25, 1.0, 0.0, -0.25, -0.75, 1.0, 0.0, 0.5, -0.25, -0.5, -0.75, -1.0, 1.0, 0.5, -0.25, 0.5, -0.25, 1.0, 0.25, 0.0, 0.5, 1.0, -1.0, -0.25, -0.75, 0.5, 0.0, -0.5, -0.75, 1.0, 0.5, -0.75, 0.5, -0.75, -0.5, -0.25, -0.25, 0.0, 0.5, 0.25, 0.25, 0.0, -1.0, 1.0, 0.75, 0.0, 0.75, 1.0, -0.25, -0.25, 0.0, 0.75, -0.5, -0.25, -1.0, -1.0, 0.5, -0.5, -0.75, 0.25, -0.75, 0.5, 0.5, 0.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.5, 0.25, 0.5, -0.5, 0.25, 0.0, -1.0, -1.0, 0.25, -0.75, 1.0, 0.5, 1.0, 0.5, -1.0, 0.75, 0.75, 1.0, 0.75, 0.75, 0.75, -0.75, -0.75, ]);
    
    
    query006.destroy()
    
    
    query003.destroy()
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline0031 = device00.createRenderPipeline({
        label: "render_pipeline0031",
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
    query001.destroy()
    query002.destroy()
    const render_pipeline0032 = device00.createRenderPipeline({
        label: "render_pipeline0032",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    const render_pipeline0033 = device00.createRenderPipeline({
        label: "render_pipeline0033",
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device00.queue.submit([command_buffer002, ]);
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline0034 = device00.createRenderPipeline({
        label: "render_pipeline0034",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    texture400.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline0035 = device00.createRenderPipeline({
        label: "render_pipeline0035",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    query000.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query007.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    device40.queue.submit([command_buffer400, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline0036 = device00.createRenderPipeline({
        label: "render_pipeline0036",
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
    const render_pipeline0037 = device00.createRenderPipeline({
        label: "render_pipeline0037",
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
    query002.destroy()
    const render_pipeline0038 = device00.createRenderPipeline({
        label: "render_pipeline0038",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    buffer401.destroy()
    query400.destroy()
    query402.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    const render_pipeline0039 = device00.createRenderPipeline({
        label: "render_pipeline0039",
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline0040 = device00.createRenderPipeline({
        label: "render_pipeline0040",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    query002.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder400.setPipeline(render_pipeline401);
    query002.destroy()
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    query401.destroy()
    
    const render_pipeline0041 = device00.createRenderPipeline({
        label: "render_pipeline0041",
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
    const render_pipeline0042 = device00.createRenderPipeline({
        label: "render_pipeline0042",
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const render_pipeline0043 = device00.createRenderPipeline({
        label: "render_pipeline0043",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query500.destroy()
    query500.destroy()
    
    const render_pipeline0044 = device00.createRenderPipeline({
        label: "render_pipeline0044",
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pipeline0045 = device00.createRenderPipeline({
        label: "render_pipeline0045",
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
    buffer400.destroy()
    query500.destroy()
    const array16 = new Float32Array([0.75, 1.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.75, 1.0, 1.0, -0.25, 0.5, -0.25, 1.0, 0.5, -0.75, -1.0, -0.75, 0.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.75, -0.5, -0.5, 0.0, -0.5, -0.5, -1.0, 0.25, 1.0, -0.75, -0.25, -0.25, 0.75, 0.75, -1.0, 0.5, 0.5, 0.5, -0.25, 0.5, 0.75, 1.0, -0.25, 0.0, -0.25, 0.5, 0.0, -0.5, 0.5, -0.25, 0.25, 0.75, 0.25, -0.75, -0.5, 0.5, 0.25, -1.0, 0.75, -0.5, 0.25, 0.75, 0.25, 0.5, -1.0, 1.0, -0.5, -0.25, 0.25, -0.25, 0.0, -0.25, -1.0, -0.25, -0.5, 0.5, 0.75, 0.5, -0.25, 0.5, 0.25, 0.25, 0.5, 0.5, -0.5, 0.0, 0.25, 1.0, -0.25, 0.75, 0.5, 0.0, 0.0, -0.75, 0.75, -1.0, ]);
    device50.pushErrorScope("out-of-memory");
    query003.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline0046 = device00.createRenderPipeline({
        label: "render_pipeline0046",
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
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    query009.destroy()
    
    query003.destroy()
    texture402.destroy();
    query401.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    query402.destroy()
    const render_pipeline0047 = device00.createRenderPipeline({
        label: "render_pipeline0047",
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
    device60.pushErrorScope("out-of-memory");
    
    
    const render_pipeline0048 = device00.createRenderPipeline({
        label: "render_pipeline0048",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    query501.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer402.destroy()
    query009.destroy()
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    query009.destroy()
    
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query008.destroy()
    device70.pushErrorScope("internal");
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline0049 = device00.createRenderPipeline({
        label: "render_pipeline0049",
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
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    query402.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pipeline0050 = device00.createRenderPipeline({
        label: "render_pipeline0050",
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
    device40.queue.writeTexture({ texture: texture403 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    
    const render_pipeline0051 = device00.createRenderPipeline({
        label: "render_pipeline0051",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture403 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer403 = command_encoder403.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, ]);
    const command_buffer600 = command_encoder600.finish();
    const command_buffer601 = command_encoder601.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer601, ]);
    device40.queue.submit([command_buffer403, ]);
}