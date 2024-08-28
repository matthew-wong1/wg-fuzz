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
    const array0 = new Float32Array([1.0, 0.75, -0.25, -0.75, -0.25, 1.0, 0.75, 1.0, 0.0, -0.75, -0.75, -0.5, 1.0, -0.25, 0.5, 1.0, 0.25, 0.75, 1.0, 0.75, 0.75, -0.75, -1.0, 0.0, 0.5, 0.5, -0.25, -0.75, 0.5, 0.0, 0.75, -1.0, -1.0, -1.0, -1.0, 1.0, 0.0, 0.5, -0.75, 0.25, 0.25, -0.5, -1.0, 0.25, 0.75, 0.25, 0.75, -0.75, 1.0, -1.0, 0.25, -1.0, -0.25, 0.0, -1.0, -0.5, 0.25, -0.25, 0.5, 0.75, -1.0, 0.0, 1.0, 1.0, 1.0, 0.0, -0.75, -0.75, 0.75, 0.0, -0.25, 1.0, 0.75, -0.25, 0.0, 1.0, 1.0, -0.75, 0.0, 0.25, -0.5, -0.25, -0.75, -1.0, 0.0, -0.75, 0.0, 1.0, 1.0, 0.5, -1.0, -0.25, 0.25, -0.5, -0.75, 0.75, 0.25, 0.25, 1.0, 0.0, ]);
    const array1 = new Float32Array([-0.25, -0.5, -0.25, 0.0, -0.5, -0.75, -0.25, -0.25, 0.5, 0.75, 0.25, -1.0, -0.5, 0.75, -1.0, 1.0, 0.25, 0.5, -0.5, 1.0, -0.25, -1.0, 0.75, -0.75, -0.5, -0.25, 0.5, -0.25, -0.25, -0.75, 0.0, 1.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.75, -0.25, 0.0, 0.0, 0.5, -0.25, -0.75, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, -0.25, 0.5, -0.5, -1.0, -1.0, 0.25, 0.25, -0.25, 1.0, -0.25, -1.0, -0.75, -1.0, -0.25, 0.5, 0.0, 0.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.25, 0.25, -1.0, -0.5, 0.75, 0.75, -0.5, 1.0, -0.5, -1.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.25, 1.0, -0.5, 0.25, -0.5, 0.75, 0.25, 1.0, -0.5, -1.0, -0.25, 0.75, ]);
    const array2 = new Float32Array([0.25, -1.0, -0.25, 0.75, 0.25, -0.75, 0.0, 1.0, 0.25, -1.0, -0.75, 0.75, 0.25, -1.0, -0.5, 1.0, -1.0, 0.0, 0.75, 0.5, 0.75, -0.5, 0.5, 0.0, 0.5, -0.25, 0.25, -1.0, 1.0, -0.5, 0.25, -0.75, -0.25, -0.5, -1.0, 0.0, -1.0, -0.25, -0.75, -0.75, 0.75, 0.25, -1.0, -0.75, -1.0, 0.5, 0.0, -1.0, 0.5, 0.25, 0.75, -0.25, 0.5, 0.0, 0.25, 0.5, 0.75, 0.75, 0.0, 0.25, 1.0, 0.5, 0.75, 0.0, 0.0, 0.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.5, 0.75, 0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.75, -0.5, -1.0, -0.25, 0.5, 0.75, -0.25, 0.75, 0.0, 1.0, -0.25, -0.75, 0.5, 0.5, 1.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([1.0, -0.75, -0.25, -0.25, -0.25, 0.25, -1.0, -0.5, -0.25, -0.25, 0.5, 1.0, -0.75, -0.5, -0.75, -0.75, 0.25, -1.0, -0.75, -0.75, 0.5, 0.75, 0.5, -0.25, -0.5, 1.0, 1.0, 0.5, 1.0, -0.75, 0.75, -0.75, -0.5, 0.25, 1.0, -0.75, 0.75, 0.5, 0.0, -0.75, 0.75, 0.75, 0.75, 0.5, 0.25, -0.25, 0.0, 1.0, -0.75, -0.25, 1.0, 0.75, 1.0, -0.5, 0.5, -1.0, 0.5, 0.75, -1.0, 0.75, 1.0, -0.75, 0.0, -0.5, 0.25, -0.5, -0.75, 0.5, 0.75, 0.75, 0.5, -0.5, 0.75, -1.0, -0.75, 0.5, -1.0, -0.25, -0.75, -1.0, 0.25, -0.5, -1.0, -0.75, 0.25, 0.0, 0.0, -0.25, 1.0, 0.75, 0.5, -0.25, 1.0, -0.25, 0.0, -0.75, -0.5, 0.5, 1.0, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
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
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query100.destroy()
    
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query200.destroy()
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.5, -0.25, -0.25, -0.5, -0.5, 0.75, -0.5, 1.0, 0.5, -0.25, 0.25, -0.5, -0.75, 0.75, -0.5, -0.5, -0.75, 1.0, -1.0, -0.5, 0.75, 1.0, 0.5, 0.0, 0.5, 1.0, -0.5, 1.0, 0.25, 0.25, -0.5, 1.0, 0.5, 1.0, 0.75, -1.0, -0.5, -0.75, 0.5, 0.5, 1.0, 0.75, -0.75, -0.25, 1.0, 0.25, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, 0.5, 0.75, 0.25, 0.5, 0.25, -0.25, 0.5, 0.25, 0.25, 0.75, 0.0, -0.75, 0.75, 0.0, 0.0, 0.25, 0.75, -0.25, -1.0, 0.0, -1.0, 0.75, 0.0, -0.25, 1.0, 0.0, -0.75, 0.5, 0.0, 0.25, -1.0, 1.0, -1.0, 0.75, -0.25, -0.75, 0.75, -0.25, 0.75, 0.0, 0.5, 1.0, 0.25, 1.0, 0.75, -0.75, 0.0, 0.75, ]);
    
    
    
    texture200.destroy();
    
    
    query100.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module203,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module203,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    
    query200.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    buffer102.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const array5 = new Float32Array([0.75, -0.25, -0.75, 0.25, 0.5, 1.0, -0.25, -1.0, 1.0, -1.0, 0.5, -0.75, 0.75, 1.0, 0.0, 0.75, -0.5, 0.25, -1.0, -0.25, -0.5, 0.5, 0.0, 0.0, 0.0, 0.0, 0.25, -0.75, -0.25, 0.75, 1.0, 0.5, 0.25, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, 0.75, -0.75, 0.0, -0.75, -0.25, 0.25, -0.25, -1.0, -0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.0, 0.25, 0.5, 0.75, 0.5, -0.75, -0.75, -0.25, 1.0, -0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 0.75, -0.75, 0.5, -1.0, -1.0, -0.5, -0.25, 0.5, -0.25, -0.5, -0.75, -0.5, -1.0, 0.0, -0.5, -0.5, -0.25, -0.25, 1.0, -0.25, -0.5, -1.0, 0.0, -1.0, -0.25, 1.0, -0.75, 0.5, -1.0, -1.0, 1.0, 1.0, ]);
    
    
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
    query200.destroy()
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
    buffer100.destroy()
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.25, -0.75, 1.0, -0.75, 0.25, 0.0, -0.75, -0.75, -0.5, 0.0, 1.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.5, 1.0, 0.25, 1.0, 0.25, -1.0, -0.5, 0.75, 0.5, 0.5, -1.0, -0.75, 1.0, 1.0, 1.0, 0.75, 0.0, -1.0, -1.0, -0.75, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, 0.5, -0.5, 0.75, 0.0, 0.0, -0.5, -0.75, -0.5, 0.25, 0.75, -0.25, -0.5, 0.5, 0.0, -0.5, 0.0, 1.0, -1.0, 0.25, 0.5, 1.0, -1.0, 0.0, -0.75, 1.0, -0.5, -1.0, 0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.75, 0.5, 1.0, 0.0, 1.0, 0.75, 0.0, 0.75, 1.0, 1.0, 0.25, -0.25, -0.5, -0.25, 0.75, -1.0, 0.25, -0.75, 0.0, -1.0, -0.5, 1.0, 0.75, -0.25, 0.5, ]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    
    device20.destroy();
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device00.destroy();
    
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array7 = new Float32Array([-0.75, 0.75, 0.25, -0.75, -0.75, -0.75, -0.5, -0.25, -1.0, 1.0, 1.0, 1.0, 0.0, -1.0, 0.75, 0.25, 0.75, -1.0, -0.25, 1.0, -0.25, -0.5, 0.0, -0.5, 0.25, -1.0, 0.25, -0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 0.5, -1.0, -1.0, 0.5, 0.5, -0.25, 0.0, 0.75, -0.75, -1.0, 0.25, -0.5, -0.25, 0.5, -0.5, 0.75, -0.5, 1.0, 0.5, -0.25, 0.75, 0.75, -1.0, -0.75, 0.25, -1.0, -0.5, 1.0, 0.5, 0.25, -1.0, 0.0, -0.25, -0.5, -0.5, -0.5, -0.5, -0.5, -0.25, -1.0, 0.25, -0.75, 0.5, -0.25, -0.25, 0.75, 0.25, 0.75, 0.0, -0.25, 0.75, -1.0, -0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 0.75, 1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 0.25, -0.75, ]);
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder100.popDebugGroup();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    buffer101.destroy()
    const array8 = new Float32Array([0.0, 1.0, 0.0, -0.25, -0.75, -1.0, 1.0, -0.75, 0.75, -0.75, -1.0, -0.5, 0.0, 0.25, 0.0, -0.25, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 0.75, 0.0, 0.75, 0.75, -1.0, -0.75, 0.25, -0.5, 0.75, 0.25, -0.5, 0.25, -0.25, 0.75, 1.0, 0.75, -0.75, -0.5, 0.75, 1.0, 0.0, -1.0, -0.75, 1.0, 0.25, 0.0, 0.5, -0.25, -0.5, 0.25, -0.25, 0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 0.0, -0.75, -0.25, -1.0, 1.0, 0.0, 1.0, -0.75, -0.5, 0.25, 0.75, 1.0, -1.0, 1.0, 1.0, 1.0, -0.25, -0.75, 1.0, 0.0, -0.25, -1.0, -0.75, 0.75, -1.0, 1.0, 1.0, 0.5, -0.75, 0.5, 0.0, -1.0, 0.5, -0.5, -1.0, -0.25, -0.75, -0.25, 0.0, -1.0, 0.75, ]);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    const array9 = new Float32Array([0.75, 0.0, -0.5, -0.25, -1.0, 0.5, -1.0, -0.75, -1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.0, 0.25, 0.0, -0.75, -1.0, 0.5, 0.0, 0.75, -1.0, 1.0, -0.25, -1.0, 0.25, 0.75, -0.75, 0.75, 0.75, 0.75, 0.5, 1.0, -0.75, -0.75, 1.0, 1.0, -0.5, 0.75, -1.0, -0.25, -0.75, 0.25, 0.75, 0.75, 0.75, 0.5, -0.25, -1.0, 0.25, 0.5, 0.5, -0.25, 0.75, 0.25, -0.25, 1.0, 0.25, 0.0, -1.0, -0.75, -1.0, 0.75, -0.25, -0.25, 0.5, -0.5, -0.75, 0.75, 0.0, -0.5, -0.5, -0.75, -0.25, 0.5, -0.5, 1.0, 0.0, 0.75, -0.75, -0.25, 1.0, 0.0, 0.25, 0.5, 0.75, 0.0, -1.0, 0.0, 0.5, 0.0, 0.75, -0.5, -0.5, 1.0, 0.25, -0.75, -1.0, 0.75, ]);
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module104,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module104,
            entryPoint: "fragment_main",
            targets: [
                {
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
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module104,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module104,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const array10 = new Float32Array([-0.75, -0.75, 1.0, 0.5, -0.25, -0.75, 1.0, 0.25, 1.0, -0.25, -1.0, 0.25, -0.5, 0.75, -0.25, 0.25, -0.5, 1.0, -0.75, 0.5, -0.5, -0.75, 1.0, -0.25, -0.75, 0.25, -0.25, 0.5, -0.75, -0.5, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.25, -0.5, -1.0, -0.25, -0.25, -0.5, 1.0, 1.0, 1.0, -0.5, 0.25, -1.0, 0.25, 0.75, -0.75, 0.25, 0.0, 1.0, -0.25, -0.75, 0.75, 0.5, -0.5, 0.0, -1.0, 0.0, -1.0, 0.75, -0.25, 0.5, 0.75, 0.75, -0.5, -0.25, 0.75, -0.75, 1.0, -1.0, 0.25, -0.5, -0.25, -1.0, -1.0, -0.5, -0.5, -0.75, 0.75, 0.0, -0.5, 0.5, 0.5, -1.0, -1.0, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, -1.0, 0.0, 1.0, ]);
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    device40.destroy();
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    device10.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
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
    texture500.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    texture503.destroy();
    
    
    device60.destroy();
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture501.destroy();
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device50.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    const array11 = new Float32Array([0.25, 0.75, -1.0, 0.75, 1.0, 1.0, 1.0, 0.0, -1.0, 0.25, 0.5, -0.75, 0.0, 0.75, 0.75, 0.5, -1.0, -0.25, 1.0, -0.25, 0.25, 0.5, 1.0, 0.0, 0.75, -0.75, -0.5, 0.5, 0.25, 0.0, -1.0, 0.0, 0.25, 0.0, 0.0, -0.25, -0.75, -0.25, -0.75, -0.75, 1.0, -0.25, 0.75, -0.5, 1.0, -0.25, -0.25, -0.5, -0.25, -0.5, 1.0, -0.5, 0.75, -1.0, 0.0, 0.75, 0.75, 0.75, 0.25, 0.0, 0.75, 0.0, -0.25, -0.5, -1.0, -1.0, 0.0, 0.0, -1.0, 1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, -1.0, -1.0, 0.0, 1.0, -0.75, 0.0, 0.25, 0.75, 0.0, -0.5, -0.75, -0.5, 0.25, 0.75, -0.5, -1.0, 0.25, 0.5, 0.25, -0.75, ]);
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const array12 = new Float32Array([0.5, -0.5, 0.5, -0.5, 1.0, 0.5, -0.75, -0.25, -0.5, -0.25, -0.25, 0.5, -0.5, 0.0, 0.25, 0.25, 0.0, 0.25, -0.5, -0.75, -0.75, 0.25, 1.0, -0.5, -0.75, -1.0, -0.5, 0.75, -0.75, 0.75, 0.75, 0.5, -0.25, 0.0, 0.0, 0.25, 0.75, 0.0, -0.25, 0.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.0, 0.75, 0.25, -0.5, 0.75, -0.25, -1.0, 0.5, 1.0, 0.5, 0.5, -0.25, -0.75, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, 0.0, -1.0, -0.25, -0.5, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, -0.5, 0.0, 1.0, 0.5, 0.5, 0.5, -1.0, 0.25, 0.75, -1.0, 0.5, -0.75, 0.0, -0.5, -0.5, -1.0, -0.5, 0.75, 0.25, 0.75, -0.75, 0.75, 1.0, 0.25, -0.75, -1.0, ]);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module700,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    device70.destroy();
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder800.popDebugGroup();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query800.destroy()
    
    device80.queue.writeTexture({ texture: texture801 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    query800.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query801.destroy()
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    texture800.destroy();
    
    const array13 = new Float32Array([-1.0, -0.5, 0.5, -0.75, -1.0, 0.0, -0.75, 0.25, 0.25, -0.5, -0.25, 1.0, 0.5, 0.75, 0.5, -0.5, 1.0, -1.0, 0.5, -0.5, -0.75, -0.5, 0.5, -0.25, -0.5, 0.25, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, 1.0, -0.25, 0.75, 0.75, -0.75, 1.0, -0.25, 0.5, 1.0, -0.25, -1.0, 0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 0.25, -1.0, 0.75, 0.75, -0.75, 0.0, -0.5, 1.0, 0.25, -1.0, 0.5, -0.25, 0.0, -0.5, -0.25, 0.25, 0.75, 0.0, -0.5, 0.0, 0.75, -0.5, -0.25, -1.0, 0.5, 0.75, -1.0, 0.25, 0.25, 0.75, 1.0, 1.0, -0.75, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 0.5, 0.0, 0.5, -0.75, -1.0, -0.5, -1.0, 1.0, 0.25, 0.75, -0.25, -0.25, ]);
    
    
    
    
    buffer800.destroy()
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    query801.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    query801.destroy()
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device80.queue.writeTexture({ texture: texture801 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    render_bundle_encoder800.popDebugGroup();
    
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module805,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module805,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder900.insertDebugMarker("marker");
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module806,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module806,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    
    
    device80.destroy();
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    render_bundle_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder1000.insertDebugMarker("marker");
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    query902.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    query903.destroy()
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder900.insertDebugMarker("marker");
    texture1000.destroy();
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_bundle_encoder1000.setPipeline(render_pipeline1000);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    query901.destroy()
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline1002 = device100.createRenderPipeline({
        label: "render_pipeline1002",
        vertex: {
            module: shader_module1001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query1000.destroy()
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    query901.destroy()
    
    query902.destroy()
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    query902.destroy()
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder902.pushDebugGroup("group_marker");
    
    device100.queue.writeBuffer(buffer1000, 0, array9, 0, array9.length);
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    
    query901.destroy()
    
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    texture1001.destroy();
    query903.destroy()
    query901.destroy()
    
    device100.queue.writeBuffer(buffer1000, 0, array4, 0, array4.length);
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module900,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    
    texture900.destroy();
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    render_bundle_encoder901.popDebugGroup();
    query904.destroy()
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device100.queue.writeBuffer(buffer1000, 0, array13, 0, array13.length);
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module900,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_bundle_encoder901.setPipeline(render_pipeline901);
    
    device100.queue.writeBuffer(buffer1000, 0, array8, 0, array8.length);
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    device100.queue.writeBuffer(buffer1000, 0, array9, 0, array9.length);
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    render_bundle_encoder902.insertDebugMarker("marker");
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    device100.queue.writeBuffer(buffer1000, 0, array12, 0, array12.length);
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device100.queue.writeBuffer(buffer1000, 0, array8, 0, array8.length);
    render_bundle_encoder900.setPipeline(render_pipeline900);
    
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_bundle_encoder1001.popDebugGroup();
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device100.destroy();
    
    const array14 = new Float32Array([-1.0, -0.5, 0.75, -0.25, 0.25, 0.0, 0.5, 0.0, -0.25, 0.0, -0.75, 0.0, -1.0, 0.0, 0.75, -0.75, 0.5, 1.0, 1.0, -0.5, 0.75, -0.25, -0.25, -1.0, -1.0, -0.25, 0.75, 1.0, -0.25, 0.75, -0.25, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, -0.5, 0.0, -1.0, -1.0, 0.5, 0.75, 0.0, -0.5, -0.75, 0.25, 0.75, -0.25, -1.0, -0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 1.0, 0.5, -1.0, 0.5, -0.25, 0.25, 0.25, 1.0, 0.75, 0.5, -0.5, 0.5, -0.25, -0.75, -0.75, 0.25, 0.5, 0.0, -1.0, 0.25, -1.0, 0.0, -0.5, 0.5, 0.75, -0.75, -1.0, 0.0, 0.5, 0.0, 0.75, 0.75, -1.0, 0.75, 0.25, -0.5, -0.25, 0.25, 0.25, 1.0, 0.5, 0.25, -0.5, 0.0, ]);
    query902.destroy()
    
    
}