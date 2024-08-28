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
    const array0 = new Float32Array([0.0, 0.0, 0.5, -1.0, 0.25, 0.25, 1.0, -0.75, 0.0, 1.0, -1.0, 0.5, -0.25, 0.25, -0.5, 0.5, -0.25, 0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 0.25, 0.75, 0.75, -1.0, 0.75, -0.25, -0.5, 0.0, -0.5, -1.0, 0.75, 0.5, -1.0, -0.5, 0.25, -0.25, 0.5, 0.5, 0.5, -1.0, 0.25, 0.5, -0.5, 1.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.25, -0.5, 1.0, -1.0, -1.0, 1.0, 0.0, 0.75, 0.0, 0.0, -0.25, 0.25, 1.0, -1.0, 0.5, 0.25, -0.5, -1.0, 1.0, 0.0, 0.75, -0.75, 0.25, 0.0, 0.5, -0.25, 1.0, 0.25, 1.0, -0.75, 0.0, 0.25, -1.0, -0.75, 1.0, -0.75, 0.0, -1.0, 0.25, 0.0, -0.5, 0.75, 0.0, -0.75, 0.25, 0.0, 1.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.25, -0.5, 0.25, 0.0, -0.25, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.5, -1.0, -1.0, 0.75, 0.5, 0.5, -0.75, -1.0, -0.25, 1.0, 0.25, 0.5, 0.75, -0.5, 0.75, 1.0, 1.0, -0.5, 1.0, 0.0, 1.0, -0.25, 1.0, -0.25, 1.0, 0.0, 1.0, -0.75, 0.0, 1.0, 0.5, 0.0, -0.75, 0.5, -1.0, 0.5, -1.0, 0.75, 0.75, -0.5, 0.25, 0.75, 0.5, 0.0, -0.5, 1.0, 0.25, 0.25, -0.25, 0.75, -0.75, 1.0, 1.0, 0.25, 0.75, 0.5, -0.25, -1.0, 1.0, 0.5, 0.5, 0.75, 0.75, -0.5, -0.5, -0.25, -0.75, 0.5, 0.25, -1.0, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, -1.0, -0.5, -0.5, 0.25, -1.0, 1.0, 0.75, -1.0, 0.25, 1.0, 0.25, 0.0, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array2 = new Float32Array([-1.0, 0.75, 0.25, 0.0, -0.5, 0.25, -0.25, 0.25, 0.25, 0.75, -0.25, 0.0, -0.25, 0.25, -1.0, -0.75, 1.0, 0.5, 0.5, 1.0, -0.25, -1.0, -1.0, -0.75, 0.25, 0.0, 0.75, 0.75, 0.75, -0.5, -0.25, -0.75, 0.75, -0.25, 0.75, 0.75, 0.75, -1.0, -0.5, -0.5, 0.5, 1.0, -1.0, 0.0, -0.5, 0.5, 0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -1.0, 0.5, 0.75, 0.25, 0.75, -0.25, 1.0, -0.75, -0.25, 0.0, 0.5, 0.0, 0.25, 0.25, 1.0, -0.25, 0.75, 1.0, 0.0, 0.0, 1.0, -1.0, 0.0, 0.25, -1.0, 1.0, -0.75, -1.0, 0.0, -0.5, 0.5, -0.5, -1.0, -0.75, 1.0, 0.0, -0.75, -1.0, 0.5, 0.5, 1.0, -0.25, 1.0, -1.0, 0.25, -0.25, 1.0, 0.25, ]);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    buffer400.destroy()
    device40.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array3 = new Float32Array([-0.75, 0.25, -0.75, -0.25, 1.0, 0.5, 0.25, -1.0, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 0.25, -0.25, 0.75, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, 0.25, -1.0, -0.75, 0.5, 0.0, -0.5, 0.25, -0.75, -0.25, -0.75, -1.0, 0.75, -0.5, -0.75, -0.75, 0.0, -0.5, 1.0, 0.25, 0.75, -0.75, 1.0, -1.0, 0.25, -1.0, 0.5, -1.0, 0.25, -0.5, -1.0, 1.0, 0.75, 0.25, 0.75, -0.75, -1.0, 0.75, -0.75, -0.25, 0.5, 0.75, 0.25, -0.5, 1.0, 0.5, 0.75, 0.25, 0.0, 0.0, -1.0, 0.75, -0.25, 0.5, 1.0, -1.0, -1.0, 0.0, 0.0, -0.25, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 0.5, -0.5, 0.25, 1.0, 0.5, 0.25, ]);
    texture200.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const array4 = new Float32Array([0.0, 0.75, 0.5, -0.5, -1.0, -0.5, 0.5, 0.75, -1.0, 0.5, -0.5, 0.0, -1.0, -0.25, 0.0, -0.75, 0.25, -0.75, -0.75, 0.5, -1.0, 0.5, -0.25, 0.25, -0.25, 0.75, 0.75, -0.5, -0.75, 0.75, 1.0, -0.75, -0.5, -1.0, 0.25, -0.5, -0.25, 0.75, 0.25, 1.0, 0.0, -0.75, 0.25, -0.25, 0.5, 1.0, 1.0, -0.75, 0.5, -0.25, 0.25, 0.5, -0.5, 0.0, -0.5, 0.25, 0.75, -0.5, -0.25, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 0.5, 0.75, -1.0, 0.75, 1.0, 0.75, 0.75, -1.0, -1.0, 0.75, 0.75, -0.25, 0.0, 0.5, -0.5, 0.5, 0.25, 0.75, -1.0, 0.75, 0.75, -0.25, 0.25, 0.5, -0.5, 0.75, 0.25, 0.0, 0.0, -0.25, 1.0, -0.25, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array5 = new Float32Array([1.0, 0.25, 0.75, 0.0, -0.5, 0.5, -0.75, -0.75, 0.25, 0.75, 1.0, 1.0, 0.25, 1.0, 0.25, 0.5, 0.75, 0.75, -0.5, 0.0, -0.75, 0.0, -0.25, 0.0, -0.5, -1.0, 0.5, -0.5, 0.0, -1.0, 0.0, -0.75, -0.5, -0.5, -0.5, -0.75, -0.75, -0.5, -0.25, 0.0, 1.0, 0.25, -0.75, 0.25, 0.0, 1.0, -0.25, 0.75, -0.5, -0.75, -0.5, -0.25, -0.5, 0.75, 1.0, -0.5, 0.75, -0.5, -1.0, 0.5, 0.5, -0.25, 1.0, -1.0, -0.75, 0.75, -0.75, -0.5, 0.5, -0.75, 1.0, 0.75, 0.5, -0.25, -0.75, 0.5, 1.0, 0.75, 0.25, -1.0, 0.0, -0.75, 1.0, 1.0, 0.25, 0.0, 0.75, -0.25, 0.5, 1.0, 0.25, 0.25, 0.5, 1.0, -0.75, -0.5, 1.0, 1.0, -1.0, 0.75, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture600.destroy();
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_bundle_encoder602.setPipeline(render_pipeline600);
    render_bundle_encoder600.setPipeline(render_pipeline601);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    render_bundle_encoder601.setPipeline(render_pipeline601);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer500.destroy()
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder602.insertDebugMarker("marker");
    const array6 = new Float32Array([0.75, 1.0, 1.0, 0.75, -0.5, 0.25, 0.75, 0.5, 0.25, 0.25, -0.75, -0.5, 0.0, 0.0, 1.0, 1.0, 0.5, -0.25, -0.25, 0.25, -0.25, -1.0, -0.75, 0.75, -0.25, 0.75, 0.75, -0.75, 0.25, -1.0, 0.0, 0.5, -1.0, 0.5, -0.25, 0.0, 0.25, 0.75, -0.75, 0.75, 0.0, 0.0, -0.5, 0.75, 0.5, 1.0, -0.25, -0.25, 0.0, 1.0, 1.0, 0.5, -0.75, 0.25, 1.0, 0.5, -0.75, 1.0, -0.5, -0.25, 0.25, 0.5, 1.0, 1.0, 1.0, 0.75, -0.5, 0.0, 0.25, -0.5, 0.0, -0.5, -0.5, -0.25, 0.0, 1.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.5, 0.75, 0.0, 0.5, 1.0, 0.0, 0.0, 0.25, -1.0, -1.0, -0.25, -0.75, 1.0, 0.5, -0.25, -0.5, 0.5, 0.5, 0.25, ]);
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group601);
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    buffer600.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer604.destroy()
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    buffer606.destroy()
    texture501.destroy();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.destroy();
    render_bundle_encoder602.insertDebugMarker("marker");
    buffer601.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    device70.destroy();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const array7 = new Float32Array([0.75, 0.5, -0.75, -1.0, -0.5, 0.75, 1.0, -0.5, -1.0, -0.5, -0.5, 0.25, 0.75, -1.0, 0.25, -0.5, 0.5, 0.0, -0.5, 1.0, 1.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.75, -1.0, -1.0, 0.5, 0.75, 0.25, 0.75, -0.25, 1.0, 0.5, -0.75, -0.25, -0.75, 1.0, -0.25, -0.25, 0.75, -1.0, 0.0, -0.5, -0.5, 1.0, 0.5, -0.75, -0.5, 0.0, 1.0, -0.5, -0.75, 0.25, -0.25, 0.0, -0.5, 1.0, 0.0, 0.25, -0.5, 1.0, -1.0, 0.0, -0.25, -0.5, -1.0, -1.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.25, 0.5, -1.0, 0.5, -0.75, -0.5, 0.25, 0.25, 0.0, -0.75, -1.0, 0.25, -1.0, 0.5, 0.5, -1.0, 0.75, 1.0, -1.0, -0.5, 0.0, -0.75, 1.0, 0.0, 0.5, ]);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group602);
    
    device60.destroy();
    const array8 = new Float32Array([-0.5, -1.0, 0.25, -1.0, 0.25, 0.75, -0.25, 0.25, -0.5, 0.0, 0.0, 0.75, 1.0, -0.5, 0.75, 0.0, -0.75, -0.5, -0.75, 1.0, 0.25, 1.0, -1.0, 0.5, -0.25, 0.0, 0.75, 0.75, 0.25, -0.5, 0.5, -0.5, -1.0, 0.25, 0.25, 0.0, 0.0, 0.0, 0.5, 0.0, -0.5, 0.75, 0.25, -0.75, -0.75, 1.0, 0.25, -1.0, 1.0, -0.5, -0.25, -1.0, 0.5, 0.0, 0.25, 0.0, -0.5, 1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 1.0, 0.25, 0.5, -0.5, 0.5, -1.0, -0.5, 0.75, 1.0, -0.75, 0.25, -1.0, 0.0, -1.0, 0.75, 0.0, -0.25, 0.0, -0.75, -0.25, -1.0, 0.75, 0.0, 0.0, 0.0, 0.5, 0.75, 1.0, -1.0, 0.0, -0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.75, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const array9 = new Float32Array([-0.5, -0.75, -0.5, 0.0, -0.25, -0.75, -0.25, 0.75, 0.25, -1.0, -0.5, -1.0, 0.5, 0.5, 0.25, -0.25, 1.0, 0.5, -0.5, 0.25, -1.0, 0.0, 1.0, 0.0, -0.25, -0.5, 0.0, 0.75, 0.25, 0.75, -0.5, 0.0, -0.5, 0.5, -0.75, -0.75, 1.0, 0.5, 0.25, 0.25, 0.25, -0.25, -0.25, 1.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.5, 1.0, -0.25, 0.25, -0.75, 0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 0.25, 1.0, -0.75, 0.5, -0.75, -0.25, 1.0, -1.0, 0.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.0, 1.0, 0.75, 0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.75, -1.0, -1.0, -0.25, 1.0, 0.0, 0.0, -0.25, -1.0, 0.75, -1.0, -1.0, ]);
    device90.destroy();
    const array10 = new Float32Array([1.0, -0.5, 0.75, 0.5, -0.75, 0.5, -1.0, -0.25, 0.75, 0.25, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, -0.25, -0.25, -0.75, 0.0, 0.25, 1.0, -0.5, 1.0, -0.75, -1.0, -0.25, -1.0, 1.0, -0.25, 0.75, -0.5, -0.5, -0.75, 0.25, -0.75, -0.5, 0.5, -0.25, 0.25, 0.75, 0.5, 0.75, 0.0, -0.75, -0.25, 1.0, 0.0, 0.5, 0.25, 1.0, 0.75, 0.5, -0.75, -1.0, 0.75, -0.25, 0.0, -0.75, 0.25, 0.75, -1.0, -0.5, 0.75, 1.0, 0.0, 0.5, 1.0, 0.0, -1.0, -0.25, 0.0, -1.0, 0.0, 1.0, -1.0, 1.0, 0.25, -0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.5, -0.5, -0.75, 1.0, 0.0, 0.25, 1.0, -1.0, 0.25, 1.0, -0.75, -0.5, -0.75, 0.5, 0.75, -0.75, ]);
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    texture1000.destroy();
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    device100.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device110.destroy();
    const array11 = new Float32Array([0.0, -0.5, 0.25, 0.25, 0.25, 0.0, 0.25, 0.75, -0.5, 1.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.5, -1.0, 1.0, 0.0, -1.0, 1.0, -0.75, 0.25, 0.0, 0.5, 0.25, -0.5, -0.5, 0.0, 0.0, 0.75, -0.75, 0.0, 0.25, 0.5, -0.5, -1.0, -0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, 0.0, 0.75, 0.0, 0.5, 0.75, -0.75, 0.75, -0.75, 0.0, -0.5, -0.5, 0.75, 0.75, -0.5, 1.0, -0.5, 0.75, 0.5, 0.75, -0.5, -1.0, 0.5, 0.25, -0.75, -0.25, 1.0, -1.0, -0.75, -0.25, 0.25, -0.75, 1.0, -0.25, -0.25, 1.0, 0.5, 1.0, 1.0, 1.0, -0.25, 1.0, -0.5, -1.0, 0.25, 0.0, -1.0, 1.0, -1.0, 0.25, 0.0, -0.25, -0.25, 0.0, 0.75, 0.5, ]);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array12 = new Float32Array([-0.5, 0.25, -1.0, -1.0, -0.25, 0.75, 0.75, -0.5, 0.75, 0.5, 0.25, -0.25, 0.5, 0.25, -0.5, 0.75, 1.0, 0.25, 0.5, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, 1.0, 0.75, 0.25, 0.25, -0.75, -1.0, 1.0, -0.75, 0.25, -0.25, 0.5, 1.0, 0.0, -0.25, -0.75, -0.5, 1.0, 0.0, -0.75, 0.75, 0.25, 0.75, -1.0, -1.0, 0.25, 0.75, -1.0, 0.25, -1.0, -0.25, 0.25, -0.75, 1.0, 0.25, 1.0, -0.75, -1.0, -0.25, 0.25, -0.75, 0.0, -0.5, -0.5, 0.5, -1.0, -0.5, 0.5, -0.75, 1.0, -0.25, -0.75, -0.25, 1.0, 0.25, 0.75, 0.0, -1.0, -1.0, -1.0, 0.25, 0.75, 0.5, -1.0, -0.25, -0.75, -0.25, -0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 0.75, 0.75, -0.75, ]);
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    device130.destroy();
    render_bundle_encoder1200.insertDebugMarker("marker");
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    device140.destroy();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1202]
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1203 = device120.createPipelineLayout({ 
        label: "pipeline_layout1203",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const pipeline_layout1204 = device120.createPipelineLayout({ 
        label: "pipeline_layout1204",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device120.destroy();
    const array13 = new Float32Array([0.0, -1.0, 1.0, 0.0, 0.75, -0.25, 1.0, -0.5, 0.0, 0.75, -0.75, 0.75, -1.0, 0.75, 0.75, 1.0, 0.5, 0.5, -1.0, 0.25, -1.0, 0.25, -0.25, -1.0, -0.25, -0.25, 0.25, 0.25, -0.5, -0.75, -0.5, -0.5, -0.25, -0.25, 0.5, -0.75, 0.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.5, -0.75, 0.0, -0.25, 0.75, -1.0, -0.75, 0.0, 0.0, -0.5, 0.5, -1.0, 0.5, -1.0, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, 0.5, -0.5, -1.0, 0.25, 0.5, -0.75, -0.5, 0.0, -0.75, 0.5, 0.25, -0.25, 0.5, 0.75, 0.75, 0.5, -0.25, 0.0, -0.5, 0.25, 0.0, 0.25, 1.0, 1.0, 0.0, -0.5, -0.25, -0.75, -0.75, 0.5, -1.0, -1.0, 0.5, 0.0, 0.75, 0.25, -0.75, -1.0, ]);
    const array14 = new Float32Array([0.25, 0.75, 1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 1.0, -0.75, -0.25, -0.75, -1.0, -0.75, -0.75, 0.0, 0.0, -0.75, -0.5, -0.5, -1.0, -0.25, -0.75, -1.0, -1.0, 0.75, -0.75, 1.0, -0.75, -0.75, -0.5, -0.75, 0.0, -0.5, -0.5, -0.25, 0.25, 0.75, -0.5, 0.25, 0.5, 0.25, 0.25, 0.75, 0.5, -0.25, 0.25, 0.75, 1.0, -0.75, 0.5, 0.5, 1.0, -0.75, 0.25, 0.0, 0.0, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, -0.25, 0.25, -0.5, 0.25, 1.0, 0.75, -0.5, 0.75, 1.0, 0.25, 0.75, 0.5, -1.0, -1.0, 1.0, -1.0, -1.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.75, 1.0, -0.75, 0.25, -0.5, 1.0, -1.0, -0.5, 0.0, 0.0, 0.75, 1.0, 0.75, 0.0, -0.5, ]);
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device160.queue.writeBuffer(buffer1600, 0, array11, 0, array11.length);
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1501,
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
            module: shader_module1501,
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
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device160.destroy();
    const array15 = new Float32Array([1.0, 0.25, 0.5, 0.0, 0.25, 0.5, 1.0, 0.0, 1.0, 0.0, 0.5, -0.25, -0.75, 0.75, 0.5, 0.5, -0.5, 1.0, 0.5, -0.75, -0.25, -0.75, 0.75, 0.25, 0.25, -1.0, 0.75, -0.75, -0.75, -1.0, -1.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.5, 0.0, 1.0, -0.5, 0.5, 0.75, 0.25, -0.75, -0.5, -0.5, 0.0, -0.75, 1.0, -0.75, -0.75, 0.5, 0.0, -0.75, 0.0, 0.75, -0.75, 0.0, 1.0, 0.25, -0.75, -0.5, 0.0, 0.25, -1.0, -0.25, 1.0, 0.75, -0.75, -0.75, 0.5, 0.75, 1.0, 0.5, 0.0, 0.0, 0.5, 0.5, -0.5, 0.75, 0.75, -0.75, 0.75, 0.25, 0.5, 0.0, -0.25, 1.0, -0.5, 0.0, 0.25, -0.25, 1.0, -1.0, -0.25, 0.25, -0.25, -0.5, -0.5, -1.0, ]);
    const array16 = new Float32Array([-0.5, -0.25, 0.25, -1.0, 0.25, 0.5, -0.75, 0.0, -0.75, -0.25, 1.0, 0.25, -0.5, 1.0, 0.0, 0.25, 0.5, 1.0, -0.5, -0.75, -1.0, -1.0, 0.0, 0.0, -0.5, -1.0, -1.0, -0.75, -1.0, -1.0, -0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 1.0, -0.5, 0.0, -1.0, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -0.5, -0.25, -0.75, 1.0, -0.5, -0.5, 0.75, 0.0, -0.25, 0.5, 1.0, 0.25, -0.75, 1.0, 1.0, -1.0, -0.75, -0.25, 0.5, 0.25, 0.5, -1.0, -1.0, 0.25, -0.25, -1.0, 1.0, -0.25, -0.5, -0.75, 1.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.75, 0.25, -0.75, -0.75, 1.0, -0.25, 0.0, -0.5, -0.75, 0.25, -0.25, -1.0, 0.75, -0.75, -0.25, -0.75, -0.25, 1.0, ]);
    const render_pipeline1501 = device150.createRenderPipeline({
        label: "render_pipeline1501",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
    });
    const render_pipeline1502 = device150.createRenderPipeline({
        label: "render_pipeline1502",
        vertex: {
            module: shader_module1501,
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
            module: shader_module1501,
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
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline1503 = device150.createRenderPipeline({
        label: "render_pipeline1503",
        vertex: {
            module: shader_module1501,
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
            module: shader_module1501,
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
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    const array17 = new Float32Array([-0.75, -0.5, -0.75, 0.25, 0.0, 0.5, 1.0, 0.25, -0.25, -0.75, 0.0, -0.75, -1.0, -0.75, 0.75, 0.25, -1.0, 0.75, 0.25, -0.25, -0.25, -0.25, -0.75, -1.0, 0.75, 0.5, -0.5, -0.75, 0.25, -0.5, -0.75, -0.75, 0.5, 0.75, -1.0, 0.0, 0.25, 0.25, 0.75, -0.75, 0.25, 0.0, -0.25, -0.25, 0.5, -0.25, 0.25, -0.25, -0.75, 1.0, 0.0, -0.25, 1.0, -0.75, -0.75, 0.5, 0.0, 0.75, 0.0, -0.75, 0.0, 0.0, 1.0, 0.25, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, -0.25, 0.25, -0.75, 0.25, -0.75, -0.25, 0.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.5, 1.0, 0.25, 0.25, -0.25, -0.75, 0.75, -0.75, -0.75, -0.25, -1.0, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, 0.25, ]);
    
    device150.queue.writeTexture({ texture: texture1501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1500.destroy();
    
    device150.queue.writeTexture({ texture: texture1501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device150.queue.writeTexture({ texture: texture1501 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1502 = device150.createSampler( { label: "sampler1502" } );
    device150.queue.writeTexture({ texture: texture1501 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1504 = device150.createRenderPipeline({
        label: "render_pipeline1504",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    
    const texture1503 = device150.createTexture({
        label: "texture1503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1500.destroy()
    device150.queue.writeTexture({ texture: texture1501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler1503 = device150.createSampler( { label: "sampler1503" } );
    const texture_view15020 = texture1502.createView({ label: "texture_view15020" });
    
    
    const sampler1504 = device150.createSampler( { label: "sampler1504" } );
    device150.queue.writeTexture({ texture: texture1501 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view15010 = texture1501.createView({ label: "texture_view15010" });
    device150.queue.writeTexture({ texture: texture1501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.destroy();
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const bind_group_layout1700 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1700",
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
    const render_pipeline1700 = device170.createRenderPipeline({
        label: "render_pipeline1700",
        vertex: {
            module: shader_module1700,
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
            module: shader_module1700,
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
    
    
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    render_bundle_encoder1700.setPipeline(render_pipeline1700);
    const render_pipeline1701 = device170.createRenderPipeline({
        label: "render_pipeline1701",
        vertex: {
            module: shader_module1700,
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
            module: shader_module1700,
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
    const array18 = new Float32Array([0.5, 0.5, 0.5, 0.25, 1.0, 1.0, 0.5, -0.5, -0.25, 0.75, 0.25, 0.5, 0.25, 1.0, 1.0, -0.25, -0.25, -0.5, 0.25, 0.0, -0.25, 1.0, -0.75, -0.5, 0.75, 0.75, 0.25, 0.5, 0.5, -1.0, -0.75, 0.0, -0.5, -0.5, -1.0, 0.0, 0.5, 0.0, 0.25, -1.0, -1.0, 1.0, -1.0, -0.25, 0.5, -1.0, -0.5, 0.25, 0.0, -0.75, -0.5, -0.25, -1.0, -0.75, 0.0, 0.25, -1.0, -1.0, 0.0, 0.0, -0.5, 1.0, -0.75, -0.75, 0.75, 0.0, 0.5, 1.0, -1.0, 0.0, 0.5, -0.25, -0.5, 0.5, -0.5, 0.5, 0.5, 0.0, -0.25, -0.5, -0.75, 0.75, -1.0, 0.5, -0.5, 0.0, 0.25, 0.75, 1.0, -0.75, -0.75, 0.5, 1.0, 0.5, -0.5, -0.5, 0.75, -1.0, -0.25, -0.25, ]);
    render_bundle_encoder1700.insertDebugMarker("marker");
    render_bundle_encoder1700.insertDebugMarker("marker");
    const bind_group_layout1701 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1701",
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
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device170.destroy();
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    device190.destroy();
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view18000 = texture1800.createView({ label: "texture_view18000" });
    
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    const render_bundle_encoder1801 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1801",
        colorFormats: ["bgra8unorm"]
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view18001 = texture1800.createView({ label: "texture_view18001" });
    
    texture1800.destroy();
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    const texture1801 = device180.createTexture({
        label: "texture1801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view18010 = texture1801.createView({ label: "texture_view18010" });
    const sampler1801 = device180.createSampler( { label: "sampler1801" } );
    device180.destroy();
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const buffer2000 = device200.createBuffer({
        label: "buffer2000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout2000 = device200.createBindGroupLayout({ 
        label: "bind_group_layout2000",
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
    const render_bundle_encoder2000 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2000",
        colorFormats: ["bgra8unorm"]
    });
    device200.destroy();
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array19 = new Float32Array([-0.75, -0.5, 0.25, 0.75, 0.0, -0.25, 0.75, 0.5, -0.75, -0.5, -1.0, -0.25, 0.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.5, 0.25, -0.5, 0.75, 0.25, 0.0, 1.0, -0.75, 0.0, 0.75, -0.25, 0.0, 0.0, -0.25, 0.75, -0.75, 0.0, 0.5, 1.0, 0.5, 0.75, -0.5, 0.25, 0.25, -0.25, 0.0, -1.0, -0.75, 0.0, 1.0, 1.0, -0.75, 0.75, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, -0.25, 0.0, 1.0, -0.5, -1.0, -1.0, -0.25, 0.0, -0.25, -0.5, 0.0, -0.5, 0.5, -1.0, -1.0, 0.25, 0.0, 0.0, 0.5, -0.25, -1.0, 0.25, 0.5, -1.0, -0.25, 1.0, 0.5, 0.25, 0.0, 0.75, -0.75, -0.5, 1.0, 0.5, -1.0, 0.75, 0.75, -0.25, -0.25, 0.5, 0.25, 1.0, -1.0, ]);
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const render_bundle_encoder2200 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2200",
        colorFormats: ["bgra8unorm"]
    });
    const array20 = new Float32Array([0.0, 0.5, 1.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.25, 0.0, -0.75, -1.0, -0.5, 0.0, 0.5, 0.75, 0.25, -1.0, 0.25, -0.75, -0.5, 0.0, -1.0, 0.0, -0.5, 0.0, 0.75, -0.25, 0.0, 0.0, 1.0, 0.25, -0.25, -0.5, 0.75, 0.5, -0.5, -0.25, 0.75, 1.0, -1.0, 0.0, -0.5, 0.25, -0.25, -0.5, 0.0, 0.0, 0.0, 0.75, 0.0, -0.5, -1.0, 1.0, 1.0, -0.75, 1.0, 0.25, -0.5, -0.5, 0.25, -1.0, 0.75, -0.5, 0.0, -1.0, 1.0, 0.0, 0.0, -0.75, 1.0, 0.0, -0.5, -0.75, -0.75, -0.5, 0.5, -0.75, -0.5, 0.0, 0.5, -0.25, 0.25, -0.25, 1.0, -0.75, 0.5, -0.5, 0.0, 0.25, -0.5, 0.75, 0.75, -0.5, -0.75, 0.75, 0.25, -0.5, 0.75, 0.5, ]);
    const render_bundle_encoder2201 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2201",
        colorFormats: ["bgra8unorm"]
    });
    device220.destroy();
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture2100 = device210.createTexture({
        label: "texture2100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device210.queue.writeTexture({ texture: texture2100 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout2100 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2100",
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
    
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    device210.queue.writeTexture({ texture: texture2100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder2100.insertDebugMarker("marker");
    device210.queue.writeTexture({ texture: texture2100 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder2101 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2101",
        colorFormats: ["bgra8unorm"]
    });
    device210.destroy();
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const sampler2400 = device240.createSampler( { label: "sampler2400" } );
    var shader_module2400_code = "";
    try {
        shader_module2400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2400 = await device240.createShaderModule({ label: "shader_module2400", code: shader_module2400_code })
    const adapter25 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture2400 = device240.createTexture({
        label: "texture2400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer2400 = device240.createBuffer({
        label: "buffer2400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    device240.destroy();
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    const texture2500 = device250.createTexture({
        label: "texture2500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout2300 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2300",
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
    device250.queue.writeTexture({ texture: texture2500 }, array20, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture2300 = device230.createTexture({
        label: "texture2300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device250.queue.writeTexture({ texture: texture2500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view23000 = texture2300.createView({ label: "texture_view23000" });
    const bind_group_layout2301 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2301",
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
    device250.queue.writeTexture({ texture: texture2500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device250.queue.writeTexture({ texture: texture2500 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device250.queue.writeTexture({ texture: texture2500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler2300 = device230.createSampler( { label: "sampler2300" } );
    var shader_module2300_code = "";
    try {
        shader_module2300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2300 = await device230.createShaderModule({ label: "shader_module2300", code: shader_module2300_code })
    device250.queue.writeTexture({ texture: texture2500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture2500.destroy();
    const render_pipeline2300 = device230.createRenderPipeline({
        label: "render_pipeline2300",
        vertex: {
            module: shader_module2300,
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
            module: shader_module2300,
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
    var shader_module2500_code = "";
    try {
        shader_module2500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2500 = await device250.createShaderModule({ label: "shader_module2500", code: shader_module2500_code })
    const bind_group_layout2500 = device250.createBindGroupLayout({ 
        label: "bind_group_layout2500",
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
    const buffer2300 = device230.createBuffer({
        label: "buffer2300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer2500 = device250.createBuffer({
        label: "buffer2500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout2300 = device230.createPipelineLayout({ 
        label: "pipeline_layout2300",
        bindGroupLayouts: [bind_group_layout2301]
    });
    
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    
    const texture2501 = device250.createTexture({
        label: "texture2501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture2300.destroy();
    
    device250.destroy();
    const render_bundle_encoder2300 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2300",
        colorFormats: ["bgra8unorm"]
    });
    const array21 = new Float32Array([1.0, -0.25, -0.5, 1.0, 0.75, 1.0, 1.0, -1.0, 0.0, 0.25, -0.75, 0.0, 0.25, 0.5, 0.5, -0.75, 0.5, 0.25, -0.25, -1.0, 0.5, 0.0, 0.75, 0.75, -0.5, -0.25, 0.0, 0.25, -0.75, 0.75, 0.0, -0.75, -0.75, 0.75, -0.75, 1.0, -0.25, 1.0, 0.75, -1.0, -0.5, 0.75, 0.0, 0.5, 0.75, 0.25, 1.0, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, 0.25, -1.0, -1.0, -0.25, -0.75, 0.0, 1.0, 1.0, -0.25, 0.0, 0.25, 1.0, 0.5, 0.25, 1.0, 0.5, 0.25, 1.0, 1.0, 0.75, 0.25, -0.75, 0.25, 0.5, 0.75, -1.0, 0.25, 0.75, 0.25, -0.25, 0.25, 1.0, 0.25, -0.25, 0.75, 0.75, -0.5, -0.5, 0.5, -0.75, -0.75, -0.5, 0.0, 0.0, -1.0, -0.5, 0.0, ]);
    device270.destroy();
    const array22 = new Float32Array([0.5, -1.0, -0.25, 0.25, -0.75, 0.25, 1.0, -1.0, -1.0, 1.0, 0.5, -0.75, -0.25, -1.0, -1.0, 0.0, 0.0, -1.0, 1.0, -1.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.75, -0.75, 1.0, -1.0, -0.25, -0.25, -0.75, 0.5, -0.25, -0.25, -1.0, 0.25, 0.25, 1.0, 1.0, -0.5, -0.25, -0.5, -0.25, -0.75, -0.25, 0.5, 0.25, -0.25, -0.25, -0.75, 0.75, 0.25, 1.0, -1.0, -0.75, 0.0, 0.25, -0.75, 1.0, -0.5, 0.5, 0.25, 0.0, 0.75, -0.5, -1.0, -0.5, 0.5, 0.75, -0.75, 0.75, 0.5, -1.0, -0.5, -0.75, -0.5, -1.0, 0.0, -1.0, -0.75, 0.5, 0.5, 0.75, 0.25, 0.25, 0.5, -1.0, 0.75, 0.25, 0.0, -1.0, 0.5, 0.0, 1.0, -1.0, -0.5, -1.0, -0.25, 1.0, ]);
    const adapter28 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout2301 = device230.createPipelineLayout({ 
        label: "pipeline_layout2301",
        bindGroupLayouts: [bind_group_layout2301]
    });
    const render_bundle_encoder2301 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder2301.setPipeline(render_pipeline2300);
    const buffer2301 = device230.createBuffer({
        label: "buffer2301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2302 = device230.createBuffer({
        label: "buffer2302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2300 = device230.createBindGroup({
        label: "bind_group2300",
        layout: render_pipeline2300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2302,
                },
            },
        ],
    });

    render_bundle_encoder2301.setBindGroup(0, bind_group2300);
    
    const device280 = await adapter28!.requestDevice({ label: "device280" });
    const pipeline_layout2302 = device230.createPipelineLayout({ 
        label: "pipeline_layout2302",
        bindGroupLayouts: [bind_group_layout2300]
    });
    const array23 = new Float32Array([-1.0, 0.75, -0.75, -1.0, 1.0, -0.75, 0.75, -0.5, -0.5, 1.0, -0.75, -1.0, -0.25, 0.25, -1.0, -0.5, -1.0, -0.5, 0.25, 0.0, 0.5, -1.0, -0.5, 1.0, 0.75, 0.75, 1.0, -0.75, 0.25, 0.75, 0.0, 0.0, 0.25, 0.75, -0.5, -0.5, -0.25, -0.75, -0.25, -1.0, -1.0, 1.0, 0.25, 0.5, 0.75, 0.0, 0.25, 0.5, -0.5, -0.5, 0.0, -0.75, 0.75, 0.0, 0.0, 1.0, -1.0, 0.25, 0.75, -0.5, 0.0, 0.75, -0.75, -1.0, 0.25, 0.5, -0.5, -0.5, -0.75, 1.0, 0.75, 0.5, -0.75, 0.25, 0.75, 1.0, 1.0, -1.0, -1.0, -0.5, -0.25, -0.75, -0.75, 1.0, 0.5, -0.5, 0.25, -0.25, -1.0, 0.5, -0.75, -0.5, -0.5, -0.5, -0.25, -0.75, 1.0, 0.0, 0.75, -0.25, ]);
    buffer2300.destroy()
    device280.destroy();
    const sampler2301 = device230.createSampler( { label: "sampler2301" } );
    const texture2301 = device230.createTexture({
        label: "texture2301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder2300.insertDebugMarker("marker");
    
    const render_pipeline2301 = device230.createRenderPipeline({
        label: "render_pipeline2301",
        vertex: {
            module: shader_module2300,
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
            module: shader_module2300,
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
    const buffer2303 = device230.createBuffer({
        label: "buffer2303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module2301_code = "";
    try {
        shader_module2301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2301 = await device230.createShaderModule({ label: "shader_module2301", code: shader_module2301_code })
    buffer2301.destroy()
    const texture_view23010 = texture2301.createView({ label: "texture_view23010" });
    const pipeline_layout2303 = device230.createPipelineLayout({ 
        label: "pipeline_layout2303",
        bindGroupLayouts: [bind_group_layout2301]
    });
    const render_pipeline2302 = device230.createRenderPipeline({
        label: "render_pipeline2302",
        vertex: {
            module: shader_module2301,
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
            module: shader_module2301,
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
    
    buffer2303.destroy()
    const bind_group_layout2302 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2302",
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
    
    buffer2302.destroy()
    const adapter29 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer2304 = device230.createBuffer({
        label: "buffer2304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const buffer2305 = device230.createBuffer({
        label: "buffer2305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view23011 = texture2301.createView({ label: "texture_view23011" });
    buffer2305.destroy()
    const device290 = await adapter29!.requestDevice({ label: "device290" });
    const adapter30 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer2306 = device230.createBuffer({
        label: "buffer2306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture2301.destroy();
    device230.queue.writeBuffer(buffer2306, 0, array17, 0, array17.length);
    device230.queue.writeBuffer(buffer2306, 0, array21, 0, array21.length);
    device230.queue.writeBuffer(buffer2306, 0, array21, 0, array21.length);
    const sampler2900 = device290.createSampler( { label: "sampler2900" } );
    
    device230.queue.writeBuffer(buffer2306, 0, array22, 0, array22.length);
    device230.queue.writeBuffer(buffer2306, 0, array11, 0, array11.length);
    
    device230.queue.writeBuffer(buffer2306, 0, array3, 0, array3.length);
    const pipeline_layout2304 = device230.createPipelineLayout({ 
        label: "pipeline_layout2304",
        bindGroupLayouts: [bind_group_layout2302]
    });
    device230.queue.writeBuffer(buffer2306, 0, array4, 0, array4.length);
    
    
    device230.queue.writeBuffer(buffer2306, 0, array6, 0, array6.length);
    const pipeline_layout2305 = device230.createPipelineLayout({ 
        label: "pipeline_layout2305",
        bindGroupLayouts: [bind_group_layout2302]
    });
    device230.queue.writeBuffer(buffer2306, 0, array18, 0, array18.length);
    device230.queue.writeBuffer(buffer2306, 0, array18, 0, array18.length);
    const pipeline_layout2306 = device230.createPipelineLayout({ 
        label: "pipeline_layout2306",
        bindGroupLayouts: [bind_group_layout2301]
    });
    render_bundle_encoder2300.setPipeline(render_pipeline2300);
    device230.queue.writeBuffer(buffer2306, 0, array0, 0, array0.length);
    device230.queue.writeBuffer(buffer2306, 0, array9, 0, array9.length);
    const pipeline_layout2307 = device230.createPipelineLayout({ 
        label: "pipeline_layout2307",
        bindGroupLayouts: [bind_group_layout2302]
    });
    
    
    buffer2306.destroy()
    
    const render_pipeline2303 = device230.createRenderPipeline({
        label: "render_pipeline2303",
        vertex: {
            module: shader_module2301,
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
            module: shader_module2301,
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
    
    const render_bundle_encoder2900 = device290.createRenderBundleEncoder({
        label: "render_bundle_encoder2900",
        colorFormats: ["bgra8unorm"]
    });
    
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    device290.destroy();
    
    render_bundle_encoder2301.setVertexBuffer(0, buffer2303);
    const render_bundle_encoder2600 = device260.createRenderBundleEncoder({
        label: "render_bundle_encoder2600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline2304 = device230.createRenderPipeline({
        label: "render_pipeline2304",
        vertex: {
            module: shader_module2301,
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
            module: shader_module2301,
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
    const texture2302 = device230.createTexture({
        label: "texture2302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device260.destroy();
    const render_bundle_encoder2302 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout2308 = device230.createPipelineLayout({ 
        label: "pipeline_layout2308",
        bindGroupLayouts: [bind_group_layout2300]
    });
    var shader_module2302_code = "";
    try {
        shader_module2302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2302 = await device230.createShaderModule({ label: "shader_module2302", code: shader_module2302_code })
    const texture_view23020 = texture2302.createView({ label: "texture_view23020" });
    texture2302.destroy();
    
    render_bundle_encoder2302.setPipeline(render_pipeline2303);
    render_bundle_encoder2301.insertDebugMarker("marker");
}