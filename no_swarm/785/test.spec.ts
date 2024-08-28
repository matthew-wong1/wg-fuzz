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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([-0.25, 0.0, -0.75, 0.25, 1.0, 0.0, -1.0, -0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.0, 0.75, -0.75, -0.75, 0.0, -0.25, 0.25, 0.75, 0.25, -0.25, 1.0, -0.5, -0.75, 0.5, -1.0, -0.25, 1.0, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, 1.0, 0.25, 0.5, -0.5, 0.75, -1.0, -0.25, 0.25, -0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -1.0, -0.5, 0.75, 0.25, 0.5, -1.0, 0.25, 0.75, -1.0, 0.5, 0.0, 1.0, 0.5, -0.25, -0.25, -0.5, -0.25, 0.5, -0.25, -0.75, -0.25, -0.75, 0.75, -0.75, -0.25, -0.25, -0.25, -0.25, 0.5, 0.5, 0.75, -0.5, 0.0, 0.5, 0.75, -0.25, 0.75, -0.5, 1.0, 1.0, 0.0, -0.75, 0.75, 1.0, 1.0, -1.0, 1.0, 0.0, 0.0, -0.75, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    
    const array1 = new Float32Array([1.0, -1.0, -0.5, -0.75, 1.0, -0.25, -1.0, 0.0, -0.5, -0.25, 0.25, 1.0, -0.5, -0.25, -0.5, 0.0, -0.75, -0.25, 0.0, -1.0, 0.25, 1.0, -0.75, -0.75, -0.75, -0.5, -0.75, -0.5, 0.75, -1.0, -0.5, -1.0, 0.75, -1.0, -1.0, 0.75, -0.5, -0.25, -0.25, -1.0, 0.25, -1.0, 0.25, -1.0, 1.0, -0.5, -0.5, 1.0, 0.75, 0.5, 0.5, -0.75, 0.5, 0.25, -0.5, 0.75, 0.5, -0.5, -0.75, 0.0, 0.75, -1.0, -1.0, -1.0, -0.25, -0.5, 1.0, 0.75, -0.75, 0.5, -0.75, 1.0, 0.25, 0.25, 1.0, 1.0, 0.25, 0.25, 1.0, -0.75, -0.5, 0.75, 0.25, -0.25, 0.75, 0.0, 0.25, -0.75, -0.75, 0.0, 1.0, 1.0, 0.25, 0.0, -1.0, -0.75, 1.0, -1.0, -0.25, -1.0, ]);
    const array2 = new Float32Array([0.5, 0.5, 0.0, -0.25, 0.0, 0.5, 1.0, 0.75, 0.25, -0.75, 0.5, 1.0, -1.0, -1.0, 0.25, -0.5, -0.5, -0.75, 0.5, -1.0, -1.0, 0.25, 0.5, 0.25, -0.25, 0.5, -1.0, 1.0, -0.5, 0.5, -0.75, -0.25, 1.0, 0.5, -0.75, 0.25, 0.5, 1.0, 0.5, 0.25, -0.5, -0.75, 0.5, -0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 0.0, 1.0, 0.0, -0.25, 0.0, 0.25, -0.25, -0.25, 0.75, 1.0, 0.75, -0.25, 0.5, 0.25, -0.75, -1.0, 1.0, 0.5, -0.5, -0.5, -0.75, -0.75, -0.5, -0.75, 0.25, 0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.5, 0.25, 0.0, 0.0, -0.25, -0.25, 0.25, 0.25, -0.75, -0.5, 0.5, 0.0, -1.0, -1.0, -1.0, -0.75, 0.5, 0.0, -0.5, -0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture000.destroy();
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-0.75, 0.5, 0.5, 0.0, 0.0, -1.0, -0.5, 0.25, -0.25, 1.0, 0.5, 1.0, 0.75, 0.25, -1.0, -0.25, -0.75, 0.25, 0.5, -1.0, -0.75, -0.25, 0.5, -1.0, 0.75, -0.5, 0.25, 0.5, 1.0, -0.5, -0.5, -0.75, -1.0, -1.0, -0.5, 0.25, -1.0, 0.5, 0.5, 0.75, -0.5, 1.0, -0.5, 0.25, -1.0, -0.5, -0.25, 0.0, 1.0, -0.5, 0.5, -0.25, -0.5, 0.0, -0.5, -0.5, 0.5, 0.0, 0.25, -0.25, 0.0, 1.0, -1.0, -0.25, 0.75, 1.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.25, -1.0, -1.0, 0.0, 0.25, -0.25, 0.75, 0.75, -0.25, -1.0, 0.0, -0.5, -1.0, -1.0, -0.5, -0.5, -0.5, -0.5, 1.0, 0.25, -0.5, 0.75, -1.0, -1.0, 0.25, -0.75, -1.0, -0.75, -1.0, ]);
    buffer001.destroy()
    
    buffer002.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const array4 = new Float32Array([-0.75, -0.75, -0.25, -1.0, 0.0, 0.75, -0.5, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, -0.5, -0.25, -1.0, -0.75, 0.25, 0.75, 0.25, 0.75, 1.0, 0.75, -0.25, 0.75, -0.5, -0.75, 0.75, 0.5, -0.25, 1.0, -1.0, -1.0, 0.0, -0.25, -0.25, -0.75, -1.0, 0.5, 0.5, -0.5, -0.75, 0.5, 0.25, -0.75, -0.5, 1.0, -0.5, 0.25, 0.75, 1.0, 0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -0.75, -0.75, 0.0, 0.25, -0.75, 1.0, 0.25, 0.5, 0.0, -1.0, 0.5, 0.0, 0.75, 0.5, 0.0, -1.0, 0.5, -1.0, -0.75, -1.0, 0.5, -0.25, 0.5, -0.5, 0.25, 0.5, 0.5, 0.0, 1.0, 0.5, -0.25, -1.0, 0.5, 0.0, 1.0, 1.0, -0.75, -0.5, 0.25, 0.25, -1.0, -0.75, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    buffer003.destroy()
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query003.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    device00.pushErrorScope("internal");
    command_encoder000.popDebugGroup()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder002.popDebugGroup();
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.popDebugGroup();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_buffer000 = command_encoder000.finish();
    
    
    
    
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query002.destroy()
    
    
    const array5 = new Float32Array([0.25, 0.75, -0.25, 0.5, 1.0, -1.0, 0.75, 1.0, -0.75, -0.5, 0.75, 1.0, 0.75, -0.75, 1.0, -0.5, -1.0, -0.25, 0.75, 0.25, -0.5, 0.75, -0.25, -1.0, 0.25, -0.5, 0.5, 0.5, 0.25, -0.25, -1.0, 0.75, 1.0, 0.5, 0.5, 1.0, 0.25, -0.25, -0.25, -0.75, 0.0, 0.25, 0.75, -0.75, 0.75, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 1.0, -0.25, -0.75, 0.0, -1.0, 0.25, -0.75, -0.75, -0.25, 1.0, -1.0, 0.5, -1.0, -1.0, -0.5, 0.75, -1.0, -0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.25, -0.25, 1.0, -1.0, 0.0, -0.5, -1.0, -1.0, 0.75, 0.75, 0.25, 0.5, -0.75, -0.75, -0.25, 0.25, -1.0, -0.75, 0.25, 0.75, -0.25, 0.75, 1.0, 1.0, -1.0, ]);
    
    
    const array6 = new Float32Array([0.0, -1.0, -0.25, 0.25, -0.5, -0.75, -0.25, 0.75, 0.25, 0.25, 0.75, 0.0, 1.0, -0.5, 0.5, 1.0, 0.25, -1.0, 1.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.0, 0.25, 0.75, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, 0.0, -0.75, -0.25, 0.0, -0.25, -0.5, 0.0, -1.0, 1.0, 1.0, 1.0, 0.75, 0.25, -0.75, -1.0, 0.5, 1.0, -1.0, 1.0, -1.0, -0.5, 1.0, 0.75, -1.0, -1.0, -0.5, -0.25, 1.0, 0.5, 1.0, 1.0, -0.5, 0.0, 0.25, 1.0, 0.25, 0.5, 0.0, -0.25, -0.5, 0.75, -1.0, 0.5, 0.25, -0.5, -1.0, 0.0, -1.0, 0.75, 0.0, -0.25, 0.25, 0.5, 0.0, 0.5, 0.25, -0.75, -1.0, 1.0, 0.25, -0.75, -0.25, 0.5, 0.0, 0.75, 0.5, 0.5, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    query004.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_bundle_encoder001.popDebugGroup();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    query000.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query000.destroy()
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    query002.destroy()
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer004.destroy()
    
    
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    query000.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    command_encoder003.pushDebugGroup("mygroupmarker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    buffer005.destroy()
    query001.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query001.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    compute_pass_encoder0030.setPipeline(compute_pipeline002);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group002);
    command_encoder100.insertDebugMarker("mymarker");
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0012, 0);
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    render_bundle_encoder000.draw(3);
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    
    
    
    device20.pushErrorScope("internal");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query001.destroy()
    
    texture200.destroy();
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-0.5, -0.25, 0.75, 0.25, -1.0, -1.0, 1.0, 0.5, -0.25, -0.25, -0.75, 0.5, 0.75, 1.0, -0.5, -0.5, 0.5, 1.0, 0.0, 1.0, -0.5, 0.25, -0.5, 0.5, -0.75, -0.25, -1.0, 0.0, 0.0, 1.0, 0.5, -0.75, 0.0, -0.75, 0.75, 0.0, -0.75, -1.0, 0.75, 0.0, -0.75, -1.0, 1.0, 1.0, 1.0, 0.5, -0.5, 0.0, -0.5, -0.5, 1.0, 0.75, -1.0, -0.5, 0.75, 0.5, -0.75, 0.5, -1.0, 0.5, -0.75, -0.25, 0.5, -0.75, 1.0, -0.25, 1.0, -0.5, -0.5, -0.5, -0.25, -0.75, -1.0, 0.0, -1.0, 0.25, 0.25, -0.5, 0.25, -0.25, 0.25, -0.75, 0.0, 0.5, 0.25, -0.75, 0.25, 1.0, -1.0, 0.0, -1.0, 0.25, -0.5, 1.0, -1.0, -1.0, -0.5, -0.5, 0.25, 1.0, ]);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
    query000.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    buffer0013.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    device00.queue.writeBuffer(buffer0015, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0015, 0, array5, 0, array5.length);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer100.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    query002.destroy()
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0010.end();
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    compute_pass_encoder0011.setPipeline(compute_pipeline0021);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0015, 0, array5, 0, array5.length);
    buffer007.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer0017.destroy()
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    query200.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0015, 0, array4, 0, array4.length);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer0015
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group005);
    
    
    
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    buffer0010.destroy()
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0015, 0, array7, 0, array7.length);
    command_encoder004.copyBufferToBuffer(
        buffer0016,
        0,
        buffer0015,
        0,
        400
    );
    buffer200.destroy()
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.pushErrorScope("validation");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeBuffer(buffer0015, 0, array5, 0, array5.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer0015
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer0016.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    
    buffer0018.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder004.clearBuffer(buffer0012);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder001.draw(3);
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
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    const array8 = new Float32Array([1.0, 0.5, -0.75, 1.0, 0.5, -0.75, -0.25, 0.0, 0.25, -0.25, 0.75, 0.75, 0.5, -1.0, 0.25, -1.0, 1.0, -1.0, -1.0, -1.0, 0.25, -0.75, -0.75, 0.25, -0.75, -1.0, -0.25, 1.0, 0.5, 1.0, -1.0, 0.75, 0.5, -1.0, 0.25, -0.5, -1.0, 0.5, -0.5, 0.75, 0.0, 0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 0.0, -0.5, -0.75, 0.5, -0.5, 0.5, 0.0, -0.5, 0.5, -0.75, -1.0, 1.0, 0.5, 1.0, -1.0, 0.75, -1.0, -0.75, 0.0, -0.25, -0.25, -0.5, 1.0, 1.0, 1.0, -0.5, -0.5, 0.25, 0.5, -1.0, -0.25, -0.75, 0.75, 0.5, -0.25, -0.75, -1.0, 1.0, -1.0, 0.0, -0.5, 0.75, -0.5, 0.25, -0.25, -1.0, -0.75, 0.75, -1.0, 0.5, -0.5, -0.5, -0.25, ]);
    buffer0014.destroy()
    command_encoder004.clearBuffer(buffer0015);
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    query001.destroy()
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const array9 = new Float32Array([1.0, 0.25, -0.75, 1.0, -1.0, -1.0, -0.25, 0.5, 1.0, 0.0, -0.25, -0.75, -0.5, 0.25, 0.75, -1.0, -0.25, 1.0, 0.0, 0.5, 1.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.75, -0.5, 0.0, 0.5, 0.25, 0.25, 1.0, 1.0, 0.25, 0.75, 0.75, 0.75, 1.0, -0.75, -0.75, 0.0, -0.25, -0.5, -0.75, 0.5, 0.0, 0.5, -1.0, 0.0, -0.75, -0.25, -0.5, 0.25, 0.0, 1.0, -0.75, 0.25, 0.25, 0.25, 0.0, -0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.75, -0.75, 0.0, -0.75, -1.0, -0.25, -0.5, -1.0, -1.0, -0.75, 0.25, -0.75, 0.5, 0.75, 0.0, 0.75, -1.0, 0.0, 0.25, -0.25, -0.75, -0.5, -0.75, 0.75, -0.75, -0.25, 0.0, -1.0, 0.5, 1.0, -0.5, 0.5, 0.0, ]);
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer0015
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer0020.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer0015, 0, array5, 0, array5.length);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0021, 0);
    device00.queue.writeBuffer(buffer0021, 0, array2, 0, array2.length);
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer0021
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    command_encoder005.clearBuffer(buffer0021);
    device00.queue.writeBuffer(buffer0012, 0, array7, 0, array7.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0015, 0, array4, 0, array4.length);
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    render_bundle_encoder002.setVertexBuffer(0, buffer003);
    command_encoder005.clearBuffer(buffer0012);
    device00.queue.writeBuffer(buffer0021, 0, array3, 0, array3.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    buffer0015.destroy()
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder005.insertDebugMarker("mymarker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device00.queue.writeBuffer(buffer0021, 0, array6, 0, array6.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder001.finish();
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query201.destroy()
    
    query000.destroy()
    device00.queue.writeBuffer(buffer0021, 0, array3, 0, array3.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer0021
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer107.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    device00.queue.writeBuffer(buffer0021, 0, array9, 0, array9.length);
    compute_pass_encoder0050.setPipeline(compute_pipeline0070);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline0070.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group006);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline0021.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group007);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer201 = command_encoder201.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0027, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0020.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.popDebugGroup()
    command_encoder004.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0028, 0);
    compute_pass_encoder0011.end();
    command_encoder003.popDebugGroup()
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0050.end();
    const command_buffer003 = command_encoder003.finish();
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer001, ]);
    const command_buffer002 = command_encoder002.finish();
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer003, ]);
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
}