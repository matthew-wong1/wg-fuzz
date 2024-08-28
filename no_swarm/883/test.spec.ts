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
    
    const array0 = new Float32Array([1.0, -0.5, 0.0, 0.0, 0.25, -0.5, 1.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.75, 0.75, 0.75, 0.5, 1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 0.25, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, 0.25, -0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, -1.0, -0.25, 0.25, 0.0, -0.5, -1.0, -1.0, -1.0, -1.0, 1.0, 0.25, 1.0, 0.5, 0.0, 0.5, -0.75, 0.25, 1.0, -0.75, -0.75, 1.0, 0.25, 1.0, -0.75, 0.25, -0.5, 0.25, 0.5, -0.5, -0.25, 0.5, -0.75, -0.75, -0.75, -0.75, -0.75, 0.25, -0.75, -0.25, 0.5, 0.5, 1.0, 0.0, -0.75, -1.0, 0.0, -0.75, -1.0, 0.25, 0.25, 0.75, 0.75, -0.25, -0.75, -0.5, -1.0, 0.25, 0.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([1.0, -0.5, -0.25, 0.75, -0.5, -0.75, 0.75, 1.0, 0.25, -0.75, 0.75, -0.75, 0.75, -1.0, 0.5, 1.0, 0.0, 0.75, 0.5, 0.0, -0.25, 0.75, -0.75, -0.75, 0.0, 0.0, -0.75, -1.0, 0.0, -1.0, 0.5, 1.0, -1.0, -1.0, 0.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.0, -0.25, 0.5, 0.25, -1.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.0, 1.0, 0.0, 1.0, 0.0, -1.0, 0.5, -0.5, -0.75, 0.0, -0.25, -0.25, 1.0, -0.5, -0.75, -0.25, -0.5, 0.75, -1.0, -0.5, 0.5, 0.5, 0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 0.0, 0.25, 0.25, -0.25, -0.75, 1.0, 0.25, -1.0, 0.0, 0.75, 0.25, 0.75, -1.0, 0.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.25, -0.25, 0.0, ]);
    
    
    
    const array2 = new Float32Array([-1.0, 0.25, 0.75, 0.5, 1.0, 1.0, -1.0, -0.25, -0.5, 1.0, 0.25, -0.5, -0.75, 1.0, 0.25, -1.0, -0.5, 0.0, -1.0, -0.25, 0.25, -0.25, 0.0, 0.25, -0.5, 0.5, -0.25, -0.25, -0.5, -1.0, -0.5, 0.25, 1.0, 1.0, -0.25, -0.75, 0.25, 0.75, 1.0, -1.0, -1.0, 0.75, -1.0, 0.75, -0.25, -0.25, -1.0, -1.0, -0.5, 0.75, -0.75, 0.75, -0.25, 0.25, -0.75, -0.5, -0.75, 0.25, 0.75, 0.75, 1.0, -1.0, -1.0, 0.0, 0.5, 0.25, 1.0, -0.25, 0.25, -1.0, 1.0, 0.75, -1.0, 0.75, -0.5, 0.25, -1.0, 1.0, -1.0, 0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 0.25, -1.0, -0.25, 0.25, 0.25, -0.25, -0.75, 0.0, -0.75, -1.0, 0.5, -1.0, 0.75, -0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    
    const array3 = new Float32Array([-0.5, -0.5, 0.75, -0.5, -1.0, 0.25, 0.0, 0.25, -0.5, -0.5, 0.5, -1.0, 0.75, -1.0, 0.0, -0.5, -0.5, 1.0, -0.5, 0.5, 0.75, -1.0, -0.25, 1.0, 0.25, 0.5, -1.0, -0.5, 0.25, -0.5, 0.0, -0.75, 0.25, 0.0, -0.75, -0.5, -0.25, 0.75, -0.25, 1.0, -0.5, 0.0, 0.25, 0.5, 0.25, 0.25, 0.75, 1.0, 0.5, 1.0, -0.75, -0.5, 0.75, 0.5, -1.0, -1.0, 1.0, -1.0, 1.0, 0.75, 1.0, -0.75, -1.0, 0.0, 1.0, 0.75, 0.75, 0.25, 0.25, 0.75, 0.25, 0.0, 0.75, -0.75, 0.75, -0.25, 0.5, -0.5, 0.25, -0.25, 1.0, 0.25, 0.5, -0.5, 0.0, 0.5, -1.0, 0.75, -1.0, 0.0, 1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 0.25, -0.75, 0.0, 0.0, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array4 = new Float32Array([-0.5, 0.75, 0.75, 0.25, 0.75, 0.75, -0.25, 1.0, -0.75, -0.75, -0.75, 0.25, 0.75, 0.25, -1.0, -0.5, 0.5, -0.5, 1.0, -1.0, 0.25, -0.5, 0.75, 0.75, 1.0, 0.5, 0.0, 0.75, 1.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -0.5, 0.75, -0.25, 0.5, 0.25, 1.0, -0.75, -0.5, -1.0, 0.75, 0.5, 1.0, 0.75, -0.75, 0.25, 0.5, -0.5, 0.75, -1.0, 1.0, -0.25, 0.75, 0.75, -0.5, -0.25, 0.5, -0.5, -0.25, 0.0, -0.25, 0.25, 0.0, -0.5, -0.5, 0.0, 0.25, 0.0, 0.5, 0.25, 0.25, 0.25, -1.0, -0.25, 0.0, -0.75, -0.75, 0.5, 0.0, -0.5, 1.0, -0.75, 1.0, 0.0, -0.25, -1.0, -0.25, -1.0, 0.75, 1.0, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, ]);
    buffer000.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.25, -0.25, 0.0, 0.75, 1.0, 1.0, 0.75, -0.25, 0.0, -0.25, -0.25, -1.0, -0.5, 0.75, 1.0, 0.0, 0.5, -1.0, 0.5, 0.25, -0.25, 0.25, -0.5, 0.5, 0.75, 1.0, 0.0, -0.25, -0.5, -0.5, 1.0, 1.0, 1.0, -1.0, 0.75, -0.25, -1.0, -0.75, -0.75, 0.75, -0.25, 0.75, -1.0, 0.25, 0.0, -1.0, 0.0, -1.0, 0.5, 0.25, 0.75, -0.75, -0.75, -1.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.75, 0.0, 0.75, 0.5, -0.5, 0.25, -1.0, 0.5, 0.5, 0.25, 0.75, 0.25, -0.75, 0.75, 0.75, 0.75, -1.0, -0.75, 1.0, -0.75, -0.25, 1.0, -1.0, -0.25, -0.25, 0.0, 1.0, 0.5, 0.0, 0.0, 0.75, 0.75, -0.25, 0.0, -0.25, ]);
    device30.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    query200.destroy()
    const command_buffer001 = command_encoder001.finish();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder200.insertDebugMarker("mymarker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const array6 = new Float32Array([-0.25, 0.75, 1.0, -0.5, 0.5, -0.75, -0.75, -0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.0, 0.25, -0.5, 0.75, 1.0, 0.75, -0.25, -0.5, -0.75, 1.0, -1.0, 0.25, 0.0, 0.25, -0.25, -0.25, -0.25, -0.25, 0.5, 0.5, -0.75, -0.5, 1.0, -0.25, -0.25, -0.5, 0.0, 0.25, 1.0, -0.5, 0.0, 0.5, -0.5, 0.75, -0.75, -0.5, -1.0, -0.25, 0.5, -0.25, 1.0, -0.5, -0.25, 1.0, 0.25, -0.5, 0.75, 0.75, 0.5, -0.5, -0.25, 0.5, 1.0, 0.75, -0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 0.5, -0.5, 0.0, -0.25, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.0, -0.75, -0.5, -1.0, 1.0, 0.75, 0.75, 0.25, -1.0, 0.25, ]);
    texture000.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    device00.queue.submit([command_buffer001, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.pushErrorScope("internal");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder202.pushDebugGroup("mygroupmarker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder001.setPipeline(render_pipeline000);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0000.popDebugGroup()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer203 = command_encoder203.finish();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder202.popDebugGroup()
    
    texture200.destroy();
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0020.setPipeline(compute_pipeline006);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_buffer100 = command_encoder100.finish();
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer007, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer007, 0);
    compute_pass_encoder0030.setPipeline(compute_pipeline002);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder202.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    buffer003.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    
    buffer004.destroy()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.end();
    const command_buffer202 = command_encoder202.finish();
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
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

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder0040.setPipeline(compute_pipeline005);
    
    
    command_encoder204.insertDebugMarker("mymarker");
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    
    buffer005.destroy()
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    compute_pass_encoder0050.setPipeline(compute_pipeline005);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    query200.destroy()
    compute_pass_encoder0040.insertDebugMarker("marker")
    buffer007.destroy()
    device20.queue.submit([command_buffer203, ]);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    query200.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    device10.pushErrorScope("out-of-memory");
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder000.insertDebugMarker("mymarker");
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
    
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0011, 0);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0001.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
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
    
    
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0001.setPipeline(compute_pipeline0022);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    command_encoder006.insertDebugMarker("mymarker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer002.destroy()
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    buffer009.destroy()
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    command_encoder006.insertDebugMarker("mymarker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_buffer101 = command_encoder101.finish();
    texture201.destroy();
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.75, 0.0, -0.25, -1.0, -0.75, -1.0, 0.75, 0.75, 0.25, -0.25, -1.0, -0.25, 0.5, 1.0, -0.5, -0.25, 0.5, 0.0, 0.0, 0.25, 0.0, -0.25, 0.5, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, 0.75, 0.25, -0.25, 0.0, -0.25, 0.5, -0.75, -0.75, 0.75, -1.0, 0.25, 0.5, 1.0, -1.0, -1.0, -0.5, 0.25, 0.5, -1.0, 0.75, -1.0, 0.75, 0.75, 0.75, -1.0, 0.5, 0.75, 1.0, 1.0, 0.5, -0.75, 0.5, 0.0, 1.0, 0.0, -0.75, -0.25, 0.0, -0.75, -1.0, 0.0, 1.0, -1.0, 0.25, 0.0, -0.5, 0.0, 0.5, 0.75, -0.25, 0.0, 0.75, 0.75, 0.0, -1.0, -0.25, 0.75, -0.75, 1.0, -1.0, -0.75, -0.75, 0.0, -1.0, -1.0, 0.5, 1.0, -0.25, -0.5, -1.0, -0.5, ]);
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array8 = new Float32Array([-0.5, 0.5, 0.75, -0.75, 0.25, -0.75, -0.5, -0.75, 0.75, 0.25, -0.25, -0.5, -1.0, 0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 0.25, -0.25, 0.25, 0.75, 0.5, 0.5, -0.25, 0.5, -0.25, 0.75, -0.75, -0.5, -0.25, 0.5, 0.75, -0.75, -0.5, -0.5, -0.75, 0.75, 0.5, 0.25, -0.75, 1.0, 0.5, 1.0, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, 1.0, -0.25, -0.5, 0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 0.0, -0.5, 0.0, 0.25, -0.25, -0.75, 0.25, 0.5, -0.25, 0.0, -0.75, -0.75, -0.25, 1.0, 0.25, -0.5, -0.75, -0.5, -0.5, 0.25, 0.0, 0.5, -0.75, -0.75, -0.75, -0.25, 0.25, 0.5, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, 0.25, -0.5, -0.25, -0.5, 0.75, 1.0, ]);
    
    buffer101.destroy()
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
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
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    texture001.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_bundle_encoder202.setPipeline(render_pipeline201);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder2040.insertDebugMarker("marker")
    command_encoder205.insertDebugMarker("mymarker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    query200.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0030.popDebugGroup()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder007.insertDebugMarker("mymarker");
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    command_encoder007.clearBuffer(buffer0011);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    command_encoder007.pushDebugGroup("mygroupmarker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer101, ]);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    command_encoder007.clearBuffer(buffer0011);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer008.destroy()
    
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_buffer102 = command_encoder102.finish();
    command_encoder008.pushDebugGroup("mygroupmarker")
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    render_bundle_encoder200.popDebugGroup();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    buffer001.destroy()
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    render_bundle_encoder202.popDebugGroup();
    
    
    query203.destroy()
    
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder008.clearBuffer(buffer0011);
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout005,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    compute_pass_encoder2040.insertDebugMarker("marker")
    query203.destroy()
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout008,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    device10.queue.submit([command_buffer102, ]);
    
    
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
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
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder008.clearBuffer(buffer0011);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout008,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group005);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder206.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    query202.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
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
        layout: compute_pipeline0022.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group006);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0018, 0);
    command_encoder008.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    command_encoder007.popDebugGroup()
    compute_pass_encoder0030.end();
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0019, 0);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0001.end();
    const command_buffer206 = command_encoder206.finish();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group007);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer206, ]);
    const command_buffer008 = command_encoder008.finish();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0050.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer005 = command_encoder005.finish();
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group008);
    device20.queue.submit([command_buffer202, ]);
    const command_buffer007 = command_encoder007.finish();
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer007, ]);
    compute_pass_encoder0040.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device00.queue.submit([command_buffer005, command_buffer008, ]);
}