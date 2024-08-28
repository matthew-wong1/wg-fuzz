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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    render_bundle_encoder200.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query201.destroy()
    
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder201.popDebugGroup();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
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
    texture200.destroy();
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    buffer200.destroy()
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
    
    texture201.destroy();
    texture203.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture202.destroy();
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    compute_pass_encoder2000.popDebugGroup()
    texture500.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer501 = command_encoder501.finish();
    const array0 = new Float32Array([-0.75, -0.5, 1.0, 0.0, 0.25, -0.25, 1.0, -0.25, 0.0, 0.5, -1.0, -0.5, -0.25, 0.25, 0.0, 0.75, 0.5, 1.0, 0.5, 0.0, -0.75, 0.5, 0.25, -0.25, -0.25, -0.25, -1.0, 0.25, 0.25, 0.0, -0.25, -0.75, -0.5, 0.5, 0.0, 1.0, 1.0, -0.25, -0.5, 0.25, -1.0, 0.0, 0.25, -1.0, -0.75, 0.5, -1.0, -1.0, -0.25, 1.0, -0.5, -1.0, 0.75, 0.75, 1.0, -0.75, 0.75, -0.75, -1.0, -0.5, -0.5, 0.5, -0.75, -0.25, 0.75, -0.5, 0.25, 0.75, 1.0, 0.25, 0.0, 0.5, -0.25, -0.75, 0.0, 0.75, 1.0, -0.5, 0.5, -0.75, -0.25, 0.0, 0.0, -0.25, 0.5, 0.75, -1.0, 1.0, 0.0, -0.25, 0.25, 0.25, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, 1.0, -1.0, ]);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    buffer201.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    command_encoder500.insertDebugMarker("mymarker");
    query200.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    texture501.destroy();
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder201.popDebugGroup();
    
    
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device50.pushErrorScope("internal");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query201.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    query201.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    query200.destroy()
    
    command_encoder502.insertDebugMarker("mymarker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    query203.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer203.destroy()
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.destroy();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
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
    query204.destroy()
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
    command_encoder500.insertDebugMarker("mymarker");
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    texture401.destroy();
    query204.destroy()
    device40.destroy();
    command_encoder500.insertDebugMarker("mymarker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    compute_pass_encoder2000.setPipeline(compute_pipeline203);
    query204.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    query500.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    command_encoder502.insertDebugMarker("mymarker");
    buffer204.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder502.popDebugGroup()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
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
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder201.insertDebugMarker("marker");
    query201.destroy()
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2011, 0);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    buffer206.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder502.insertDebugMarker("mymarker");
    const array1 = new Float32Array([-1.0, -0.75, -0.5, 1.0, 0.25, -0.5, -0.25, 0.5, 0.0, 0.5, -0.75, 0.0, -0.75, 0.0, -1.0, -1.0, 0.25, -1.0, 0.75, 0.5, -0.5, 1.0, -0.5, -0.5, 0.75, -1.0, 0.25, 1.0, 0.0, -0.75, -0.25, 0.0, -0.5, 0.5, 0.25, 1.0, 0.5, -0.75, 0.0, -0.5, 0.25, 0.0, -0.5, 0.0, -0.25, 1.0, -0.25, 0.75, 0.25, 0.75, 0.75, 0.25, -0.5, 0.25, 1.0, 0.25, -1.0, -0.25, 0.25, 0.75, 0.5, 0.75, 0.75, -0.75, -0.75, -0.25, -0.5, -0.25, 0.75, 0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -1.0, 0.0, 0.25, 0.75, -0.75, -0.5, 0.75, 0.25, 0.75, -1.0, 0.5, 0.5, -0.5, -0.5, -0.5, 0.5, 0.25, -0.5, -1.0, -0.5, 1.0, 0.75, -0.75, -1.0, 0.25, ]);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer2011, 0, array1, 0, array1.length);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    render_bundle_encoder201.popDebugGroup();
    buffer209.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.drawIndirect(buffer2011, 0);
    device20.pushErrorScope("validation");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2012, 0);
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    command_encoder502.insertDebugMarker("mymarker");
    
    
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    
    
    query200.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_buffer202 = command_encoder202.finish();
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    buffer2011.destroy()
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.end();
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    render_bundle_encoder502.setPipeline(render_pipeline500);
    query502.destroy()
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    
    query202.destroy()
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    query502.destroy()
    
    
    device50.queue.submit([command_buffer501, ]);
    
    query201.destroy()
    
    buffer501.destroy()
    compute_pass_encoder2001.setPipeline(compute_pipeline201);
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder500.popDebugGroup()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder5000.setPipeline(compute_pipeline503);
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
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder502.insertDebugMarker("mymarker");
    buffer205.destroy()
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    device20.pushErrorScope("validation");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module504,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    compute_pass_encoder5000.insertDebugMarker("marker")
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    
    query203.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    query202.destroy()
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query501.destroy()
    
    
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    buffer700.destroy()
    
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group204);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const array2 = new Float32Array([0.0, -0.5, 0.25, 0.25, -0.75, -0.5, 0.25, 0.0, 1.0, 0.25, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.5, -0.75, 1.0, -1.0, 0.0, -1.0, -0.5, 1.0, 0.25, -0.75, 1.0, 1.0, -0.5, 0.25, -0.25, 0.25, -0.25, -0.25, -0.75, 0.5, -1.0, -0.75, -1.0, 0.25, -0.75, -0.5, -1.0, 1.0, -0.25, 1.0, -0.5, -0.25, -0.5, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, -0.75, -0.25, -0.5, 1.0, 0.75, 0.25, -0.75, -0.5, -0.75, 0.25, -1.0, 1.0, 0.0, -0.5, -0.75, 1.0, -0.5, 0.0, 0.5, 0.5, -0.5, 0.0, -0.25, 0.5, -0.5, 0.25, 1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 1.0, -1.0, 0.75, 0.5, -0.25, -0.5, 0.25, 0.25, -1.0, -1.0, -0.5, -1.0, 0.0, ]);
    const array3 = new Float32Array([-0.75, 0.0, -1.0, 0.75, 0.0, 0.25, 0.75, -0.5, -0.75, -1.0, 0.0, 0.75, 0.5, 1.0, -0.75, 0.5, 0.75, 0.75, 1.0, -0.25, -1.0, 0.5, -1.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.75, 0.25, 0.25, 0.5, -1.0, 0.75, -0.5, -0.5, 0.75, -1.0, -0.75, -0.75, 1.0, -0.5, -0.25, 0.5, 0.5, 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.75, -0.25, -0.75, 0.5, -1.0, -1.0, 0.5, 1.0, -0.25, -0.75, 0.5, 0.0, 1.0, 0.75, 0.25, 0.75, 0.75, 0.0, 0.75, 0.25, 0.75, -0.25, -0.25, -0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 0.25, -1.0, -1.0, 1.0, -0.75, 0.75, 0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 0.25, -0.25, 0.0, 0.75, 0.0, -0.75, -0.5, 0.5, ]);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device80.pushErrorScope("internal");
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device70.pushErrorScope("internal");
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    query500.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const command_buffer700 = command_encoder700.finish();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture502.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    command_encoder203.clearBuffer(buffer2012);
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    command_encoder203.clearBuffer(buffer2012);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer2012.destroy()
    buffer2010.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder5000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const sampler2011 = device20.createSampler( { label: "sampler2011" } );
    command_encoder503.insertDebugMarker("mymarker");
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder2001.insertDebugMarker("marker")
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.setPipeline(compute_pipeline507);
    const array4 = new Float32Array([0.75, 0.0, -1.0, 0.75, -0.5, -1.0, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, -0.5, -0.25, -0.25, 0.75, 0.25, -0.75, -0.25, -0.5, 0.25, -0.75, -0.5, -0.75, -0.75, -0.75, -0.25, 1.0, 0.0, -0.5, -0.75, -1.0, 0.5, 0.25, 0.75, 0.75, 0.5, 0.25, -0.5, -0.25, 1.0, -0.75, 0.25, -0.75, 0.75, -0.5, -0.25, 0.5, 0.0, 0.0, -1.0, -0.5, 0.25, 0.5, -0.25, -1.0, 0.5, 0.25, 1.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.0, 0.5, 1.0, -1.0, -0.5, -1.0, 0.75, -0.5, -0.25, 0.25, -1.0, -1.0, 0.5, -0.5, 0.5, 0.5, -0.5, -0.25, 0.0, 0.0, -0.25, 0.25, -0.75, 1.0, 1.0, -0.5, 1.0, -0.5, -0.75, 0.0, -0.75, 0.75, -0.5, -0.25, 0.75, -0.25, ]);
    command_encoder203.insertDebugMarker("mymarker");
    query501.destroy()
    
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2016, 0);
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer505.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    query202.destroy()
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    buffer500.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer2016.destroy()
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
    render_bundle_encoder202.setPipeline(render_pipeline201);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer701.destroy()
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    
    render_bundle_encoder201.setVertexBuffer(0, buffer201);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    
    
    compute_pass_encoder2030.setPipeline(compute_pipeline2012);
    compute_pass_encoder2010.end();
    compute_pass_encoder2001.end();
    const command_buffer201 = command_encoder201.finish();
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline507.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group502);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline2012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group205);
    const command_buffer503 = command_encoder503.finish();
    device20.queue.submit([command_buffer202, ]);
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder5020.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group503);
    device50.queue.submit([command_buffer503, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2019, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.dispatchWorkgroups(100);
    compute_pass_encoder2030.end();
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5020.end();
    compute_pass_encoder5000.end();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer502 = command_encoder502.finish();
    const command_buffer500 = command_encoder500.finish();
    const command_buffer203 = command_encoder203.finish();
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([command_buffer502, ]);
    device20.queue.submit([command_buffer203, ]);
}