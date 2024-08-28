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
        powerPreference: undefined
    });
    const array0 = new Float32Array([-1.0, -0.5, 0.25, 0.0, 0.5, -0.25, -0.25, -1.0, -1.0, 0.25, -0.75, 0.25, 0.0, 0.25, -0.75, 1.0, 0.0, -0.25, 0.25, -1.0, 1.0, -1.0, -0.25, -0.5, 0.5, 0.75, 1.0, 0.5, 0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -0.5, 0.25, 0.5, 1.0, 0.5, -1.0, -1.0, 0.5, 0.75, 0.0, 0.75, 1.0, -0.5, 0.25, -1.0, -1.0, -0.5, 1.0, -0.25, 0.0, -0.75, 0.25, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, -1.0, -1.0, -1.0, 0.25, 0.25, 0.25, -0.75, 0.75, -0.5, 0.5, 1.0, 0.0, -0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 0.25, -0.75, 0.5, 0.75, 0.25, 0.5, 0.25, -1.0, -0.5, -0.5, -0.5, -0.25, -1.0, 0.5, -0.5, 0.5, -0.25, 0.5, 0.75, ]);
    
    const array1 = new Float32Array([0.25, -0.25, -0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 1.0, 0.5, -0.75, 0.0, -0.25, 0.25, 0.5, 1.0, 0.25, -0.75, 0.0, -0.5, 0.25, -0.75, 0.5, -0.25, -0.25, 0.25, 0.75, -0.5, -0.25, 0.25, -0.25, -0.75, 0.75, -0.25, 0.25, -0.75, -0.25, -1.0, 0.5, 0.75, 0.25, -0.5, -0.75, -0.5, 1.0, 0.75, -0.5, 0.0, 0.75, -0.25, -0.75, 0.25, -0.25, 0.25, -0.5, -0.5, -0.25, 0.25, 1.0, -1.0, 0.5, 1.0, 0.0, -0.5, 0.5, -0.5, 1.0, -0.5, 0.75, 1.0, 0.75, -0.25, 0.0, 1.0, 0.75, -1.0, -0.75, -0.5, -1.0, -0.25, 0.75, 1.0, 1.0, -0.5, 0.0, 0.0, 0.75, 0.0, 0.75, -0.75, -0.75, 0.75, -1.0, 0.25, 0.25, -1.0, 1.0, 0.25, -0.75, 1.0, ]);
    
    
    
    const array2 = new Float32Array([0.25, -0.5, 0.0, 0.5, 1.0, 0.5, 0.75, -0.75, 1.0, 0.25, 0.25, -0.5, -1.0, -0.75, -0.25, -0.25, -0.25, 0.0, 0.75, -0.5, 0.25, 0.75, -0.25, -0.75, 0.25, -1.0, -0.75, -1.0, 0.25, 0.0, 0.5, 0.5, -0.5, -0.25, -0.75, 1.0, 0.25, -0.5, 0.75, 0.25, 0.25, -0.5, -0.5, 0.0, 0.0, -0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.25, -0.25, 0.25, 0.0, -0.25, -0.25, 0.25, 0.25, 0.5, -0.25, 0.0, 0.25, 0.75, 0.75, 0.75, 0.5, 0.25, -0.5, 0.25, 0.0, 0.0, 0.0, 0.5, -0.25, 0.75, -1.0, 1.0, -1.0, 0.25, -0.25, -0.5, -1.0, -0.5, -0.25, -0.75, -1.0, -0.25, -0.75, -0.25, -1.0, -1.0, 0.25, 0.5, -0.25, 0.5, 0.25, 0.0, 1.0, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture000.destroy();
    
    
    
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
    device00.destroy();
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.0, 0.75, 0.25, 0.25, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, -0.25, 0.75, 0.75, 0.0, -0.25, -1.0, -0.25, 0.25, 0.75, 0.25, -1.0, 0.25, 0.75, 0.75, -1.0, 0.75, 0.25, -0.25, -0.25, 0.5, 0.0, -1.0, -0.75, 0.0, -0.75, 0.5, 0.0, 0.0, 1.0, 0.75, -1.0, 0.5, 0.0, 0.25, -0.5, 1.0, -0.25, -0.5, 0.25, -1.0, -0.75, -1.0, -0.75, -0.5, -0.5, -0.25, -1.0, -1.0, 1.0, 1.0, 0.25, -0.75, 0.75, 0.5, -0.25, 0.0, -0.5, -0.75, -0.5, 0.75, -0.5, -1.0, 0.5, -0.75, -0.75, -0.75, -0.25, 0.0, 0.5, -1.0, 1.0, 1.0, 0.25, -0.25, 0.25, 0.5, -0.25, -1.0, 1.0, -1.0, 0.5, 0.0, -0.75, -0.25, -0.25, -1.0, 0.5, 1.0, -0.25, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture200.destroy();
    query200.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const array4 = new Float32Array([0.5, -1.0, 0.5, 0.5, 0.5, 1.0, -0.75, 0.25, -1.0, 0.5, 0.5, 0.0, 0.25, 0.0, 0.0, 0.5, -0.25, -0.5, -1.0, -1.0, 0.75, -0.75, -0.5, 0.0, -0.75, 0.0, 0.25, -0.75, -0.75, 0.0, -0.25, 0.75, -0.75, -0.25, -0.5, 1.0, 0.25, -0.25, 0.25, 0.0, -0.5, -0.25, 0.25, -1.0, 0.25, -0.75, -0.25, -0.75, -0.5, 1.0, 0.5, 0.5, 0.75, -1.0, 0.25, 0.0, -0.25, -0.5, -1.0, 0.75, 1.0, 0.75, 0.25, -0.25, 0.75, -1.0, 0.5, 1.0, 0.0, -0.5, -0.5, 0.75, -0.25, -0.5, 0.0, 1.0, -0.75, -1.0, -0.75, -0.75, 0.5, 0.0, -0.25, -0.25, -0.5, 0.0, 0.0, 0.75, -0.75, 0.0, -0.75, 0.25, -0.25, 0.25, -0.25, 0.0, 0.5, -0.75, 1.0, -0.75, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    query201.destroy()
    const command_buffer200 = command_encoder200.finish();
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query202.destroy()
    
    const array5 = new Float32Array([0.5, 0.0, 0.25, -0.25, 0.75, 0.0, 0.25, -0.5, -0.75, 0.25, -0.25, 0.75, -0.75, 0.5, 0.75, -0.5, -0.75, 0.75, 0.0, 1.0, 0.75, 1.0, -0.75, 0.75, 1.0, 0.25, 0.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 0.75, -0.75, -0.5, 0.5, 0.75, -0.5, 0.25, 0.25, 0.0, -0.75, 0.0, -1.0, 0.5, -0.5, 0.5, 0.0, -0.25, -0.25, 0.0, 0.0, 0.25, -0.5, -1.0, 0.75, 0.0, -1.0, 0.0, 0.75, -0.5, 0.0, -0.5, -0.25, -0.25, 0.0, 0.75, 0.0, 0.75, 0.75, 0.0, 0.75, 0.25, -1.0, -0.75, -0.75, -0.25, -0.5, 0.0, 0.0, -0.5, -0.5, -0.25, 0.25, 0.0, -0.75, -0.25, -0.25, 0.75, -0.75, 1.0, -1.0, -0.25, 0.25, 0.0, -1.0, -1.0, -0.5, -0.5, ]);
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2010.setStencilReference(1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    query202.destroy()
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
    query203.destroy()
    
    device20.pushErrorScope("out-of-memory");
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2010.setPipeline(render_pipeline202);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query202.destroy()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    query200.destroy()
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2020.setPipeline(render_pipeline203);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query202.destroy()
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    
    device10.destroy();
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    buffer201.destroy()
    texture202.destroy();
    
    const array6 = new Float32Array([0.75, 0.5, 0.25, -0.5, -1.0, -0.75, 1.0, -0.75, -0.5, -0.25, -0.75, -1.0, 0.75, 0.5, 0.5, -0.25, 0.5, 1.0, -1.0, -0.25, -0.25, 1.0, -0.25, -0.75, -1.0, 0.0, -0.5, -1.0, -0.5, -1.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 0.0, 1.0, -0.25, -0.5, -0.75, -0.75, -0.5, -0.5, -0.25, 0.5, -0.5, -0.75, -0.5, 0.25, 1.0, -0.25, 0.75, 0.75, 0.5, -0.5, -1.0, -0.75, 0.75, 1.0, -0.5, 0.25, 0.75, 0.0, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, -0.25, 0.25, 1.0, 0.75, 0.75, -0.5, -0.25, 0.75, 1.0, -0.25, 1.0, -0.75, -0.25, -0.75, 0.5, 0.0, -0.5, -0.75, 0.0, 0.25, 0.25, -0.25, -0.25, -0.25, 1.0, -0.75, -0.75, ]);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    render_bundle_encoder201.setPipeline(render_pipeline202);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.popDebugGroup();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2020.popDebugGroup();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    buffer200.destroy()
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    render_pass_encoder2010.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setPipeline(render_pipeline2012);
    
    const array7 = new Float32Array([0.0, 0.5, -0.5, 0.75, 0.0, -1.0, 1.0, -0.25, 0.75, 0.75, -1.0, 0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -1.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.75, 0.75, -0.75, -0.75, 0.75, -0.25, -0.75, 0.75, 0.5, -1.0, 0.25, -0.25, 1.0, -0.25, -0.5, 0.75, 0.25, -0.75, -1.0, 0.25, -0.75, -0.5, 0.5, 0.25, -0.25, 0.0, 0.5, 0.5, -1.0, -0.5, 0.75, 1.0, 0.75, 0.5, -0.25, -0.25, 0.5, 0.75, -0.5, -1.0, 0.5, 0.5, 0.75, 0.75, 0.25, -0.25, 1.0, 0.5, -0.5, -0.5, 0.5, 0.5, -1.0, -0.25, 0.75, 0.5, 0.5, -0.5, 0.0, 0.0, -0.75, 0.0, -0.75, 0.25, 0.25, -0.5, 1.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.75, 0.75, -0.25, 0.0, 1.0, ]);
    device20.queue.submit([command_buffer200, ]);
    texture204.destroy();
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    const array8 = new Float32Array([0.0, 1.0, 1.0, -0.75, 0.25, 1.0, 1.0, 1.0, 1.0, 0.5, 0.5, 0.75, -0.5, 0.75, 0.25, -0.75, 0.0, 0.75, -0.5, -0.5, 0.5, -0.75, -0.75, 0.25, -0.5, 0.25, 0.5, 1.0, 0.75, 0.75, 0.75, -0.75, -0.25, 0.75, 0.0, -1.0, 0.0, 1.0, 0.25, -1.0, 1.0, -1.0, -0.75, -0.75, -0.5, 0.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.0, 0.0, -1.0, 1.0, 1.0, 0.5, 1.0, 0.25, 0.75, -0.25, 0.25, 0.5, -0.75, 0.25, -1.0, 0.25, 1.0, -0.5, 0.0, -1.0, 0.25, -1.0, 0.0, -0.5, -0.5, 0.75, 0.75, 0.5, 0.25, -0.5, 0.0, 0.25, -0.5, -1.0, -0.25, -0.25, 0.75, 0.25, -0.75, 0.75, 0.25, 0.0, 0.25, 0.25, -1.0, -1.0, 0.0, 0.0, 0.75, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query200.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture203.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    query203.destroy()
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setStencilReference(1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    render_pass_encoder2020.popDebugGroup();
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query201.destroy()
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
        vertex: {
            module: shader_module204,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module204,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
        vertex: {
            module: shader_module204,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module204,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    
    buffer207.destroy()
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    buffer203.destroy()
    buffer205.destroy()
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    buffer300.destroy()
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query200.destroy()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
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
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture207 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    render_bundle_encoder200.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    texture207.destroy();
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.setStencilReference(1);
    command_encoder300.pushDebugGroup("mygroupmarker")
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2030.setPipeline(render_pipeline2013);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture206.destroy();
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder2020.insertDebugMarker("marker");
    buffer301.destroy()
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: query203
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.setPipeline(render_pipeline2019);
    
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
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
    device30.pushErrorScope("validation");
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.0, 0.25, -0.75, 1.0, -0.25, -1.0, -0.75, 0.25, -0.5, 0.25, 1.0, 1.0, 0.5, 0.75, -0.75, -0.75, 1.0, -0.25, 0.75, 0.0, 0.5, 0.75, 0.75, 1.0, 0.0, -0.25, 0.75, -0.25, 0.75, -0.25, 0.25, -0.5, -0.75, 0.75, 0.5, 0.25, 0.25, 1.0, -1.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.0, -0.75, 0.5, 0.75, 1.0, -0.5, 1.0, 0.5, 0.5, 0.75, 0.75, 0.75, -0.25, 0.5, -1.0, -0.75, 0.5, 0.25, -0.75, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -0.75, 0.25, 0.25, -1.0, 0.0, 0.75, 0.5, 0.0, 0.5, 0.25, 0.0, 0.5, 0.75, 0.5, 1.0, 1.0, 0.5, -1.0, 0.25, -0.5, 0.75, 0.25, -0.25, 0.25, -1.0, -0.75, 0.75, 0.25, 1.0, -0.5, -0.5, ]);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
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
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2020.setStencilReference(1);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer208.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline2022 = device20.createRenderPipeline({
        label: "render_pipeline2022",
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
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2040.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline2012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    command_encoder300.popDebugGroup()
    render_pass_encoder2040.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    buffer302.destroy()
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer2010.destroy()
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer2013.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.queue.writeBuffer(buffer2012, 0, array9, 0, array9.length);
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const render_pipeline2023 = device20.createRenderPipeline({
        label: "render_pipeline2023",
        vertex: {
            module: shader_module204,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module204,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const command_buffer301 = command_encoder301.finish();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer2012.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline2024 = device20.createRenderPipeline({
        label: "render_pipeline2024",
        vertex: {
            module: shader_module204,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module204,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer204.destroy()
    render_pass_encoder2040.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const array10 = new Float32Array([-0.5, 1.0, -0.5, -0.75, 0.0, 0.75, 0.75, 0.75, 0.75, 1.0, -0.75, -1.0, 0.0, -0.75, 0.25, 0.25, 0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 0.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.5, 1.0, -0.75, -0.25, -1.0, 0.0, 0.25, 0.0, -0.25, 0.75, 1.0, 1.0, -0.25, 0.75, -0.25, 0.5, -0.25, 1.0, -0.5, -0.25, 0.5, -0.75, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.5, 0.0, 0.25, -0.5, 0.25, 0.5, -0.75, 0.5, -0.75, 0.25, 0.25, 0.75, 1.0, -1.0, 0.75, 0.75, 1.0, 0.5, -1.0, 0.5, 0.5, -1.0, 0.5, 0.25, 0.25, -0.5, -1.0, -0.75, -0.75, 0.0, -0.5, 1.0, 1.0, 0.25, 1.0, 1.0, -1.0, -0.5, 0.0, 0.0, 0.75, 0.25, 0.0, -0.5, ]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    texture205.destroy();
    buffer206.destroy()
    const render_pipeline2025 = device20.createRenderPipeline({
        label: "render_pipeline2025",
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    buffer2011.destroy()
    device50.pushErrorScope("validation");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2020.popDebugGroup();
    
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setVertexBuffer(0, buffer207);
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline2026 = device20.createRenderPipeline({
        label: "render_pipeline2026",
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
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    command_encoder302.insertDebugMarker("mymarker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_pass_encoder2040.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    
    
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    query203.destroy()
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    query202.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_pipeline2027 = device20.createRenderPipeline({
        label: "render_pipeline2027",
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
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder302.setPipeline(render_pipeline301);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    query203.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    
    query203.destroy()
    
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setVertexBuffer(0, buffer207);
    render_pass_encoder2010.draw(3);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer302 = command_encoder302.finish();
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline2013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    render_pass_encoder2020.setVertexBuffer(0, buffer207);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline2019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group206);
    render_pass_encoder2030.setVertexBuffer(0, buffer207);
    render_pass_encoder2010.end();
    render_pass_encoder2020.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.end();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.end();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2040.setVertexBuffer(0, buffer207);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2040.end();
    const command_buffer204 = command_encoder204.finish();
}