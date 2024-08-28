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
        powerPreference: undefined
    });
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
    
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    
    
    const array0 = new Float32Array([-0.75, 1.0, 0.25, -0.75, -0.5, 0.75, -1.0, 1.0, 0.5, 1.0, -0.5, -0.75, -0.5, -0.75, 0.25, -1.0, 0.5, 0.0, 0.25, -1.0, 0.25, 1.0, 0.75, -0.25, -0.75, -1.0, -1.0, -0.75, 0.25, 0.5, -0.25, 1.0, 0.75, 0.5, 0.25, -0.75, 1.0, 1.0, 1.0, -1.0, 1.0, -1.0, 0.25, 0.5, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, -0.25, 0.0, -0.5, -0.5, -1.0, -0.5, 0.75, 0.25, 1.0, -0.75, -0.5, -1.0, -0.25, -0.25, 1.0, 1.0, 1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -0.5, -0.5, 0.75, 0.0, 0.0, 0.5, 0.0, 0.5, 0.5, 0.0, 0.25, -0.25, 0.5, 1.0, 0.0, 0.0, 0.5, 0.75, 1.0, -1.0, -1.0, 0.25, 0.25, 0.25, -1.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-0.5, -0.75, 0.0, -0.5, 0.75, 0.75, 0.5, 0.75, 0.5, 0.5, -0.25, -0.5, -0.5, 0.25, 0.25, -0.75, -0.5, 0.0, -0.25, 1.0, -0.25, -0.5, 0.25, 0.25, 0.25, 0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 0.25, 0.0, -0.25, 0.0, 0.5, 0.25, 0.75, 0.75, -1.0, -0.5, -1.0, 0.0, -1.0, -0.25, 1.0, -0.25, -1.0, 0.25, 0.0, -0.25, -1.0, -1.0, 1.0, 1.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.75, 0.75, -0.75, 0.75, 0.75, 0.5, 0.0, -0.75, 0.75, -0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 1.0, -1.0, -0.75, -1.0, 0.25, -0.25, 0.5, -0.5, -1.0, 1.0, 0.0, -0.75, -0.5, -1.0, -0.75, 0.25, 0.5, -1.0, 0.25, -0.5, -0.25, 1.0, -1.0, 0.75, 1.0, ]);
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device00.destroy();
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array2 = new Float32Array([-0.75, 0.0, -0.5, 0.5, 0.5, 0.5, -0.75, -0.75, 0.5, 1.0, -0.25, -0.25, 0.5, 0.5, -0.25, -0.75, -0.25, 1.0, 0.0, -0.75, 1.0, 0.25, -0.25, 0.5, -0.5, 0.75, 0.5, -1.0, 1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 0.0, 0.5, 0.0, -0.5, -0.75, -0.5, 1.0, 0.0, 1.0, 1.0, 0.25, 0.5, -0.75, 0.75, 0.0, 0.0, -0.75, 0.25, 0.75, 1.0, 0.75, -1.0, -0.25, -0.75, 1.0, -0.75, 0.5, -0.5, -0.25, 0.25, -0.5, -0.25, -1.0, 0.25, 1.0, 1.0, 0.0, 1.0, -1.0, -0.75, -0.5, -1.0, 0.0, -0.75, 0.0, 0.0, -0.75, 0.5, 0.25, 0.25, -1.0, 0.5, 0.5, -0.5, -0.25, -0.75, 0.25, -0.5, 0.5, -0.25, 0.0, -0.25, -1.0, 0.75, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query200.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device40.destroy();
    
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    
    device60.destroy();
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    query200.destroy()
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    
    render_bundle_encoder200.popDebugGroup();
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.setPipeline(render_pipeline202);
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device70.destroy();
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array3 = new Float32Array([-0.25, 0.75, -0.25, 1.0, -0.5, -1.0, 0.25, -0.5, -1.0, 0.75, -0.25, 0.0, -1.0, 1.0, -1.0, -0.25, 0.5, -0.25, -0.25, 0.75, -0.25, -0.75, -0.5, -0.75, 0.25, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, 0.0, -0.5, -0.25, 0.0, -0.5, 1.0, -0.5, 0.25, -1.0, -0.5, -0.75, 0.25, -0.75, -1.0, -0.75, 0.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.75, -0.25, 1.0, 0.0, -0.25, -0.5, -1.0, 0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 1.0, 0.75, 0.5, 0.25, -0.5, -1.0, -0.75, -0.25, -1.0, 0.5, 0.5, -0.75, -0.25, 0.0, 0.75, 1.0, -0.25, -0.75, 0.5, 0.75, 0.75, 0.5, 0.25, 0.75, -0.25, 0.5, 0.75, -0.25, 0.25, -0.5, -0.5, 0.0, 0.5, 1.0, 0.25, ]);
    query200.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device50.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
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
    query200.destroy()
    
    
    
    query200.destroy()
    
    
    texture200.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    render_bundle_encoder200.insertDebugMarker("marker");
    query202.destroy()
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder801.insertDebugMarker("marker");
    
    
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    query800.destroy()
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
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
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder801.insertDebugMarker("marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    
    
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([-0.5, -1.0, 0.5, 0.5, 0.25, 0.5, -1.0, 0.25, -0.25, -0.25, -0.75, 0.25, 1.0, 0.0, -0.75, 0.75, -0.75, -1.0, 0.75, 0.75, -0.25, 0.75, 0.0, 0.0, -1.0, -1.0, 0.25, 0.75, 0.75, 0.5, -0.25, -0.25, -0.25, -0.75, 0.25, 0.75, -0.25, -0.5, 0.25, -0.75, -0.75, 0.0, -0.75, -0.5, -0.25, 0.75, 0.5, -0.5, 0.25, 0.5, 0.5, 0.25, 0.5, -0.5, -0.75, 0.5, 0.75, -1.0, -0.5, -0.5, 0.25, -1.0, -0.75, -1.0, 0.25, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, -1.0, -1.0, 0.5, -0.25, 0.75, 0.5, 1.0, 0.5, -0.5, 0.0, 0.75, 0.75, 0.25, -0.25, -0.25, -0.75, -1.0, -0.75, 0.0, -0.25, 0.0, -1.0, -0.25, 0.75, 0.5, 0.5, 0.75, -0.75, -0.5, ]);
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query801.destroy()
    query801.destroy()
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    texture800.destroy();
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    query801.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture900.destroy();
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    device80.destroy();
    
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
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const array5 = new Float32Array([-0.5, -0.75, 0.25, 1.0, 0.25, -0.5, -0.5, 0.25, 1.0, 0.75, -0.5, 0.0, -0.5, -0.75, 1.0, 0.5, -0.5, 0.75, -0.25, 1.0, 0.75, 1.0, 0.0, -0.25, -0.75, 0.75, -1.0, 1.0, 1.0, 0.25, 0.25, 1.0, -0.25, 0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -0.5, -1.0, 1.0, -1.0, 0.25, -0.25, 1.0, -0.25, 1.0, 0.5, 0.0, -0.75, 1.0, -0.25, -0.75, 0.0, 0.25, -0.25, -1.0, 0.5, -0.75, 0.25, 1.0, -0.75, 0.25, -0.25, 0.75, 0.75, 0.5, 0.5, -0.25, 0.0, -1.0, -0.5, 0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 0.25, -0.75, -1.0, 0.5, 0.5, -0.25, -1.0, 0.0, 1.0, 0.25, 0.25, 0.25, -1.0, -0.5, 0.75, -0.5, 0.5, -0.5, -0.75, 0.25, 0.5, ]);
    
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    texture1100.destroy();
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
    
    device110.destroy();
    
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    const array6 = new Float32Array([-0.75, 0.0, 0.0, -1.0, -0.5, -1.0, 0.0, 1.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.25, 0.75, 0.25, 1.0, 1.0, -0.75, 0.0, -0.75, 0.75, 0.75, 1.0, 0.75, 0.25, 0.5, -0.25, 0.0, -0.5, 1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.75, -0.25, -0.5, -0.25, -0.75, -0.25, -0.25, -1.0, -1.0, 0.5, -1.0, -0.5, 0.75, 0.0, 0.75, -1.0, 0.75, 1.0, -0.75, 0.5, 0.5, -0.75, -0.25, -0.75, -0.75, 0.0, -1.0, 0.25, 0.25, -0.25, -1.0, 0.75, 1.0, -0.75, -0.25, 0.25, -0.25, -0.5, 0.0, 0.75, 0.5, -1.0, -0.25, -1.0, 1.0, 0.5, -0.25, 0.25, -1.0, -0.5, -1.0, 1.0, 0.25, -0.75, -0.5, -0.25, -0.25, 1.0, ]);
    const array7 = new Float32Array([0.25, -1.0, 0.5, -0.75, -0.5, 0.75, -0.25, -0.25, 0.0, -0.25, 0.25, 0.75, -0.25, -0.75, -1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 0.5, 0.0, -0.75, 0.0, -0.5, 0.75, -1.0, 0.75, 0.75, -0.75, 0.5, 0.25, -1.0, 0.5, 0.5, -0.5, -0.5, -0.25, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, 0.75, 0.75, 0.75, -0.25, -0.75, -0.5, 0.75, 0.25, 0.25, -0.75, 0.5, -0.25, -1.0, 0.25, -1.0, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, -0.75, -0.75, -1.0, 1.0, 0.75, 0.0, -0.5, 0.75, 1.0, -0.75, 0.25, -0.75, 0.75, 0.75, -0.25, 0.25, 0.25, -0.25, -0.5, -0.5, 0.5, -1.0, 0.25, -1.0, 0.25, 0.0, 0.25, 0.75, -0.75, 1.0, 0.75, 0.25, -0.25, -1.0, 0.25, ]);
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module903,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module903,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query901.destroy()
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module901,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module901,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const array8 = new Float32Array([0.0, 0.75, -0.25, -1.0, -0.5, 1.0, -0.5, -0.75, -0.25, -1.0, -0.5, 0.0, 0.0, 0.5, -0.75, -1.0, -0.75, 0.0, -1.0, 0.0, 0.0, -0.5, -0.5, -1.0, -1.0, 1.0, -0.25, -0.75, 0.25, 0.25, -1.0, 0.25, 0.25, -0.25, -1.0, 0.25, 0.5, 0.0, 0.0, 0.75, -1.0, 0.5, 0.0, -0.75, 0.0, -0.25, -1.0, 0.75, 0.25, -0.25, -0.5, 0.0, 0.75, -0.5, 0.25, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, 0.25, 0.0, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, 0.5, 0.25, 0.25, -0.5, -0.75, -1.0, 0.5, 1.0, -0.75, 1.0, 0.75, 1.0, -0.75, -0.5, 0.5, -1.0, 0.25, -0.25, -1.0, -0.75, 0.25, 1.0, -0.5, -0.75, -0.25, -0.25, 0.5, -0.75, -0.75, -0.75, ]);
    
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout902,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array9 = new Float32Array([-1.0, -0.75, -0.5, -0.25, -1.0, 0.25, -0.75, -0.5, 0.5, 0.75, -0.75, 0.5, 0.5, 0.25, 0.25, -0.75, -0.5, -0.25, -0.75, -0.75, -0.5, -1.0, -1.0, 0.5, 0.75, 0.75, -0.5, -1.0, -0.5, 0.75, -0.25, 0.25, -0.5, 0.75, 0.75, 0.75, 0.75, -0.5, 0.5, -1.0, -1.0, 0.25, 0.5, 1.0, 1.0, 0.75, -0.5, -0.25, 0.25, -1.0, -1.0, 0.5, -0.75, 0.0, 0.0, 0.0, -0.75, -0.25, 0.0, -0.25, 0.25, -1.0, 0.75, 0.25, -1.0, -0.25, -0.25, 0.0, 0.0, -0.75, -1.0, 0.75, -0.5, -0.25, -0.75, -0.5, 1.0, 0.75, 0.0, 0.5, -1.0, -0.5, -0.5, -0.75, 0.0, 0.5, 0.25, 0.25, 0.25, 1.0, -0.5, -0.5, -0.5, 0.25, -0.25, -0.25, 0.5, 0.5, -0.25, 0.5, ]);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module901,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module901,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module903,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module903,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    
    texture902.destroy();
    texture1000.destroy();
    
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout903 = device90.createPipelineLayout({ 
        label: "pipeline_layout903",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout903,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const compute_pipeline902 = device90.createComputePipeline({
        label: "compute_pipeline902",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline903 = device90.createComputePipeline({
        label: "compute_pipeline903",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    texture901.destroy();
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module903,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module903,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout904 = device90.createPipelineLayout({ 
        label: "pipeline_layout904",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline904 = device90.createComputePipeline({
        label: "compute_pipeline904",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline905 = device90.createComputePipeline({
        label: "compute_pipeline905",
        layout: pipeline_layout902,
        compute: {
            module: shader_module904,
            entryPoint: "main"
        }
    });
    const compute_pipeline906 = device90.createComputePipeline({
        label: "compute_pipeline906",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    query901.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    
    device100.destroy();
    
    const compute_pipeline907 = device90.createComputePipeline({
        label: "compute_pipeline907",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline908 = device90.createComputePipeline({
        label: "compute_pipeline908",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
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
    
    
    query902.destroy()
    const compute_pipeline909 = device90.createComputePipeline({
        label: "compute_pipeline909",
        layout: pipeline_layout902,
        compute: {
            module: shader_module904,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline9010 = device90.createComputePipeline({
        label: "compute_pipeline9010",
        layout: pipeline_layout900,
        compute: {
            module: shader_module904,
            entryPoint: "main"
        }
    });
    
    device90.destroy();
    
    device120.destroy();
    
    const array10 = new Float32Array([1.0, -0.25, -0.75, -1.0, -0.75, -0.75, -0.5, 0.0, -0.75, -0.75, -0.75, 0.25, 0.75, 1.0, -1.0, 0.5, -0.25, 0.5, -0.75, -0.75, -0.5, -0.5, -0.25, -0.25, -0.5, 0.75, 1.0, 0.5, -0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 0.0, -0.5, -0.25, -0.75, -1.0, -0.25, 0.75, 0.0, 0.5, 0.0, -0.75, -0.5, -1.0, -0.5, 0.75, -0.75, 0.0, 0.5, -0.5, 0.5, 0.75, -0.25, 1.0, 0.75, -1.0, 0.0, 0.75, 1.0, 0.0, -1.0, 0.75, -0.5, 0.5, 1.0, 0.5, 1.0, -0.5, -1.0, 0.0, -1.0, 0.75, -0.5, -1.0, -0.5, -0.75, 0.75, -1.0, -0.75, -0.5, 1.0, 0.75, 1.0, 0.5, 1.0, 1.0, 1.0, -1.0, 0.5, -0.25, -0.5, 0.25, 0.75, 0.25, 0.0, -0.25, 0.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array11 = new Float32Array([1.0, 1.0, 0.25, -0.5, 1.0, 0.25, 0.75, -1.0, 0.0, 1.0, 1.0, -1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 0.75, 0.25, -0.25, 1.0, 0.5, -1.0, 0.75, 0.0, -0.25, -1.0, -1.0, -0.5, -0.75, 1.0, 0.75, 0.75, 1.0, 0.5, 0.25, 0.0, -0.75, 0.75, 0.25, -1.0, 1.0, -0.75, 0.25, -0.25, -0.5, -0.25, 0.5, 0.75, 0.75, 0.25, 1.0, -0.25, 0.0, -1.0, 0.5, -1.0, 0.0, 1.0, 0.0, 0.5, -0.75, 0.5, 0.0, 0.5, -0.75, 1.0, -0.75, 0.75, -0.25, 1.0, -1.0, 1.0, -0.5, 0.25, -0.5, 0.75, 0.75, -1.0, -0.75, 0.0, -0.75, -0.25, -0.25, -0.5, 1.0, 0.0, -0.25, 0.25, 0.5, 0.25, -0.75, 1.0, 1.0, 1.0, -0.25, -1.0, 0.0, -0.75, 0.75, ]);
    const array12 = new Float32Array([-0.5, 1.0, -0.75, -0.5, 1.0, -0.25, -0.25, -0.25, -0.25, -0.75, 0.0, 0.25, -0.5, 0.75, -0.75, -0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 0.75, -0.5, 1.0, 0.25, 0.5, -0.5, -0.5, -0.5, -1.0, -1.0, 0.0, -0.75, 0.5, 0.75, 0.5, 0.25, -0.25, -0.5, -1.0, -0.5, 0.0, 0.5, -1.0, -0.75, -0.5, -0.5, 1.0, -1.0, 0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -0.75, -0.25, -0.75, 0.0, 0.0, -1.0, -1.0, 0.75, -0.75, 0.0, -0.5, 1.0, -1.0, 1.0, 0.25, -0.25, -0.75, -1.0, 0.75, -1.0, -0.75, -0.25, -0.75, -1.0, -1.0, -0.75, -1.0, -1.0, -0.25, 1.0, -0.25, 0.75, -0.75, 1.0, -0.75, -0.75, 0.0, -0.75, 0.5, 0.0, -0.25, 0.5, -0.75, 0.0, 0.25, ]);
    
    
    const array13 = new Float32Array([0.25, 0.25, 0.75, -0.5, -0.75, 0.0, -0.75, 0.5, -0.75, 0.75, 0.25, -0.25, -1.0, -1.0, -1.0, -0.75, 0.75, -0.25, 0.75, 0.75, 0.75, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, 0.75, 0.75, 0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 0.0, 0.25, -0.75, -0.75, 1.0, 0.25, 0.5, -1.0, -0.5, -0.25, 0.0, -0.75, 0.5, -0.25, -0.25, 1.0, 0.75, -0.75, 0.25, -0.25, 0.5, -0.5, 0.75, -0.75, -0.75, -0.5, 1.0, 1.0, 0.25, -1.0, 1.0, -0.5, -0.75, 0.75, 0.25, -0.25, 1.0, -0.5, 0.0, 0.5, 0.0, -0.5, -0.25, -0.25, -0.75, 0.5, 1.0, -0.75, 0.5, -0.5, -0.75, -1.0, 1.0, 0.25, -1.0, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.0, 0.5, 1.0, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    texture1300.destroy();
    
    const array14 = new Float32Array([-0.25, 0.0, 0.5, 0.25, 0.75, 0.5, 1.0, -0.5, 0.5, 0.0, 0.0, 0.0, 0.0, 0.25, -0.75, 0.5, 0.75, -1.0, -0.75, -0.75, 1.0, 0.75, -0.75, 1.0, 1.0, 0.75, -0.25, 1.0, -0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 0.75, 1.0, 0.0, 0.5, -0.75, -0.75, 0.0, 0.75, 0.0, 0.0, -0.25, -0.75, -0.25, 0.75, -1.0, -0.25, 0.25, 0.5, -0.5, -0.25, 0.75, 0.75, 0.5, -0.25, -0.75, -0.75, 0.25, 0.25, 0.0, 0.5, 0.5, -0.25, 1.0, 1.0, -1.0, -0.75, 1.0, 1.0, 0.75, -0.25, 0.75, -0.5, 0.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.25, -0.5, -1.0, 0.5, -0.25, -1.0, 0.0, 0.5, -0.5, 0.0, 0.0, 0.75, 0.25, 0.75, 1.0, 0.5, 0.25, 0.75, ]);
    
    const render_bundle_encoder1302 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view13010 = texture1301.createView({ label: "texture_view13010" });
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1302.pushDebugGroup("group_marker");
    
    
    
    
    texture1301.destroy();
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    const query1303 = device130.createQuerySet({
        label: "query1303",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder1301.insertDebugMarker("marker");
    query1302.destroy()
    
    
    
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    
    const array15 = new Float32Array([0.0, 0.5, 0.75, -0.25, -0.5, -0.25, 0.5, -0.25, -0.5, 0.5, 0.25, -0.75, 0.25, 0.0, -0.5, 0.0, -0.25, -1.0, 0.75, 1.0, -0.75, 0.25, -0.5, -1.0, -1.0, -0.5, 0.0, 1.0, -1.0, 0.0, 0.5, 0.5, 0.25, -0.75, -0.75, 0.5, 0.25, -0.5, -0.5, -0.75, 1.0, 0.0, 0.25, 0.25, 0.25, 0.0, 1.0, 0.25, 0.25, 0.0, 0.0, -1.0, 1.0, 0.0, -0.5, 0.5, 0.25, -1.0, -1.0, 0.75, 0.75, -0.5, 0.0, 0.5, 1.0, 1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -1.0, -0.75, 0.25, -0.25, -0.75, 0.75, 0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 0.25, -1.0, 0.0, -0.25, -0.75, -0.5, 1.0, -0.5, -0.25, 0.0, -0.75, 0.0, -0.25, 0.5, -0.5, -0.5, -0.5, ]);
    render_bundle_encoder1301.popDebugGroup();
    
    const texture1302 = device130.createTexture({
        label: "texture1302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view13020 = texture1302.createView({ label: "texture_view13020" });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    render_bundle_encoder1301.insertDebugMarker("marker");
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    
    render_bundle_encoder1301.insertDebugMarker("marker");
    
    const query1304 = device130.createQuerySet({
        label: "query1304",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    
    
    
    texture1302.destroy();
    
    query1304.destroy()
    device130.destroy();
    
    
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    device140.destroy();
    
    
    
    
    
    const array16 = new Float32Array([-0.75, -0.5, -0.5, -0.75, -1.0, 0.75, -1.0, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -0.5, 1.0, 0.5, 0.75, -0.5, -0.75, 0.5, 0.5, 0.0, 0.75, 0.75, 0.75, -1.0, -1.0, -0.25, -0.75, -0.25, 0.5, 1.0, 1.0, 0.5, 0.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.5, 0.0, 0.5, 0.5, 0.5, 0.75, -1.0, -1.0, -0.25, -0.75, -0.75, 0.25, 0.25, 0.5, 0.5, -0.75, -0.75, 0.5, 1.0, -0.75, -0.25, -0.5, -0.5, 0.25, -1.0, -1.0, 0.25, -1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.25, 0.75, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -0.25, 0.25, -1.0, 0.5, 0.0, -0.5, 0.25, 0.25, -1.0, -0.5, -1.0, 0.0, 0.0, ]);
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array17 = new Float32Array([-0.25, -0.25, -0.5, 0.75, 0.5, 0.25, 0.25, -0.5, -0.75, 1.0, -0.25, 1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 1.0, 0.0, 1.0, -1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.0, -0.5, 0.5, -1.0, -0.25, -0.5, 0.5, -0.5, -0.75, 0.0, -1.0, -0.75, -1.0, -0.75, 1.0, -1.0, 0.5, 0.25, 0.75, 0.25, -0.25, -0.25, -0.75, -0.25, 0.0, 0.5, 0.5, -0.25, -0.5, 0.5, 0.75, 0.25, -0.25, 0.5, -1.0, -0.75, -0.25, -0.25, 1.0, 0.0, 1.0, -0.25, 0.0, -0.75, 0.0, -0.5, -0.25, -0.5, 1.0, -1.0, 0.25, 0.0, -1.0, -1.0, -0.25, -0.25, -0.5, 0.0, -0.75, 0.0, -1.0, -0.5, -0.25, 0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 0.0, -0.75, -0.75, -1.0, -1.0, ]);
    
    
}