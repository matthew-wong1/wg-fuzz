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
    
    const array0 = new Float32Array([-1.0, 0.25, -1.0, 0.75, 0.75, 1.0, 0.0, 0.0, 0.75, 0.25, 0.0, -0.75, -0.25, 0.25, 0.75, 0.25, -0.25, 0.25, -0.25, -0.75, 0.75, -0.5, 1.0, 1.0, -0.75, -0.25, -0.75, 0.0, 0.0, 0.75, -0.75, 1.0, 0.25, -0.5, 0.5, -0.5, 0.0, -0.5, 0.5, 0.0, -0.5, 0.25, -0.5, 1.0, 0.25, -0.5, -0.25, 0.75, -0.75, 1.0, 0.5, -0.75, -0.75, -0.5, -0.5, -0.75, 0.75, -0.25, -0.5, -1.0, -0.5, 0.25, -1.0, -0.75, -0.5, 0.75, 0.5, 0.25, -0.75, 0.25, -1.0, -0.5, -1.0, 0.0, -0.25, -0.5, -0.75, -0.75, 0.5, 1.0, -1.0, 0.0, 0.5, -1.0, -0.75, -0.75, 0.75, 0.25, 0.25, -0.25, -0.25, 0.75, -0.5, 0.5, -1.0, -0.25, 1.0, 0.25, -0.5, 1.0, ]);
    
    const array1 = new Float32Array([-0.75, 0.5, 0.5, -0.25, -0.75, -0.75, 0.0, 0.75, -0.75, -0.5, 0.25, 0.0, -0.75, -0.5, -0.5, -0.25, -1.0, 0.5, -0.75, -0.75, 1.0, 0.25, -0.25, 0.0, 0.25, -0.25, -0.25, -0.5, -0.25, 0.5, 0.75, 0.25, -0.25, 0.0, -0.75, 0.25, -1.0, 0.5, -0.5, 0.75, -0.75, 1.0, 0.5, 0.75, 0.75, -0.75, 0.0, 0.25, 0.5, 0.5, -0.5, -0.5, -0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 1.0, -0.5, -0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -1.0, -0.5, -0.75, 1.0, 0.25, -0.5, 0.0, 0.25, -0.75, 0.75, -0.75, 0.25, -0.75, 0.5, 0.75, 0.0, -1.0, 0.5, -0.25, -0.75, 0.0, -0.75, -0.75, -0.5, 0.75, -0.75, -0.5, -1.0, -0.75, 0.0, -0.25, 0.75, -0.75, 0.0, ]);
    const array2 = new Float32Array([0.75, -1.0, -0.25, 1.0, -1.0, -0.25, -0.5, 0.25, 0.75, 0.25, -0.5, -1.0, -0.25, 0.0, 0.0, 0.25, -0.5, -1.0, 0.25, -0.25, 0.0, -0.75, 0.5, 0.25, -0.75, -0.75, -0.75, 0.25, -1.0, 0.0, -0.5, 1.0, -0.75, 0.75, 0.0, 1.0, -0.5, -1.0, 0.5, 1.0, -0.75, 0.0, -0.25, -0.75, -0.75, 0.25, -0.75, -0.75, 1.0, -0.75, 0.0, -0.25, -0.25, -0.75, -1.0, -0.25, -0.5, 0.0, -0.75, 0.5, 0.0, -0.5, -0.25, -0.5, -0.5, 0.5, -1.0, -0.25, 0.75, -0.75, 0.75, -1.0, 0.0, -1.0, -0.75, 0.0, 1.0, 0.0, -1.0, 0.25, 1.0, -0.5, 1.0, 1.0, -0.75, -0.5, -0.5, -0.75, 0.5, 0.75, 1.0, -1.0, -0.75, 0.0, 0.75, 0.0, 0.0, -1.0, -0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.75, 0.75, -0.25, -0.75, 0.25, 1.0, 0.25, -0.25, 0.75, -0.5, -0.25, 0.75, -0.75, 0.0, -0.5, -0.75, 0.5, -1.0, 0.25, -0.75, -1.0, -0.25, -0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 0.75, -0.75, -0.25, -1.0, 0.75, -1.0, -0.5, 0.0, -1.0, 0.5, -0.25, -0.75, -0.75, -0.25, -0.25, -0.5, -1.0, -0.5, 1.0, 0.25, -0.5, -0.5, 0.5, -0.25, 0.0, 0.25, -0.25, -0.5, 0.25, -0.25, 0.5, 0.5, 1.0, -0.5, -0.5, -1.0, -0.25, -0.5, -0.5, 0.5, 0.25, -0.25, -0.75, 0.5, 1.0, 1.0, 0.75, -0.5, -0.5, 0.75, 0.0, -0.75, 0.5, 0.0, 0.75, 0.0, 0.0, 0.75, -0.75, -0.5, 0.5, -1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.5, 0.25, 0.5, -1.0, 0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    device20.pushErrorScope("out-of-memory");
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer200.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.popDebugGroup();
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device30.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const array4 = new Float32Array([-0.5, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, -0.5, 0.75, -0.5, 0.5, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, 0.0, 1.0, 0.25, -0.5, -0.75, -0.5, -1.0, -0.75, -0.5, 0.75, -1.0, 0.25, 0.0, 0.75, 0.0, -0.5, 1.0, 0.25, 0.75, -0.5, 0.5, 0.5, 1.0, 1.0, 0.0, 0.0, -0.5, -0.5, -0.75, -0.5, -0.25, -0.75, 0.5, -0.25, -0.5, -0.5, 0.75, 0.25, 0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -0.25, 1.0, -0.5, -1.0, 1.0, 0.75, 1.0, -0.75, 0.25, -0.25, 0.25, 0.75, 1.0, 0.75, -0.5, 0.0, -0.5, -0.5, -0.25, 1.0, 1.0, 0.0, -1.0, 0.0, 1.0, -0.75, -0.25, -1.0, -1.0, -0.75, -0.75, 0.75, -0.75, -0.75, 1.0, 0.75, -0.25, 0.25, 0.25, ]);
    render_bundle_encoder200.popDebugGroup();
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer201.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
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
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    texture200.destroy();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array5 = new Float32Array([-1.0, 1.0, -1.0, 1.0, 0.0, -0.75, -0.75, 0.25, 1.0, 0.75, -0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.25, 1.0, -0.5, 0.25, -1.0, 0.0, 0.5, 0.5, -0.5, -0.5, -0.5, 0.0, -0.25, -0.75, 0.0, -0.75, -0.75, 0.75, 0.0, 0.25, 0.5, 0.25, -1.0, -0.25, 1.0, 0.5, -0.5, -0.75, 0.75, 0.5, -0.5, 0.75, -0.75, 0.25, -0.75, 0.0, 1.0, -1.0, -0.5, -0.75, -0.75, 0.25, 0.75, 0.25, 0.0, 0.0, 0.75, -0.25, -1.0, -0.25, -0.5, 1.0, -0.75, 0.5, 0.0, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, -0.75, -0.25, 0.75, -0.25, 0.75, 0.75, -1.0, -0.5, -0.25, -0.5, -0.5, 1.0, -0.25, 0.25, -1.0, 1.0, -0.5, -0.5, 0.25, 0.25, 0.0, ]);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    
    buffer204.destroy()
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("internal");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.popDebugGroup();
    buffer205.destroy()
    buffer202.destroy()
    
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query201.destroy()
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query200.destroy()
    const array6 = new Float32Array([-1.0, 1.0, -0.25, 0.5, -0.25, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, -1.0, -0.5, 0.5, 0.0, -0.75, -0.25, 0.5, 0.5, 0.0, 0.0, 0.0, -1.0, -0.5, -0.25, 1.0, 0.25, 0.25, -0.5, -0.25, 0.0, 0.0, -0.5, -0.75, 0.25, -1.0, 0.25, -0.75, -0.5, 0.25, 1.0, -0.75, 0.0, -1.0, 1.0, -0.25, 0.0, 0.25, -0.25, 1.0, 0.25, -0.25, 0.0, 0.5, 0.0, 0.75, 1.0, -1.0, 0.75, -0.25, -0.25, -0.5, 0.25, 0.75, 0.0, 0.0, -0.25, 0.5, -0.75, -0.25, 0.75, -1.0, 0.0, 0.5, -0.5, -0.5, 0.0, -0.25, -0.5, -1.0, -0.5, 1.0, 1.0, 1.0, 0.25, 0.25, -1.0, 1.0, 0.5, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, -0.75, 0.25, 0.25, -0.75, -1.0, ]);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([-0.5, -0.25, -1.0, 0.75, 0.5, 0.75, 0.5, -0.25, 1.0, -0.5, 1.0, -0.5, 0.0, -1.0, 0.0, 0.25, 0.75, 1.0, 0.5, 1.0, -0.75, -0.25, 0.0, -0.25, 1.0, 0.75, -0.75, 0.0, -0.25, -0.25, -1.0, -0.5, -0.25, 0.0, 0.75, 0.5, 1.0, 0.5, 0.5, 0.25, 0.75, -0.75, -0.25, 1.0, -0.5, 0.0, 0.25, 0.25, -0.25, -0.25, 0.0, 0.5, 0.0, 0.0, -0.75, 1.0, -1.0, 0.75, -0.75, 0.75, 0.0, 0.5, 0.5, -1.0, -0.5, 0.25, -0.75, -0.5, 0.25, -0.5, 0.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.0, 0.5, 1.0, 1.0, -0.75, 0.75, -0.25, 0.5, 0.5, 0.75, -0.75, 0.75, -0.5, -0.25, 0.25, -1.0, 0.0, -1.0, 0.25, -0.25, -0.25, -0.25, -1.0, -0.5, ]);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    texture900.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
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
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device90.pushErrorScope("internal");
    render_bundle_encoder201.insertDebugMarker("marker");
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    query900.destroy()
    
    query200.destroy()
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    buffer203.destroy()
    
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    
    
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer206.destroy()
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    
    
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    command_encoder200.pushDebugGroup("mygroupmarker")
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
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
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder2000.setPipeline(compute_pipeline2042);
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
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
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    
    query903.destroy()
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query901.destroy()
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    
    
    const array8 = new Float32Array([-0.25, -0.25, 0.5, 0.5, 1.0, -0.75, 0.0, 1.0, 0.75, -0.75, 0.25, 0.5, 0.5, 0.75, -0.5, -0.5, -0.25, -0.5, 0.5, -1.0, 1.0, 0.5, -0.5, 1.0, -0.5, -1.0, 0.25, 0.75, -0.5, 0.5, 0.25, -0.25, 0.25, -1.0, 0.25, -0.5, -1.0, 0.75, -0.5, 0.0, -0.5, -0.75, -0.25, 0.0, -0.75, 0.25, -0.75, 0.0, 0.0, 0.75, 1.0, -1.0, 0.75, 0.0, -1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, 1.0, 0.25, -1.0, 0.0, -0.75, 0.0, -0.75, 0.0, 0.75, -1.0, 0.5, 0.75, 0.5, 0.75, -0.25, -0.5, 0.75, -0.5, -0.5, -0.5, -1.0, 0.75, -0.75, 0.25, -1.0, 0.0, 0.75, -1.0, -0.5, 0.5, 0.0, -0.5, 0.0, -1.0, -1.0, -0.25, -0.75, 0.25, 0.0, ]);
    render_bundle_encoder400.popDebugGroup();
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    
    buffer207.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query904.destroy()
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query202.destroy()
    buffer900.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query904.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
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
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline2042.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    
    
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.popDebugGroup();
    
    
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

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    query904.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder9000.popDebugGroup()
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    query201.destroy()
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout209,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    query903.destroy()
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    query400.destroy()
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    buffer400.destroy()
    
    query901.destroy()
    compute_pass_encoder9000.insertDebugMarker("marker")
    buffer401.destroy()
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    query400.destroy()
    query201.destroy()
    device40.pushErrorScope("validation");
    
    query901.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer208.destroy()
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    texture901.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout209,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    query900.destroy()
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder900.setPipeline(render_pipeline900);
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module902,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module902,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout208,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const command_buffer401 = command_encoder401.finish();
    
    
    buffer403.destroy()
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline2079 = device20.createComputePipeline({
        label: "compute_pipeline2079",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer405, 0, array2, 0, array2.length);
    const compute_pipeline2080 = device20.createComputePipeline({
        label: "compute_pipeline2080",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2081 = device20.createComputePipeline({
        label: "compute_pipeline2081",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture902 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture902 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2082 = device20.createComputePipeline({
        label: "compute_pipeline2082",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2083 = device20.createComputePipeline({
        label: "compute_pipeline2083",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2084 = device20.createComputePipeline({
        label: "compute_pipeline2084",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2085 = device20.createComputePipeline({
        label: "compute_pipeline2085",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2086 = device20.createComputePipeline({
        label: "compute_pipeline2086",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2087 = device20.createComputePipeline({
        label: "compute_pipeline2087",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture902 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2088 = device20.createComputePipeline({
        label: "compute_pipeline2088",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer405, 0, array2, 0, array2.length);
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2089 = device20.createComputePipeline({
        label: "compute_pipeline2089",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    render_bundle_encoder201.popDebugGroup();
    device50.pushErrorScope("internal");
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer902,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer903,
                },
            },
        ],
    });

    render_bundle_encoder900.setBindGroup(0, bind_group900);
    device90.queue.writeTexture({ texture: texture902 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query905.destroy()
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer408, 0);
    compute_pass_encoder2000.end();
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
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4000.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    const command_buffer200 = command_encoder200.finish();
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, ]);
}