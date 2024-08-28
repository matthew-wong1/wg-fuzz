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
    
    
    
    const array0 = new Float32Array([-0.25, 1.0, 0.25, 1.0, -1.0, -1.0, 0.75, -1.0, 0.0, 0.5, 0.25, 0.25, 0.0, -1.0, -1.0, -0.5, 0.75, 0.0, -1.0, 0.5, -1.0, 0.25, -0.5, 0.0, -1.0, 0.75, 0.75, 0.0, -0.25, 0.5, -0.5, 0.75, 0.75, 0.0, 0.75, 0.5, 1.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.75, 0.0, 0.5, -0.25, 0.5, -1.0, 0.5, 0.75, -0.75, 0.0, 0.5, 1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -1.0, 0.25, -0.25, -0.75, 0.5, -0.5, -0.75, -0.75, 0.75, 0.25, 0.0, -0.5, 0.25, 1.0, 0.5, 0.75, -0.75, -1.0, 1.0, -0.75, 1.0, 0.25, -0.5, -0.25, -1.0, 1.0, -1.0, 1.0, 1.0, -0.75, -1.0, 1.0, -1.0, 0.25, -1.0, 0.25, -1.0, -0.25, 1.0, 0.0, -1.0, ]);
    const array1 = new Float32Array([0.5, 1.0, 0.25, -0.75, 0.5, -0.25, 0.5, 1.0, 0.0, 0.75, -0.5, -0.25, -0.5, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.25, -1.0, -1.0, 1.0, -1.0, 0.25, 0.0, 1.0, 0.75, 1.0, -0.75, 0.25, 0.5, -0.25, 0.0, 0.75, -1.0, -0.75, -0.25, -0.5, 1.0, -0.75, 0.0, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.0, -0.25, 0.0, 0.5, -0.5, -1.0, 0.25, -0.5, 0.75, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, -0.75, -0.75, 0.25, -0.5, 0.0, 0.5, 0.0, -1.0, 0.25, 1.0, 1.0, 0.5, 0.25, 1.0, -0.75, 0.25, -0.25, -1.0, 0.5, -0.5, -0.75, 1.0, -0.75, -1.0, -0.25, -0.25, -0.5, 0.5, 0.25, 0.25, -0.5, -1.0, 0.75, -0.5, -0.25, 0.5, -0.5, ]);
    const array2 = new Float32Array([0.25, -1.0, 0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -0.5, 0.5, -0.5, 0.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.5, 0.0, 0.5, -0.75, 0.75, 0.25, -0.5, -1.0, -0.5, -0.5, 0.75, -0.75, -1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 0.0, 1.0, 0.75, 0.25, 0.25, 0.25, 0.75, 0.0, 0.75, 1.0, -0.5, 0.25, -0.75, 1.0, 0.25, -0.5, -1.0, 0.5, 0.5, 1.0, 1.0, 0.25, 0.0, -0.75, 0.25, -0.5, 0.25, -0.25, 0.5, -0.25, -0.25, 0.75, -0.5, -0.75, -0.5, -0.25, 0.5, 1.0, 0.0, -0.75, 0.75, 0.0, 0.75, 0.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.5, -1.0, 0.75, 0.5, -0.75, 0.75, 0.5, -0.75, 1.0, 0.25, -0.75, 0.0, 0.75, 1.0, 0.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([1.0, 0.5, -0.25, -1.0, 0.75, -0.5, -1.0, -0.25, -1.0, -0.5, -0.5, 0.25, 1.0, 0.0, 0.0, 0.0, -0.5, 0.25, -1.0, 1.0, 0.5, 0.75, 0.75, -0.25, -0.75, 0.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.0, -0.75, -0.5, -1.0, 1.0, 0.75, 1.0, 0.5, -1.0, -1.0, -1.0, 0.0, -1.0, 0.0, -1.0, 1.0, 0.25, -1.0, -1.0, -0.25, 0.0, -0.25, 0.0, 1.0, 0.75, 0.25, 0.75, 0.5, 0.0, -0.5, -1.0, -0.75, -1.0, 0.0, -1.0, 0.5, -0.5, -0.75, -0.5, -0.25, 0.25, 0.25, -1.0, 0.5, -0.75, 0.25, 0.75, -0.25, 1.0, 1.0, -1.0, 0.5, 0.0, -0.75, 1.0, 0.0, -0.75, -1.0, 0.75, 1.0, -0.5, -0.75, -0.5, 0.5, -1.0, -1.0, -0.25, 0.0, -0.5, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const array4 = new Float32Array([-1.0, -0.5, -0.75, 0.75, -0.25, 0.5, 0.75, -0.5, -0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 1.0, -0.5, 0.5, -1.0, 0.0, 0.0, 0.5, 0.0, -1.0, 0.0, 0.0, -0.25, 0.25, -0.5, 1.0, 0.25, 0.25, -0.5, 0.25, -1.0, 0.5, 0.0, -0.75, 0.5, 1.0, -1.0, 0.25, 0.25, 0.0, 0.75, 0.75, -0.25, -1.0, -1.0, 0.75, 0.5, 1.0, -0.5, 0.25, 1.0, -0.5, -0.25, 0.25, 0.0, -0.25, -0.75, 0.0, -1.0, 1.0, -0.25, -1.0, -1.0, -0.75, -0.5, -0.75, 1.0, -0.5, 1.0, 0.0, 1.0, 0.75, -0.5, 0.75, 0.0, -0.75, -1.0, 1.0, -0.75, -0.25, -0.5, -0.75, 1.0, -1.0, 1.0, 0.5, -1.0, -1.0, 1.0, -0.25, -0.5, 0.0, 0.75, -0.5, -0.75, 0.75, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    device30.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array5 = new Float32Array([0.25, -0.25, 0.0, -0.75, -1.0, -0.25, 0.5, 1.0, 1.0, 0.0, 0.75, -0.5, 0.75, 0.25, 0.25, -1.0, -1.0, 0.0, 0.25, -1.0, 0.0, 0.0, 0.0, -0.75, 1.0, 0.0, -0.75, -0.25, -0.25, -0.75, -1.0, 0.0, -0.5, -0.5, 0.5, 0.0, 0.75, 0.5, 1.0, -0.25, -1.0, -0.5, 0.0, 0.75, 0.5, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, 1.0, -0.75, 1.0, 0.75, -0.5, -0.5, -0.5, -0.5, 0.0, 0.25, 0.5, -1.0, -0.25, 0.25, 1.0, -1.0, -0.25, 1.0, -1.0, 0.5, 0.0, 1.0, 0.0, 1.0, -0.75, -0.5, 0.25, 0.75, 0.25, -1.0, 0.5, 0.5, -0.25, -0.75, -0.25, -0.75, 0.75, 0.75, 1.0, 0.0, 0.0, 1.0, -0.5, 0.25, 0.25, 0.5, -0.25, 0.0, -0.5, ]);
    device50.pushErrorScope("validation");
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer500.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
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
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const array6 = new Float32Array([0.5, -0.5, 1.0, 1.0, 1.0, 0.5, 0.25, -0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 0.75, 0.75, -0.25, 1.0, 0.5, -0.75, -1.0, -0.5, 0.75, -0.25, 0.0, 0.0, -1.0, 0.25, -0.5, 0.5, -0.5, -0.25, -0.25, 0.75, 0.0, 0.25, -1.0, -0.75, 0.5, -0.75, -0.75, -0.75, 0.0, 0.75, 0.25, -1.0, -1.0, 0.75, 0.75, 0.75, 0.0, 0.25, 0.25, 0.75, 1.0, 0.25, -0.5, -0.75, -1.0, 0.5, -0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 0.5, 0.5, -0.5, -0.75, -1.0, -0.5, -0.25, -0.5, -0.75, -0.5, 0.0, -1.0, 1.0, 1.0, -0.75, 0.5, 0.75, -0.5, 0.25, -0.5, 0.0, -0.75, -1.0, 0.75, 0.75, 1.0, 0.25, 0.5, -0.25, 0.0, -0.75, 0.0, 0.25, -0.25, 0.5, ]);
    
    
    buffer501.destroy()
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
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module502,
            entryPoint: "fragment_main",
            targets: [
                {
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
        powerPreference: undefined
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    render_bundle_encoder500.setPipeline(render_pipeline503);
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
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
    
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
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
    texture500.destroy();
    query501.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
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
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    buffer505.destroy()
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
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
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
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
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder502.setPipeline(render_pipeline501);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder502.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query500.destroy()
    
    
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    query501.destroy()
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    const array7 = new Float32Array([-0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 1.0, 0.0, -0.75, -0.25, -0.5, 0.5, -0.25, -0.25, 0.0, 0.5, 0.5, 0.25, -0.75, -1.0, 0.25, -0.25, -0.25, 0.25, 0.75, 0.0, 1.0, -0.75, 1.0, -0.25, -0.25, -0.5, 0.75, -0.75, 0.75, 0.0, -0.25, -0.75, 0.25, 0.0, 0.0, 1.0, -0.5, 1.0, 0.5, -1.0, 0.75, 0.0, -0.5, 0.25, 0.75, -1.0, 0.25, -0.75, 0.75, 0.5, 0.0, -0.5, -0.75, -1.0, 0.75, -0.25, -0.25, 0.0, -0.5, -0.75, -0.75, 1.0, 0.25, 0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -0.25, -0.25, -0.75, -0.25, 0.5, 0.0, 1.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.25, 0.25, 0.0, -1.0, 0.25, -0.5, 0.5, -0.75, 0.0, 0.5, 0.25, -0.5, 0.0, ]);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    
    const command_buffer700 = command_encoder700.finish();
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module502,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module502,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    buffer200.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer503.destroy()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    query501.destroy()
    buffer504.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query504.destroy()
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
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    device50.pushErrorScope("validation");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer506.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder5000.popDebugGroup()
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_bundle_encoder501.setVertexBuffer(0, buffer502);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder500.setVertexBuffer(0, buffer502);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    render_bundle_encoder501.draw(3);
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer200 = command_encoder200.finish();
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
        vertex: {
            module: shader_module502,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module502,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer507.destroy()
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    buffer509.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder502.popDebugGroup();
    compute_pass_encoder7010.insertDebugMarker("marker")
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
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
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    buffer201.destroy()
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    query200.destroy()
    buffer401.destroy()
    query503.destroy()
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
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
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
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
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
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query502.destroy()
    
    compute_pass_encoder5000.popDebugGroup()
    
    
    query501.destroy()
    
    device80.destroy();
    query500.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    render_bundle_encoder500.popDebugGroup();
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    query500.destroy()
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout505,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout503]
    });
    query200.destroy()
    buffer203.destroy()
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query504.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    buffer701.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout504]
    });
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer508.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    texture200.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.finish();
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    query700.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    
    render_bundle_encoder502.insertDebugMarker("marker");
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
    
    
    
    
    const render_pipeline5015 = device50.createRenderPipeline({
        label: "render_pipeline5015",
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
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const array8 = new Float32Array([0.75, -0.25, -0.75, 0.0, -0.25, 0.75, 1.0, 0.5, -1.0, -0.25, 0.75, 0.5, -1.0, 0.5, 0.75, 1.0, 0.25, 0.5, 0.5, 0.75, 0.5, 0.5, 0.75, -0.5, -0.75, -0.75, 0.0, 0.75, 0.25, -0.5, -1.0, -0.75, 0.75, 1.0, 0.0, 1.0, 0.25, 1.0, 0.0, 0.5, 0.75, -1.0, -0.5, 1.0, 0.25, 0.75, 0.5, -0.25, -1.0, -0.75, 0.5, 0.0, 1.0, 0.75, 0.5, 0.0, 0.75, 0.5, 0.0, -0.25, 0.0, -1.0, -0.75, -0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.0, 0.0, -1.0, 1.0, -0.75, 0.0, -1.0, -0.25, -0.75, 0.0, -1.0, -0.75, -0.75, -1.0, 1.0, 0.75, -0.25, -0.25, 0.5, -1.0, -1.0, -0.25, 0.5, 0.25, -0.25, 0.25, 0.5, 0.25, 0.25, -0.75, 0.25, ]);
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const render_pipeline5016 = device50.createRenderPipeline({
        label: "render_pipeline5016",
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout505]
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    buffer700.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout507,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const render_pipeline5017 = device50.createRenderPipeline({
        label: "render_pipeline5017",
        vertex: {
            module: shader_module506,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module506,
            entryPoint: "fragment_main",
            targets: [
                {
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
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query501.destroy()
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    render_bundle_encoder202.setPipeline(render_pipeline200);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query504
    });
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
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout506]
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device40.pushErrorScope("internal");
    render_pass_encoder5010.setPipeline(render_pipeline5012);
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder5010.setStencilReference(1);
    
    
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    render_pass_encoder5010.insertDebugMarker("marker");
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout502]
    });
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    command_encoder201.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline700.getBindGroupLayout(0),
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

    compute_pass_encoder7010.setBindGroup(0, bind_group700);
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline5012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group503);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder7010.dispatchWorkgroups(100);
    compute_pass_encoder5000.end();
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7010.end();
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5010.setVertexBuffer(0, buffer502);
    render_pass_encoder5010.draw(3);
    render_pass_encoder5010.end();
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
}