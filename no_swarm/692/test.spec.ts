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
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-0.75, -0.25, 0.25, 0.0, 1.0, 0.75, 0.25, -0.25, -0.5, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, -0.5, -1.0, 0.5, 0.0, -1.0, -0.25, -0.25, -0.75, -0.5, 0.5, 0.75, -1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, 0.25, 1.0, -0.5, -1.0, 0.25, -0.75, 0.75, 0.5, -0.5, -0.75, 0.0, 0.75, 0.25, 0.0, 0.25, 0.25, -1.0, 1.0, 0.75, 0.5, 0.0, 0.0, 1.0, -1.0, 0.75, -0.75, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, 1.0, -0.5, 0.75, 1.0, 0.75, -0.5, 0.0, -1.0, -1.0, 0.25, -1.0, 0.75, -1.0, -0.75, 0.0, 1.0, 0.25, 0.75, -0.75, 1.0, 1.0, -0.25, 0.75, 0.75, 0.0, 0.75, -1.0, -1.0, 0.0, -0.25, -0.25, -0.75, -0.75, 0.75, ]);
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder200.popDebugGroup()
    
    command_encoder200.insertDebugMarker("mymarker");
    
    texture201.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture200.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    buffer200.destroy()
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
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_buffer200 = command_encoder200.finish();
    query200.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture203.destroy();
    
    
    query200.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder200.popDebugGroup();
    texture204.destroy();
    render_pass_encoder2020.setStencilReference(1);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture206.destroy();
    
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group200);
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    
    
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2020.insertDebugMarker("marker");
    const texture_view2052 = texture205.createView({ label: "texture_view2052" });
    render_pass_encoder2010.popDebugGroup();
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
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
    const texture_view2080 = texture208.createView({ label: "texture_view2080" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query201.destroy()
    const texture_view2071 = texture207.createView({ label: "texture_view2071" });
    render_bundle_encoder202.setPipeline(render_pipeline202);
    texture202.destroy();
    
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
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
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
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
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    
    
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
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
    const texture_view2072 = texture207.createView({ label: "texture_view2072" });
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
    query203.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    const texture_view2073 = texture207.createView({ label: "texture_view2073" });
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
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer203.destroy()
    buffer205.destroy()
    texture207.destroy();
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer204.destroy()
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
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture209.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer200, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const texture_view2081 = texture208.createView({ label: "texture_view2081" });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline200.getBindGroupLayout(0),
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
    
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setStencilReference(1);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group204);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout207,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture2010 = device20.createTexture({
        label: "texture2010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    query204.destroy()
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    buffer209.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout208,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    query203.destroy()
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2010.setStencilReference(1);
    const texture_view2082 = texture208.createView({ label: "texture_view2082" });
    
    
    query201.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array1 = new Float32Array([0.5, 0.5, 0.0, -0.25, 1.0, -1.0, -1.0, -0.25, 0.25, 0.25, -0.75, -0.25, 0.0, -1.0, 1.0, 1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -1.0, 0.5, 0.0, 0.75, -1.0, 0.75, 0.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.25, 0.25, 0.5, -1.0, 0.5, 0.75, -1.0, 0.5, 0.25, -1.0, 0.25, 0.0, 0.75, 0.5, 0.0, 0.0, -0.5, 1.0, 0.25, 0.0, 0.25, 1.0, 0.25, -0.5, 0.75, 0.0, -0.5, 0.0, -0.75, 0.25, -1.0, -0.75, -1.0, 0.25, 0.25, 1.0, -0.5, 0.25, -0.75, 0.0, -0.5, -0.5, -0.75, -0.5, 0.25, 0.75, 0.25, 0.75, 0.5, 0.25, 0.25, 0.75, 0.25, -0.75, -0.5, 0.75, -0.75, 0.5, 0.5, 0.5, -0.25, 0.0, 0.25, -1.0, 0.5, -1.0, 0.0, ]);
    const texture2011 = device20.createTexture({
        label: "texture2011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    buffer2011.destroy()
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout207,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture2012 = device20.createTexture({
        label: "texture2012",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device110.pushErrorScope("validation");
    render_pass_encoder2020.setStencilReference(1);
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    texture900.destroy();
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device90.pushErrorScope("internal");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2020.setStencilReference(1);
    
    buffer208.destroy()
    buffer201.destroy()
    buffer2010.destroy()
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    command_encoder700.insertDebugMarker("mymarker");
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout206]
    });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    
    buffer700.destroy()
    render_bundle_encoder201.popDebugGroup();
    
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    query201.destroy()
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture700.destroy();
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_pass_encoder2020.popDebugGroup();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const command_buffer1100 = command_encoder1100.finish();
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder902.pushDebugGroup("group_marker");
    const texture_view20120 = texture2012.createView({ label: "texture_view20120" });
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture_view20110 = texture2011.createView({ label: "texture_view20110" });
    command_encoder700.insertDebugMarker("mymarker");
    
    query202.destroy()
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer206.destroy()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const texture_view2083 = texture208.createView({ label: "texture_view2083" });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder900.insertDebugMarker("mymarker");
    const texture_view20121 = texture2012.createView({ label: "texture_view20121" });
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder902.insertDebugMarker("marker");
    
    
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    query201.destroy()
    
    
    
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer207.destroy()
    texture2011.destroy();
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.pushErrorScope("internal");
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view20120,
            },
        ],
        occlusionQuerySet: query204
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    render_pass_encoder2030.setPipeline(render_pipeline209);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer700 = command_encoder700.finish();
    const command_buffer900 = command_encoder900.finish();
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline209.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.queue.submit([command_buffer1100, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer700, ]);
    const command_buffer1101 = command_encoder1101.finish();
    device110.queue.submit([command_buffer1101, ]);
    device90.queue.submit([command_buffer900, ]);
}