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
    
    const array0 = new Float32Array([-1.0, -0.5, -0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.25, 1.0, -0.5, -0.25, -0.75, -0.5, 0.0, -0.5, -0.75, 0.25, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, 1.0, 0.5, 0.5, 1.0, -0.5, 0.5, 0.0, -0.25, 1.0, 0.25, 0.0, 0.0, 0.5, 0.0, -1.0, -0.5, 0.75, -0.5, -1.0, -0.75, 0.25, 1.0, 0.75, -1.0, -0.75, -0.5, 0.5, -0.5, -0.75, -0.5, -0.25, 0.25, -0.75, 0.25, 1.0, -0.25, -0.5, -0.5, 0.25, 1.0, -0.5, -0.25, -0.25, -0.25, -0.25, 0.0, 1.0, 0.75, -0.5, -0.25, 0.75, -0.75, -0.75, 1.0, 0.0, 0.75, -0.25, -0.75, 0.0, 0.75, -0.25, -0.75, 0.75, 0.25, -0.5, 0.0, 0.5, 0.75, 0.75, 0.25, 0.5, 0.75, -1.0, 0.5, -0.25, -1.0, ]);
    const array1 = new Float32Array([-0.25, -0.75, 1.0, 0.5, -1.0, -0.75, 0.25, 0.0, 0.25, 0.0, 0.75, -0.25, 1.0, 0.5, 1.0, 0.5, 0.25, -1.0, 0.25, -0.25, -1.0, -0.25, -1.0, -0.5, -0.5, -0.5, 0.25, 0.75, 1.0, -0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -1.0, -0.75, 0.5, -0.5, -0.25, -0.25, -1.0, -1.0, -0.5, 1.0, -1.0, -0.5, -1.0, -0.75, 0.0, 0.0, -0.25, 0.25, 0.75, 0.0, 0.75, -0.25, -1.0, -0.25, 0.0, 0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 0.0, 1.0, 1.0, 0.0, -0.5, 0.5, -0.75, -0.25, 0.0, -1.0, 0.0, 0.25, -0.25, 0.75, -0.75, -1.0, 0.25, 0.25, 0.0, 1.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, 0.25, 0.0, 1.0, 0.5, 0.25, 0.75, 0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([1.0, 0.75, -0.25, 0.5, 0.75, -0.75, -0.5, -0.75, -0.25, -0.25, 0.75, 1.0, -1.0, 0.0, 0.25, -1.0, -0.25, 1.0, -0.25, 0.0, 0.75, -0.5, 0.0, 0.25, 0.0, -0.75, -0.75, -0.25, -1.0, 0.25, 0.75, -0.5, 0.75, 0.75, 0.5, -0.75, 0.0, -0.5, 0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.5, 1.0, -0.5, 0.5, 0.0, -0.5, 0.5, 0.0, 1.0, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, -0.25, -1.0, -1.0, 1.0, -1.0, 1.0, -1.0, -0.25, 0.25, -0.75, 1.0, 0.5, -0.25, -0.75, -0.25, 0.5, -0.5, -0.5, -0.25, -1.0, 0.75, -0.25, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, -0.75, 0.75, -1.0, 0.25, 1.0, 0.75, -0.75, -0.75, 1.0, 0.75, -1.0, -1.0, 0.0, ]);
    
    
    const array3 = new Float32Array([1.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.75, 1.0, -0.75, -0.75, -0.5, 0.0, 0.0, -0.25, 0.5, -0.5, -0.25, -0.75, -0.25, -0.25, 0.0, -0.75, -0.5, -0.25, 0.75, -0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -0.5, 0.5, 0.5, 0.25, 0.25, -0.5, -0.5, 0.75, -0.25, -0.5, -1.0, -0.75, 0.75, -0.75, -1.0, -1.0, 0.0, 0.5, -0.25, 1.0, 1.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, -0.75, -0.75, -0.25, -0.75, 0.0, -0.5, 0.25, -1.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.75, 0.25, 1.0, 0.0, 1.0, 0.75, 0.0, 1.0, 0.5, -1.0, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, 0.0, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -0.75, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    device20.pushErrorScope("validation");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    command_encoder201.popDebugGroup()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    buffer200.destroy()
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    query000.destroy()
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    render_bundle_encoder002.popDebugGroup();
    command_encoder001.clearBuffer(buffer002);
    query000.destroy()
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([0.25, -0.5, 0.5, 0.25, 0.75, 0.75, -0.25, 1.0, 1.0, 0.0, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, 0.0, -0.25, -0.5, 0.75, 1.0, -0.5, -1.0, -0.5, 0.75, 0.75, 0.25, -0.75, -0.75, -0.25, -0.25, 0.5, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.5, 1.0, -0.25, -1.0, -0.5, -1.0, 0.25, -0.5, -0.75, -1.0, -1.0, -0.75, 1.0, -0.5, -0.25, 0.5, 0.25, -0.25, -0.25, 0.0, 1.0, 0.25, 0.5, 0.25, -1.0, -0.25, 1.0, -0.75, 1.0, 0.75, 0.5, -1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 1.0, 0.25, 1.0, 0.25, 0.5, 0.0, -0.75, -0.5, -0.25, 0.5, 0.5, -0.75, -1.0, -1.0, -0.5, -1.0, -0.5, 0.0, -0.25, -1.0, -1.0, -1.0, -0.25, -1.0, 0.0, ]);
    query001.destroy()
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    device00.pushErrorScope("validation");
    const command_buffer001 = command_encoder001.finish();
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
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
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    compute_pass_encoder2000.popDebugGroup()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    command_encoder000.popDebugGroup()
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder002.clearBuffer(buffer002);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.destroy();
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder201.popDebugGroup();
    buffer001.destroy()
    compute_pass_encoder0030.setPipeline(compute_pipeline009);
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer002 = command_encoder002.finish();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    query001.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    query201.destroy()
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    query004.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
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
    query200.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline201);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    query000.destroy()
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    buffer004.destroy()
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    query202.destroy()
    device00.queue.submit([command_buffer001, ]);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer201.destroy()
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder004.insertDebugMarker("mymarker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout205]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_buffer202 = command_encoder202.finish();
    
    
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
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
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder0000.setPipeline(compute_pipeline007);
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
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
    buffer202.destroy()
    compute_pass_encoder0040.setPipeline(compute_pipeline008);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([1.0, 0.0, 0.0, -1.0, -1.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.75, 0.0, -0.75, -0.5, -0.75, 0.25, -0.25, -0.5, -0.25, 1.0, -0.75, -0.75, 0.75, 0.75, 0.25, -0.5, -0.5, -0.5, 0.75, -0.75, -0.75, 0.75, 0.5, -0.5, -0.75, -0.75, 0.75, 0.0, -0.75, 0.0, 0.25, 0.75, 0.5, 0.25, 0.0, -0.75, 0.75, -0.5, 0.75, 0.25, -0.25, 0.25, -0.75, 0.0, 0.75, -0.5, -0.75, -0.75, 0.0, 0.5, 0.75, -0.5, 1.0, 0.25, -0.5, 0.0, 0.0, -1.0, 0.5, 0.0, -0.5, 0.25, -0.25, -0.5, 0.25, 0.25, 0.75, 1.0, 0.5, 0.25, 0.0, -0.5, -0.5, 0.75, 0.25, -0.75, -0.75, 0.75, -0.5, 0.0, -0.25, -0.75, 0.0, -0.25, 0.25, -0.25, -0.5, -0.25, 1.0, 0.5, ]);
    buffer005.destroy()
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout205]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer000.destroy()
    
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    device00.pushErrorScope("validation");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder0040.insertDebugMarker("marker")
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    query202.destroy()
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    compute_pass_encoder0040.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0010, 0);
    
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const array6 = new Float32Array([-0.25, 0.0, 0.5, 0.75, -1.0, -0.5, 0.25, 0.25, 0.5, 1.0, 0.0, 1.0, -0.5, -1.0, 1.0, 0.25, -0.25, 0.0, -0.25, 0.0, 0.5, 0.25, 0.25, 0.75, -0.5, -1.0, -0.5, -0.5, 0.75, -0.5, 0.75, -0.25, -0.75, -0.5, 0.0, 0.5, -0.25, 0.25, 0.75, -0.25, 1.0, -1.0, 0.25, 1.0, 0.25, -1.0, -0.75, 0.25, 1.0, 0.5, -0.25, -0.25, -0.75, 0.25, -0.25, -0.75, -0.25, -1.0, -0.25, -0.25, -0.75, -0.75, 0.5, 1.0, -0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 0.25, -0.25, 0.75, 0.5, -0.25, -1.0, 0.75, 0.5, -0.75, -0.75, -0.25, -0.75, -0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.0, 1.0, -0.25, -0.5, 0.25, -0.25, 0.25, 0.5, -1.0, -1.0, -1.0, 0.75, ]);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query200.destroy()
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query000.destroy()
    buffer009.destroy()
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    device20.queue.writeBuffer(buffer208, 0, array4, 0, array4.length);
    compute_pass_encoder2000.popDebugGroup()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device00.queue.submit([command_buffer002, ]);
    
    buffer208.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer2010.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    compute_pass_encoder0050.setPipeline(compute_pipeline0024);
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder0000.end();
    texture000.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.clearBuffer(buffer0010);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_buffer000 = command_encoder000.finish();
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    texture001.destroy();
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group004);
    buffer003.destroy()
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder201.popDebugGroup();
    buffer0011.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const command_buffer006 = command_encoder006.finish();
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    texture201.destroy();
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    buffer204.destroy()
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
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
    
    query003.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout206]
    });
    buffer0012.destroy()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0040.insertDebugMarker("marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    buffer002.destroy()
    
    
    device00.pushErrorScope("internal");
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2012, 0);
    
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    buffer205.destroy()
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query004.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query004.destroy()
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.end();
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group005);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0015, 0);
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder2010.popDebugGroup()
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline009.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group006);
    compute_pass_encoder2010.end();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0040.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0018, 0);
    command_encoder201.popDebugGroup()
    compute_pass_encoder0050.end();
    const command_buffer005 = command_encoder005.finish();
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer007, ]);
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer003, ]);
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer005, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([command_buffer201, ]);
}