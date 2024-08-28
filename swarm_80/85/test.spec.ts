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
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array0 = new Float32Array([0.25, 0.5, -0.25, -0.5, -0.5, -0.25, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -1.0, 0.75, 0.25, -0.25, -0.5, -0.75, 0.25, 0.5, -1.0, -0.5, -1.0, -0.75, -1.0, -1.0, 0.25, 0.0, 0.75, -1.0, -0.75, 1.0, 1.0, -0.5, -0.25, 0.5, -0.75, -1.0, 0.75, 0.75, -0.5, 0.5, 1.0, 0.5, 0.5, -0.75, -0.5, -0.5, -0.25, -1.0, -0.25, -0.25, -0.75, -1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 1.0, -0.25, -0.25, -0.75, -1.0, 0.25, 0.75, -1.0, 1.0, -0.25, 0.0, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, 1.0, 0.25, -0.5, -0.25, 0.75, -0.75, -0.75, 0.5, 1.0, -0.25, -0.75, -0.75, 0.25, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, 1.0, -0.75, -1.0, 0.75, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.75, 0.75, -0.5, -1.0, -0.75, 0.5, 0.5, 0.25, 0.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.0, 1.0, -1.0, 1.0, 0.5, 0.5, 0.5, -1.0, 0.5, 0.75, 0.0, 0.75, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, -1.0, 0.75, -0.5, 1.0, -0.75, -0.25, 1.0, 0.25, 1.0, -1.0, 1.0, -0.5, 0.75, 0.0, 1.0, 0.5, -0.5, -0.75, -0.5, 0.0, 0.5, 0.75, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.5, -0.5, 0.75, -0.75, -0.25, -0.5, -0.75, 0.5, 1.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.75, 0.75, -0.25, 0.75, -0.25, 0.0, -0.25, 0.25, 0.25, 0.5, 0.5, -1.0, 0.5, -0.75, -0.75, 0.0, 0.25, -1.0, -0.75, -0.75, -1.0, -0.75, -0.25, -0.75, -0.75, 1.0, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    
    
    device20.pushErrorScope("internal");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const array2 = new Float32Array([0.5, 0.75, -0.75, 0.25, -0.5, 0.0, 0.75, 0.25, -0.25, 0.75, -0.25, 0.75, 0.25, -0.25, 0.25, -1.0, 0.5, 0.5, -0.25, -0.75, 0.5, -0.75, 1.0, 0.0, -0.75, -0.5, 0.75, 1.0, 0.75, -1.0, 0.25, 0.25, -0.5, -0.25, -0.25, -0.25, 0.75, 0.75, -0.25, 0.75, 0.0, 0.75, 0.5, 0.5, 0.75, 0.25, -1.0, 0.0, 0.75, 1.0, -0.25, 0.75, 0.25, -1.0, -0.75, -1.0, -0.5, -0.75, 0.25, 0.0, -0.75, 0.25, 1.0, 0.75, -1.0, 0.5, -0.25, -0.5, 1.0, 0.75, -0.25, -0.5, -0.25, 0.0, 1.0, 1.0, 0.5, 0.75, 0.5, -1.0, 0.75, -1.0, -0.75, 0.75, 1.0, 1.0, -0.75, 0.25, 1.0, 0.75, -0.5, -0.25, -0.25, 0.5, -0.25, 0.75, -0.75, 0.25, 0.75, 1.0, ]);
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const array3 = new Float32Array([0.0, 0.25, 0.25, -1.0, -0.5, -1.0, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.75, -0.5, 0.5, 0.0, 0.25, -0.25, 0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.0, -0.25, -0.75, -0.25, -1.0, -0.25, 0.25, 0.0, 1.0, 0.5, 0.0, 0.75, 1.0, 0.25, -1.0, -1.0, -0.25, -0.75, -0.25, -0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -0.25, 1.0, 0.0, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, -0.5, -0.25, 0.75, -0.75, -1.0, 0.0, 0.25, -0.25, -1.0, -0.5, 0.0, -0.5, -0.25, -0.75, -0.5, -0.5, 0.25, 0.25, 1.0, -0.5, 1.0, -0.75, 1.0, 0.0, -0.5, 0.5, 0.75, -0.5, 0.25, 0.0, 0.25, 0.25, 0.25, 0.75, -0.5, -0.25, 1.0, -0.25, 0.0, 0.0, 0.5, -1.0, ]);
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer200.destroy()
    const array4 = new Float32Array([0.75, 0.75, 1.0, -1.0, 0.0, -1.0, 0.0, -1.0, -1.0, -1.0, 0.75, -0.5, 0.75, -0.5, 0.25, 0.75, 0.0, 0.25, 0.25, 0.5, 1.0, 0.5, -0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 0.0, 0.25, 1.0, -0.25, 0.0, 1.0, -0.75, 0.25, 0.0, -0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -0.75, 0.0, 1.0, -1.0, -0.5, -0.5, -0.25, -1.0, -0.5, 0.5, -0.5, 0.0, -1.0, 0.0, -0.25, -0.25, 1.0, 1.0, -0.25, 0.25, -0.25, 0.75, -0.25, 0.75, 1.0, 0.75, 0.0, 0.75, 1.0, 0.0, -0.25, -1.0, 0.75, -0.75, 0.0, 1.0, -0.25, 0.75, -0.75, -0.25, -1.0, -0.5, 0.0, 0.0, -0.25, -0.25, 0.25, 0.75, -0.75, 0.75, -1.0, -1.0, 0.25, 0.25, 0.0, -0.25, 0.75, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("out-of-memory");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query000.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder200.popDebugGroup();
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    command_encoder200.insertDebugMarker("mymarker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    render_bundle_encoder202.setPipeline(render_pipeline202);
    render_bundle_encoder002.popDebugGroup();
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer201.destroy()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    buffer501.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_bundle_encoder201.popDebugGroup();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    texture501.destroy();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    device20.pushErrorScope("internal");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const array5 = new Float32Array([-0.25, 0.0, -1.0, -1.0, -0.75, 0.75, -0.75, 0.5, 0.5, -0.75, -0.75, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, 0.0, 0.0, 0.75, 0.0, 0.5, 1.0, 0.75, 0.25, -0.75, 1.0, -0.75, -0.25, -0.5, -0.5, -0.25, 0.75, 1.0, -0.75, 1.0, -0.5, -0.25, 0.75, -0.5, 0.25, -0.5, -1.0, 0.0, 0.75, -1.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.25, 0.75, -0.5, -0.5, 1.0, -0.5, 0.0, 0.0, -0.5, -0.5, -0.25, 0.75, -0.5, -0.75, 0.0, 0.25, -0.5, 0.25, 0.25, 0.25, -1.0, 0.75, 0.75, -1.0, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, -1.0, -0.5, -0.5, 0.25, -0.75, 1.0, -0.25, -0.75, -0.25, -0.5, 1.0, 1.0, -0.25, 0.25, -1.0, 0.5, 0.5, 1.0, -1.0, ]);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder204.insertDebugMarker("mymarker");
    
    buffer500.destroy()
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
    
    
    
    
    texture202.destroy();
    
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
    command_encoder204.insertDebugMarker("mymarker");
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
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    device50.pushErrorScope("validation");
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    query200.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder500.setPipeline(render_pipeline501);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder202.insertDebugMarker("mymarker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    buffer203.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer202.destroy()
    command_encoder500.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query200.destroy()
    
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder000.popDebugGroup();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer205.destroy()
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    query200.destroy()
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    command_encoder500.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder002.setPipeline(render_pipeline000);
    query200.destroy()
    render_bundle_encoder202.popDebugGroup();
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
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
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.pushErrorScope("validation");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    texture400.destroy();
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    command_encoder501.insertDebugMarker("mymarker");
    compute_pass_encoder0000.popDebugGroup()
    query001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    buffer502.destroy()
    command_encoder501.copyBufferToBuffer(
        buffer503,
        0,
        buffer505,
        0,
        400
    );
    
    command_encoder501.clearBuffer(buffer505);
    const array6 = new Float32Array([-1.0, -0.5, 1.0, -1.0, -0.25, 0.75, 1.0, -1.0, -1.0, 1.0, 0.25, 0.5, -1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 1.0, -0.25, 0.0, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, -1.0, 0.0, -0.5, 1.0, -0.75, 0.5, 0.0, 0.5, 1.0, -1.0, -0.5, 1.0, -0.75, -0.75, -0.5, -0.25, 1.0, 0.25, -1.0, 1.0, 0.5, 0.5, -1.0, -0.75, -0.5, -0.75, -0.5, 1.0, 0.5, 0.0, 0.0, 0.25, 0.75, 1.0, 0.0, 1.0, 0.5, -1.0, -0.75, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.5, 0.75, -0.75, -0.25, -0.75, 0.5, -1.0, 0.25, 0.25, -0.25, -0.75, 0.75, -0.25, 0.5, 0.25, 0.0, -0.75, -0.75, 1.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.25, -0.5, -0.75, 0.25, ]);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    command_encoder501.copyBufferToBuffer(
        buffer503,
        0,
        buffer504,
        0,
        400
    );
    query001.destroy()
    const texture_view2014 = texture201.createView({ label: "texture_view2014" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.popDebugGroup();
    
    
    command_encoder501.copyBufferToBuffer(
        buffer503,
        0,
        buffer504,
        0,
        400
    );
    command_encoder500.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer505
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder000.setPipeline(render_pipeline002);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    command_encoder501.clearBuffer(buffer505);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    buffer000.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    buffer204.destroy()
    command_encoder500.clearBuffer(buffer504);
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder500.clearBuffer(buffer504);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device50.queue.writeBuffer(buffer504, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    compute_pass_encoder2010.popDebugGroup()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
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
        layout: render_pipeline201.getBindGroupLayout(0),
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
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    texture203.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device50.queue.writeBuffer(buffer504, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer504, 0, array5, 0, array5.length);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    command_encoder501.clearBuffer(buffer504);
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
    render_bundle_encoder501.setPipeline(render_pipeline500);
    render_bundle_encoder002.popDebugGroup();
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    command_encoder501.clearBuffer(buffer504);
    buffer504.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device50.queue.writeBuffer(buffer505, 0, array4, 0, array4.length);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    buffer507.destroy()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    
    query000.destroy()
    device50.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    compute_pass_encoder0000.popDebugGroup()
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.writeBuffer(buffer208, 0, array6, 0, array6.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer505, 0, array2, 0, array2.length);
    command_encoder200.clearBuffer(buffer208);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    device70.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("validation");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder205.clearBuffer(buffer208);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    buffer209.destroy()
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder502.setPipeline(render_pipeline500);
    render_bundle_encoder500.popDebugGroup();
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder200.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    compute_pass_encoder2030.insertDebugMarker("marker")
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
    query204.destroy()
    device00.pushErrorScope("validation");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer505.destroy()
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    buffer206.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture500.destroy();
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    buffer503.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    query500.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    query500.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder200.clearBuffer(buffer208);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query202.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    query500.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
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
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
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
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder2010.popDebugGroup()
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    query201.destroy()
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
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    compute_pass_encoder0000.popDebugGroup()
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    buffer208.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder502.insertDebugMarker("mymarker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    query700.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
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
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
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
    buffer003.destroy()
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    compute_pass_encoder2040.insertDebugMarker("marker")
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer401.destroy()
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
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
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    device80.pushErrorScope("out-of-memory");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer508, 0, array1, 0, array1.length);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}