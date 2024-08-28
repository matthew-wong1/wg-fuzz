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
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    const array0 = new Float32Array([0.75, 0.25, -0.75, 0.5, 0.5, 0.75, 0.5, -0.5, 0.0, 1.0, 0.75, 0.25, 0.75, -0.25, -0.25, 1.0, 0.0, 0.0, -1.0, 0.0, -0.25, -1.0, 0.0, 0.0, 0.5, 0.25, -0.75, 0.75, -0.5, 0.0, -0.25, -1.0, -0.75, 1.0, 0.0, -1.0, 1.0, -0.5, 0.5, 0.75, -0.25, -0.5, -1.0, 0.75, -0.25, 0.75, 0.75, 0.75, 0.75, 0.0, 0.0, -0.5, -1.0, 0.5, -1.0, 0.0, 0.0, 0.5, -0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 0.25, -0.5, 0.0, -0.75, 0.5, -0.25, -0.25, 1.0, 0.75, 0.25, 0.0, 0.5, -0.75, 0.75, 0.5, 0.0, -1.0, -0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.5, -0.75, -0.25, 0.5, -0.5, 1.0, -0.75, 0.25, -0.5, 1.0, 0.0, -0.25, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    const array1 = new Float32Array([-1.0, 0.0, -1.0, 0.25, 1.0, -0.75, -0.75, 0.5, 0.0, -0.25, -0.5, -1.0, 1.0, 0.75, 1.0, 0.0, -0.75, -0.5, -1.0, 0.25, 0.5, 0.5, 0.25, -0.5, -0.75, 1.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.25, -0.5, -1.0, -0.75, -0.25, 1.0, -0.25, -0.5, 0.5, -0.75, 0.5, -0.5, 0.25, -1.0, 0.25, 0.25, -0.25, -1.0, 0.25, -0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 1.0, 0.5, 0.25, -0.25, -1.0, 0.5, -0.5, 1.0, -0.25, 0.5, -0.75, 0.75, 0.75, 0.0, -0.25, 0.5, 0.75, 1.0, -0.5, 0.0, 0.25, 0.75, -0.25, -1.0, 0.0, -0.5, -0.5, 0.0, 1.0, 0.5, -1.0, -0.75, -0.25, 0.75, -0.75, -0.5, -0.5, -0.5, -0.25, 0.0, 0.75, -1.0, -0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array2 = new Float32Array([0.75, -0.5, 0.0, -0.5, -0.25, 1.0, -0.5, 1.0, -0.5, 0.0, -0.25, -0.25, 0.0, 0.75, -1.0, -0.5, -0.25, 1.0, -0.5, -0.75, -0.5, -0.25, -0.5, -0.25, -1.0, 0.5, 0.25, 0.0, -0.75, -0.25, -0.25, -1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.25, -0.5, -1.0, 0.75, 0.0, 0.75, -0.75, -0.25, 0.0, 0.5, 1.0, 0.75, 0.0, -0.5, 0.5, 0.5, -0.75, 0.75, -0.25, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.75, 0.75, 0.75, -0.75, -0.5, -0.25, 0.25, -1.0, 0.0, 0.0, 1.0, -0.5, 0.0, -0.5, 0.0, 0.5, 0.25, -1.0, 0.5, -0.75, -0.5, 0.75, 1.0, 0.0, -0.5, -1.0, 0.5, -0.25, 0.25, 1.0, 1.0, 0.25, -1.0, 1.0, 0.0, 1.0, 0.75, 1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    texture200.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array3 = new Float32Array([-0.25, -0.75, 0.5, 0.75, -1.0, 1.0, 1.0, -0.75, -0.25, -1.0, 0.25, -0.5, -0.75, -0.5, 1.0, -0.25, 0.0, -0.75, 0.5, 1.0, -1.0, -1.0, 0.0, 0.5, 0.75, 1.0, -1.0, -0.25, 1.0, -1.0, 1.0, 0.0, 1.0, -0.5, -0.25, 1.0, -1.0, 0.75, 1.0, -0.75, 1.0, 0.25, 0.0, 0.75, -0.25, -0.5, 0.75, 0.75, 0.0, 0.25, 0.75, 0.5, 0.0, 0.25, 0.75, -0.5, 0.75, -0.75, -0.5, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, -0.5, 0.75, 0.75, 0.0, 0.75, -0.25, -1.0, 0.0, -1.0, 1.0, -0.25, -0.75, -0.5, 1.0, -0.75, 0.0, -0.75, 0.25, 0.75, -0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -1.0, -0.5, -0.75, 0.0, 1.0, -0.25, -0.75, -0.25, 0.0, -1.0, ]);
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer200.destroy()
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.25, -0.5, 0.75, 0.5, -0.25, 0.0, -1.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.0, -1.0, -0.25, 1.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.0, 0.5, 0.25, 0.5, -0.25, -1.0, 0.0, -0.5, 0.5, -0.5, 0.5, 0.0, 0.0, -0.75, -0.5, 0.75, 0.25, 0.25, 1.0, -0.25, 0.0, 0.0, 0.0, 0.75, -1.0, 0.5, -0.25, 0.75, 0.0, -0.25, -1.0, -0.25, -0.25, -0.5, 0.25, 0.25, -1.0, -0.25, -0.75, -1.0, -1.0, 1.0, -1.0, 0.75, 0.0, -0.75, 1.0, -0.5, 0.5, -1.0, -0.75, 0.25, -0.75, -0.5, -1.0, 1.0, -0.25, -1.0, 0.0, 0.0, 0.25, -0.75, 0.25, -1.0, -0.25, 0.75, -0.75, 1.0, 0.0, 1.0, 0.5, -0.5, 1.0, -0.25, 0.75, 0.0, 0.25, 0.0, 1.0, ]);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    query200.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.pushErrorScope("out-of-memory");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture204.destroy();
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    texture202.destroy();
    
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    query200.destroy()
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.75, -0.25, 1.0, -0.25, -1.0, 0.5, -1.0, -1.0, 0.5, 0.0, 0.0, 0.75, 1.0, -0.25, -1.0, -0.5, -0.75, 0.75, 1.0, -0.75, 0.75, -0.25, -0.25, -0.25, 1.0, -0.75, 1.0, -0.5, 0.0, 0.5, -0.75, -0.25, -0.75, -0.75, -0.5, -1.0, -0.5, 0.75, 1.0, 1.0, 0.5, 0.75, -0.75, 0.5, -0.75, 0.75, 0.0, 0.5, -0.5, 0.25, 0.75, 0.0, -1.0, -0.5, -0.75, -0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 0.25, -1.0, -0.25, 1.0, -0.25, -0.5, 1.0, -0.5, -0.75, 0.0, -0.5, -1.0, 1.0, 0.0, -1.0, 1.0, 0.75, 1.0, 0.25, -1.0, 0.0, -0.5, 0.5, -0.75, 0.75, -0.75, 0.25, 0.5, 0.25, -1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.0, 0.0, 0.75, -1.0, ]);
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.executeBundles([])
    buffer204.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout208,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query202.destroy()
    
    buffer206.destroy()
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout208,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    query201.destroy()
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query201.destroy()
    
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    compute_pass_encoder2020.setPipeline(compute_pipeline2023);
    
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
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
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query205.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2079 = device20.createComputePipeline({
        label: "compute_pipeline2079",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2080 = device20.createComputePipeline({
        label: "compute_pipeline2080",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline2081 = device20.createComputePipeline({
        label: "compute_pipeline2081",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2082 = device20.createComputePipeline({
        label: "compute_pipeline2082",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2083 = device20.createComputePipeline({
        label: "compute_pipeline2083",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2084 = device20.createComputePipeline({
        label: "compute_pipeline2084",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2085 = device20.createComputePipeline({
        label: "compute_pipeline2085",
        layout: pipeline_layout202,
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
    const compute_pipeline2086 = device20.createComputePipeline({
        label: "compute_pipeline2086",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.25, 0.75, 0.75, 0.0, -0.25, 0.75, -0.75, 0.25, 0.0, -1.0, -1.0, 0.25, 1.0, 0.0, 0.0, -0.25, 0.5, 0.75, 0.0, -0.75, 0.75, 1.0, 0.25, 0.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.25, -0.5, 0.75, 0.25, -0.75, 0.25, 0.75, -0.25, -0.75, -0.25, -0.75, 0.5, 0.75, -0.5, -0.25, -0.25, 0.5, 1.0, -0.5, -0.5, -1.0, 0.25, -0.75, -0.75, -0.75, 0.25, 0.0, 0.75, -0.75, 1.0, 0.75, -0.5, -0.5, -0.75, 0.75, 0.5, -1.0, 0.0, 0.0, 0.0, 0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 0.0, 0.5, -0.75, 0.5, 0.75, 1.0, 0.5, 1.0, 0.75, 0.5, -0.25, 0.5, -0.25, -0.5, -0.75, -1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 0.25, ]);
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const compute_pipeline2087 = device20.createComputePipeline({
        label: "compute_pipeline2087",
        layout: pipeline_layout208,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2088 = device20.createComputePipeline({
        label: "compute_pipeline2088",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pipeline2089 = device20.createComputePipeline({
        label: "compute_pipeline2089",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2090 = device20.createComputePipeline({
        label: "compute_pipeline2090",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2091 = device20.createComputePipeline({
        label: "compute_pipeline2091",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2092 = device20.createComputePipeline({
        label: "compute_pipeline2092",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2093 = device20.createComputePipeline({
        label: "compute_pipeline2093",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2094 = device20.createComputePipeline({
        label: "compute_pipeline2094",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2095 = device20.createComputePipeline({
        label: "compute_pipeline2095",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const compute_pipeline2096 = device20.createComputePipeline({
        label: "compute_pipeline2096",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline2097 = device20.createComputePipeline({
        label: "compute_pipeline2097",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer208, 0, array3, 0, array3.length);
    const compute_pipeline2098 = device20.createComputePipeline({
        label: "compute_pipeline2098",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2099 = device20.createComputePipeline({
        label: "compute_pipeline2099",
        layout: pipeline_layout207,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20100 = device20.createComputePipeline({
        label: "compute_pipeline20100",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline20101 = device20.createComputePipeline({
        label: "compute_pipeline20101",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline203);
    
    const compute_pipeline20102 = device20.createComputePipeline({
        label: "compute_pipeline20102",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    const compute_pipeline20103 = device20.createComputePipeline({
        label: "compute_pipeline20103",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    const compute_pipeline20104 = device20.createComputePipeline({
        label: "compute_pipeline20104",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    const compute_pipeline20105 = device20.createComputePipeline({
        label: "compute_pipeline20105",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline20106 = device20.createComputePipeline({
        label: "compute_pipeline20106",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline20107 = device20.createComputePipeline({
        label: "compute_pipeline20107",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    const compute_pipeline20108 = device20.createComputePipeline({
        label: "compute_pipeline20108",
        layout: pipeline_layout209,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20109 = device20.createComputePipeline({
        label: "compute_pipeline20109",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20110 = device20.createComputePipeline({
        label: "compute_pipeline20110",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20111 = device20.createComputePipeline({
        label: "compute_pipeline20111",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    query205.destroy()
    const compute_pipeline20112 = device20.createComputePipeline({
        label: "compute_pipeline20112",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20113 = device20.createComputePipeline({
        label: "compute_pipeline20113",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    
    render_pass_encoder2010.setStencilReference(1);
    const compute_pipeline20114 = device20.createComputePipeline({
        label: "compute_pipeline20114",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20115 = device20.createComputePipeline({
        label: "compute_pipeline20115",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query200.destroy()
    device20.queue.writeBuffer(buffer208, 0, array6, 0, array6.length);
    
    const compute_pipeline20116 = device20.createComputePipeline({
        label: "compute_pipeline20116",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20117 = device20.createComputePipeline({
        label: "compute_pipeline20117",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20118 = device20.createComputePipeline({
        label: "compute_pipeline20118",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20119 = device20.createComputePipeline({
        label: "compute_pipeline20119",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    const compute_pipeline20120 = device20.createComputePipeline({
        label: "compute_pipeline20120",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20121 = device20.createComputePipeline({
        label: "compute_pipeline20121",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline20122 = device20.createComputePipeline({
        label: "compute_pipeline20122",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    const compute_pipeline20123 = device20.createComputePipeline({
        label: "compute_pipeline20123",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20124 = device20.createComputePipeline({
        label: "compute_pipeline20124",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20125 = device20.createComputePipeline({
        label: "compute_pipeline20125",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device20.queue.writeBuffer(buffer208, 0, array2, 0, array2.length);
    
    const compute_pipeline20126 = device20.createComputePipeline({
        label: "compute_pipeline20126",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.75, 1.0, 0.75, 1.0, 0.25, 0.75, -0.5, 0.0, -0.25, 0.25, 0.5, -0.75, 1.0, -0.25, 1.0, 0.75, 0.0, 0.5, -0.5, -0.5, 0.5, -0.5, 0.25, -0.5, 0.0, -0.75, -0.25, -0.5, 1.0, -0.5, -1.0, -0.5, -0.25, 1.0, 0.75, 0.0, 1.0, 0.25, -0.5, -1.0, 0.0, -0.25, 1.0, -0.25, 1.0, 0.25, -1.0, -0.75, -0.5, 0.25, 0.25, -0.5, -0.5, -0.25, -0.5, 1.0, 0.75, -0.25, 0.75, 0.5, -0.75, 0.0, 0.5, 1.0, 1.0, 0.5, 0.25, 0.0, -0.25, 0.25, 0.75, 0.5, 0.5, 0.5, 0.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.25, -1.0, 0.25, 0.75, 0.5, -0.5, 0.25, 1.0, 0.75, 0.0, -1.0, 1.0, 0.75, 0.75, -1.0, -0.5, 0.75, -1.0, 0.0, 0.0, ]);
    const compute_pipeline20127 = device20.createComputePipeline({
        label: "compute_pipeline20127",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline20128 = device20.createComputePipeline({
        label: "compute_pipeline20128",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20129 = device20.createComputePipeline({
        label: "compute_pipeline20129",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20130 = device20.createComputePipeline({
        label: "compute_pipeline20130",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline20131 = device20.createComputePipeline({
        label: "compute_pipeline20131",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
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
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    const compute_pipeline20132 = device20.createComputePipeline({
        label: "compute_pipeline20132",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20133 = device20.createComputePipeline({
        label: "compute_pipeline20133",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20134 = device20.createComputePipeline({
        label: "compute_pipeline20134",
        layout: pipeline_layout205,
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
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline20135 = device20.createComputePipeline({
        label: "compute_pipeline20135",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    const compute_pipeline20136 = device20.createComputePipeline({
        label: "compute_pipeline20136",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20137 = device20.createComputePipeline({
        label: "compute_pipeline20137",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20138 = device20.createComputePipeline({
        label: "compute_pipeline20138",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const compute_pipeline20139 = device20.createComputePipeline({
        label: "compute_pipeline20139",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture_view2061 = texture206.createView({ label: "texture_view2061" });
    const compute_pipeline20140 = device20.createComputePipeline({
        label: "compute_pipeline20140",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    const compute_pipeline20141 = device20.createComputePipeline({
        label: "compute_pipeline20141",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20142 = device20.createComputePipeline({
        label: "compute_pipeline20142",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array5, 0, array5.length);
    
    
    query201.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline20143 = device20.createComputePipeline({
        label: "compute_pipeline20143",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20144 = device20.createComputePipeline({
        label: "compute_pipeline20144",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.end();
    const compute_pipeline20145 = device20.createComputePipeline({
        label: "compute_pipeline20145",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20146 = device20.createComputePipeline({
        label: "compute_pipeline20146",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20147 = device20.createComputePipeline({
        label: "compute_pipeline20147",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2060,
            },
        ],
        occlusionQuerySet: query203
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline20148 = device20.createComputePipeline({
        label: "compute_pipeline20148",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline20149 = device20.createComputePipeline({
        label: "compute_pipeline20149",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20150 = device20.createComputePipeline({
        label: "compute_pipeline20150",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20151 = device20.createComputePipeline({
        label: "compute_pipeline20151",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20152 = device20.createComputePipeline({
        label: "compute_pipeline20152",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    const compute_pipeline20153 = device20.createComputePipeline({
        label: "compute_pipeline20153",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const compute_pipeline20154 = device20.createComputePipeline({
        label: "compute_pipeline20154",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    buffer2011.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const compute_pipeline20155 = device20.createComputePipeline({
        label: "compute_pipeline20155",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20156 = device20.createComputePipeline({
        label: "compute_pipeline20156",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20157 = device20.createComputePipeline({
        label: "compute_pipeline20157",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline205);
    const compute_pipeline20158 = device20.createComputePipeline({
        label: "compute_pipeline20158",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline20159 = device20.createComputePipeline({
        label: "compute_pipeline20159",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const compute_pipeline20160 = device20.createComputePipeline({
        label: "compute_pipeline20160",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view2052 = texture205.createView({ label: "texture_view2052" });
    
    const compute_pipeline20161 = device20.createComputePipeline({
        label: "compute_pipeline20161",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20162 = device20.createComputePipeline({
        label: "compute_pipeline20162",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: query202
    });
    const compute_pipeline20163 = device20.createComputePipeline({
        label: "compute_pipeline20163",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20164 = device20.createComputePipeline({
        label: "compute_pipeline20164",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query202
    });
    const compute_pipeline20165 = device20.createComputePipeline({
        label: "compute_pipeline20165",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20166 = device20.createComputePipeline({
        label: "compute_pipeline20166",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20167 = device20.createComputePipeline({
        label: "compute_pipeline20167",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline20168 = device20.createComputePipeline({
        label: "compute_pipeline20168",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline20169 = device20.createComputePipeline({
        label: "compute_pipeline20169",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20170 = device20.createComputePipeline({
        label: "compute_pipeline20170",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20171 = device20.createComputePipeline({
        label: "compute_pipeline20171",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer208, 0, array0, 0, array0.length);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2050.setPipeline(render_pipeline203);
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline20172 = device20.createComputePipeline({
        label: "compute_pipeline20172",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module209,
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
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline20173 = device20.createComputePipeline({
        label: "compute_pipeline20173",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20174 = device20.createComputePipeline({
        label: "compute_pipeline20174",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20175 = device20.createComputePipeline({
        label: "compute_pipeline20175",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline20176 = device20.createComputePipeline({
        label: "compute_pipeline20176",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline20177 = device20.createComputePipeline({
        label: "compute_pipeline20177",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setPipeline(render_pipeline205);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query202.destroy()
    const compute_pipeline20178 = device20.createComputePipeline({
        label: "compute_pipeline20178",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20179 = device20.createComputePipeline({
        label: "compute_pipeline20179",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([-0.5, -0.5, 0.25, 0.75, 0.0, 1.0, 0.75, -0.25, 1.0, 0.25, -0.25, 0.0, 1.0, 0.25, -0.25, 0.25, 1.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.5, 1.0, -0.5, 0.5, -0.25, 1.0, 0.0, -0.25, 0.75, -0.25, 0.0, 0.75, -1.0, 0.0, -0.25, -0.25, -0.25, -0.5, 0.75, 1.0, -0.5, 0.75, 0.25, -0.25, 0.75, -1.0, 0.5, 0.75, 0.0, -0.75, -1.0, 1.0, 0.5, 0.0, 0.5, 1.0, -0.75, -1.0, -1.0, 0.5, 0.5, 0.25, -0.25, 0.5, -0.5, -1.0, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 0.25, -0.25, 0.0, 0.25, 0.0, 0.5, 0.5, 0.75, -0.25, 0.25, -0.5, -0.5, -1.0, -0.25, 1.0, -0.25, 0.5, -0.5, 0.0, -1.0, 1.0, -0.75, ]);
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const compute_pipeline20180 = device20.createComputePipeline({
        label: "compute_pipeline20180",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20181 = device20.createComputePipeline({
        label: "compute_pipeline20181",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20182 = device20.createComputePipeline({
        label: "compute_pipeline20182",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20183 = device20.createComputePipeline({
        label: "compute_pipeline20183",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline20184 = device20.createComputePipeline({
        label: "compute_pipeline20184",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    render_pass_encoder2010.setStencilReference(1);
    const compute_pipeline20185 = device20.createComputePipeline({
        label: "compute_pipeline20185",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([-0.5, 0.0, -0.25, 0.5, -0.25, -1.0, 0.5, -0.25, -0.75, 0.25, 0.0, 0.5, -0.25, -0.75, -0.75, -1.0, -1.0, 0.25, 0.5, -0.5, -0.5, 0.25, 0.75, -0.75, -0.75, 0.25, -0.5, 1.0, -0.5, -0.75, -1.0, 0.5, 0.75, -0.5, 0.75, -1.0, 0.5, 0.0, -0.5, -0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 0.0, 1.0, -1.0, -0.25, -1.0, 0.5, -1.0, -0.25, -0.25, 0.25, 1.0, -0.5, 0.5, -0.5, 0.25, -0.5, -0.5, 0.5, -0.75, -0.75, 0.25, -0.5, -0.5, 0.25, -1.0, 1.0, -0.25, 0.75, 0.75, -1.0, -1.0, 0.25, 0.5, 0.5, -0.75, 0.25, 0.5, -0.25, -0.25, -1.0, 0.75, -1.0, -0.75, -0.75, 0.25, 0.5, 0.75, 0.5, 0.0, 0.25, -0.25, 0.25, 0.5, -0.25, -0.25, ]);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline20186 = device20.createComputePipeline({
        label: "compute_pipeline20186",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const compute_pipeline20187 = device20.createComputePipeline({
        label: "compute_pipeline20187",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array10 = new Float32Array([0.5, -0.25, 0.25, 0.5, 1.0, 0.75, 0.25, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, 0.75, -0.5, 0.25, 1.0, -0.5, -0.25, 1.0, -0.25, -0.5, 0.25, 0.5, 0.0, 0.25, 1.0, 0.25, 0.5, 0.75, -0.5, -1.0, 0.5, -0.25, -1.0, 1.0, -0.25, -1.0, 0.0, -1.0, 1.0, -0.25, 0.75, 0.75, 0.25, -1.0, 0.75, 0.5, -1.0, -0.75, 0.0, 0.75, -0.5, -0.75, 0.75, -0.75, -1.0, 0.0, -1.0, -0.75, -0.25, -1.0, 0.75, -1.0, 1.0, -1.0, 0.0, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, -0.75, 0.25, -0.75, -0.5, -1.0, 1.0, 0.75, 0.5, -0.5, 1.0, 0.5, 0.75, 0.5, -1.0, -0.5, -1.0, -0.5, -1.0, 1.0, 0.25, -0.25, -0.75, 0.0, 0.75, 0.0, -0.75, 0.0, ]);
    
    query200.destroy()
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline20188 = device20.createComputePipeline({
        label: "compute_pipeline20188",
        layout: pipeline_layout209,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline203);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group202);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2050.setVertexBuffer(0, buffer202);
    render_pass_encoder2030.popDebugGroup();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group203);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline2023.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group204);
    render_pass_encoder2050.drawIndirect(buffer201, 0);
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group205);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer303, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer303, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    render_pass_encoder2050.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.setVertexBuffer(0, buffer202);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2010.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2020, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2040.end();
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2000.end();
    compute_pass_encoder3000.end();
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group206);
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2030.setVertexBuffer(0, buffer202);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2020.end();
    render_pass_encoder2030.end();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer202 = command_encoder202.finish();
    const command_buffer203 = command_encoder203.finish();
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer202, ]);
}