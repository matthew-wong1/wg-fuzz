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
    const array0 = new Float32Array([0.0, 0.0, -0.5, -0.25, 1.0, -0.5, -0.5, -0.25, 0.25, 0.25, 0.5, 1.0, 0.5, -1.0, 0.5, -0.5, -0.75, -1.0, 0.25, 0.75, -0.75, -0.75, 0.25, -0.75, 0.5, 0.5, -1.0, -0.25, 0.75, 1.0, -1.0, 0.5, 0.75, -1.0, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, -0.75, -1.0, -0.5, 1.0, -1.0, 0.75, 0.25, 0.75, -0.75, -1.0, 0.5, 0.0, 1.0, -0.75, 0.75, 1.0, -1.0, 0.25, 0.25, -1.0, -0.75, -0.75, 0.5, 1.0, -0.25, -0.5, 0.0, 0.5, 0.25, 0.5, 0.25, 0.5, -1.0, -0.75, 0.0, 0.75, -0.75, 1.0, -0.25, -1.0, -0.5, -0.25, 0.0, -0.75, 0.25, 1.0, -1.0, -0.75, 0.5, 0.25, 0.5, 0.75, -0.75, 0.75, -0.5, -1.0, -0.75, 0.25, 0.0, 0.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("validation");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.pushErrorScope("validation");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    texture200.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_bundle_encoder200.insertDebugMarker("marker");
    const array1 = new Float32Array([-0.25, -1.0, -0.25, 0.5, 0.25, 0.25, -0.75, 1.0, 0.75, 1.0, 0.75, 0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 1.0, 1.0, 1.0, 0.5, 0.0, 0.0, 0.5, -0.25, -0.25, 0.0, 1.0, 0.75, -0.5, 1.0, 0.0, -0.5, -1.0, 0.5, 0.5, 1.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.25, 0.5, -0.5, 0.5, 0.5, 0.75, 0.25, -0.75, 0.0, 0.0, 0.25, 0.75, -0.5, 0.75, -0.5, 1.0, 0.5, 0.75, 0.0, 1.0, 0.5, -0.75, 0.0, 1.0, 0.5, 0.0, 0.75, 0.5, -0.75, 1.0, 0.5, -1.0, -0.5, 0.0, -0.75, 0.0, -1.0, 1.0, -0.5, -0.25, 0.0, 1.0, 0.5, -0.25, -1.0, -1.0, 1.0, 0.25, 0.0, 0.5, 1.0, -1.0, 0.0, -0.75, 0.5, -0.5, -1.0, -1.0, ]);
    
    const array2 = new Float32Array([1.0, 1.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 0.0, -0.25, 0.0, 1.0, 0.5, -0.5, 1.0, -0.25, -0.5, 0.0, 0.5, 0.5, -1.0, 1.0, -0.75, -0.25, -0.75, -0.25, 0.75, 0.75, -1.0, -0.75, 0.5, -0.25, 0.75, -0.25, 0.25, 0.25, 1.0, -0.25, -0.5, -0.75, 0.75, 0.25, -1.0, 0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 0.0, 0.25, -0.75, -0.75, 0.0, 0.25, 1.0, 0.5, 0.5, 0.5, 0.5, 0.25, -0.75, 0.75, -0.75, -1.0, -0.5, 0.75, 0.0, 0.75, -0.25, 0.75, -0.25, -0.75, 0.75, -0.75, 0.25, -1.0, -0.75, -0.5, -0.25, 0.0, 0.75, -1.0, -0.75, 0.25, -0.5, -0.25, 0.25, -0.75, 1.0, -0.75, 0.75, -1.0, -0.25, 0.25, -0.25, 0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture201.destroy();
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
    const command_buffer202 = command_encoder202.finish();
    
    const query202 = device20.createQuerySet({
        label: "query202",
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
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    buffer201.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query201.destroy()
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    device20.pushErrorScope("validation");
    const array3 = new Float32Array([0.5, -0.5, 0.0, 0.25, 0.75, 0.25, 0.75, 1.0, 1.0, 0.25, -0.25, 1.0, 0.75, -0.25, 0.25, -0.5, 0.75, 1.0, -0.5, 1.0, -0.75, 0.25, -0.25, 0.5, 0.25, 1.0, 1.0, 0.25, -0.75, -0.25, 0.75, 0.75, 1.0, 0.25, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, 0.0, 0.75, 0.5, 0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 0.75, -0.5, 0.5, -0.75, 0.5, 0.25, 1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -0.75, 0.0, 0.75, 0.25, -0.5, 0.0, 0.75, 0.0, 0.75, 0.25, 0.25, -0.75, -0.75, 0.25, 0.25, -0.75, 0.75, 0.75, 1.0, -0.75, -0.75, 1.0, -0.25, 0.0, -0.5, 1.0, 0.5, 0.75, -0.5, 0.0, -0.5, -0.25, -0.5, 0.25, -0.5, 1.0, 0.0, 0.0, -0.75, ]);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    render_pass_encoder2030.setPipeline(render_pipeline206);
    
    
    
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    device10.pushErrorScope("internal");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device30.pushErrorScope("validation");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer200.destroy()
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    
    
    buffer204.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline2010);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    device20.queue.submit([command_buffer202, ]);
    buffer101.destroy()
    query200.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder200.popDebugGroup();
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
    render_pass_encoder2040.setPipeline(render_pipeline206);
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.popDebugGroup();
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    render_pass_encoder2010.popDebugGroup();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group202);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setStencilReference(1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query200.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_pass_encoder2040.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    device30.destroy();
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.beginOcclusionQuery(0)
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device60.destroy();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline2010.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder2010.setStencilReference(1);
    const command_buffer100 = command_encoder100.finish();
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module103,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
        vertex: {
            module: shader_module205,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module205,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    query203.destroy()
    
    
    
    buffer203.destroy()
    texture203.destroy();
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture204.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer100.destroy()
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2010.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer202.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2040.insertDebugMarker("marker");
    buffer102.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const array4 = new Float32Array([1.0, 0.75, -1.0, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 1.0, 0.75, -0.75, -0.75, 1.0, 1.0, 0.0, 0.25, -0.5, 0.0, 0.5, -1.0, 0.75, 1.0, -0.5, 1.0, 1.0, -0.75, 0.0, 0.5, 0.5, 0.5, -0.75, -0.5, -0.25, -0.25, 0.0, 0.0, -1.0, 0.25, 0.25, -0.75, 0.0, -1.0, -1.0, 0.0, 1.0, -0.5, 0.0, -0.75, -0.25, 0.0, 0.25, 0.75, -0.25, 0.0, -0.25, -0.5, -0.5, -0.25, 0.0, -1.0, 0.5, -0.5, 1.0, 1.0, 0.75, -1.0, 0.25, -0.5, -0.75, 0.25, 0.0, 0.0, 1.0, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, 0.5, -0.5, -1.0, -1.0, 0.0, -0.5, 0.75, 0.0, 0.5, -0.5, 0.75, -0.5, 1.0, -0.25, -0.25, 0.75, 1.0, 0.5, ]);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.beginOcclusionQuery(0)
    
    
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_pass_encoder2010.setStencilReference(1);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder101.insertDebugMarker("mymarker");
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
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    query201.destroy()
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    buffer205.destroy()
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
        vertex: {
            module: shader_module205,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module205,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device20.pushErrorScope("out-of-memory");
    
    render_pass_encoder2030.endOcclusionQuery()
    query204.destroy()
    
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
        vertex: {
            module: shader_module206,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module206,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer206.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query204.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline100);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer700.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query202.destroy()
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
        vertex: {
            module: shader_module207,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module207,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    texture206.destroy();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    command_encoder101.popDebugGroup()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
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
    
    
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    query700.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    render_pass_encoder2030.setStencilReference(1);
    
    query101.destroy()
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.popDebugGroup();
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    render_pass_encoder2010.setStencilReference(1);
    
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline206.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    buffer104.destroy()
    device10.queue.submit([command_buffer100, ]);
    device10.pushErrorScope("validation");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query204.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    query100.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    
    texture700.destroy();
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    
    const array5 = new Float32Array([-0.75, -0.25, -0.5, -0.75, 1.0, 0.5, -1.0, 1.0, -0.5, 0.0, 0.25, 0.25, 0.75, -0.25, -0.5, -0.75, 0.0, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.0, -0.25, 0.5, -0.25, -1.0, 0.5, 0.0, -0.75, 0.0, 0.75, -0.25, -0.25, 0.25, -1.0, 0.0, -0.75, 1.0, 1.0, -0.75, -0.75, -0.75, -0.25, -0.5, -1.0, -0.5, -0.75, 1.0, 0.5, -0.75, -1.0, -0.75, 0.75, 1.0, 1.0, 1.0, 0.5, 0.0, -1.0, -0.25, 0.25, 0.75, 1.0, 0.5, 1.0, -0.25, 0.5, -0.25, 0.25, -0.75, 1.0, -1.0, 0.0, -1.0, -0.5, 0.25, -0.5, 0.0, 0.0, -1.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.75, -0.5, -1.0, -0.75, 0.75, -0.5, 0.0, 0.0, -0.75, -1.0, -0.5, 0.25, 0.5, ]);
    buffer2010.destroy()
    
    command_encoder102.popDebugGroup()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder7000.setPipeline(render_pipeline700);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer102 = command_encoder102.finish();
    render_bundle_encoder202.setPipeline(render_pipeline2015);
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    const render_pipeline2022 = device20.createRenderPipeline({
        label: "render_pipeline2022",
        vertex: {
            module: shader_module206,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module206,
            entryPoint: "fragment_main",
            targets: [
                {
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
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const render_pipeline2023 = device20.createRenderPipeline({
        label: "render_pipeline2023",
        vertex: {
            module: shader_module207,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module207,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    buffer701.destroy()
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group700);
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
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    query201.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder2030.setStencilReference(1);
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query701.destroy()
    buffer109.destroy()
    buffer108.destroy()
    command_encoder800.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query202.destroy()
    
    
    buffer703.destroy()
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.endOcclusionQuery()
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1011.destroy()
    render_pass_encoder7000.pushDebugGroup("group_marker");
    const command_buffer800 = command_encoder800.finish();
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout205,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    query201.destroy()
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder7000.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder7000.setVertexBuffer(0, buffer701);
    render_pass_encoder7000.draw(3);
    render_pass_encoder7000.end();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder2010.popDebugGroup();
}