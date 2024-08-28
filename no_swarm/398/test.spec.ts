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
    
    
    
    const array0 = new Float32Array([0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.25, 0.75, 0.75, -1.0, 0.5, 0.25, -1.0, 0.5, -1.0, 1.0, 1.0, 0.75, -0.25, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, -0.25, 0.75, 0.75, -0.5, 1.0, -0.5, -1.0, -0.75, -0.75, 0.0, 0.5, -1.0, 0.25, 0.0, 0.5, 1.0, 0.0, 0.5, 1.0, 0.5, 1.0, 1.0, -0.5, 1.0, -0.5, 0.75, -0.25, 0.25, 0.0, 0.5, 1.0, 0.5, 0.0, 0.5, 0.0, -0.5, -0.75, -0.75, 0.5, 0.25, -0.25, 0.5, -0.5, -0.75, -1.0, 0.0, -0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 1.0, 1.0, -0.25, 0.25, -0.75, -0.25, 1.0, 1.0, -0.75, -0.25, 0.75, -0.25, 0.5, 1.0, -0.75, 0.5, 0.75, 1.0, 0.25, -0.5, -0.5, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const array1 = new Float32Array([-0.75, 0.5, -0.5, 1.0, 0.5, 0.25, 0.75, 0.75, -0.5, 0.25, -0.25, 0.25, 0.0, -0.25, -1.0, 0.0, 0.0, -0.5, 0.75, 0.0, 0.5, 0.0, 0.25, -0.75, -0.5, -0.25, -0.75, 0.25, -0.75, 0.5, 0.25, -0.5, 0.0, 0.75, -0.5, 0.75, -0.25, 1.0, -0.5, -0.25, 1.0, -0.75, -0.5, -0.5, 1.0, 0.75, 0.5, 0.75, 0.0, -1.0, 0.75, 0.5, 0.0, -1.0, 0.5, -1.0, -0.5, 1.0, 0.5, 0.75, 0.0, -0.25, 0.5, 1.0, 0.75, 0.25, -0.75, 0.0, 0.25, 0.75, -0.25, -0.5, -0.75, -0.25, -0.5, 0.0, 0.75, -1.0, 0.75, 0.0, -0.75, 0.25, -1.0, 0.75, -0.75, 0.75, 0.25, 0.75, -0.25, -0.5, 1.0, 0.5, -0.5, -0.25, -0.5, -1.0, -0.5, 0.5, -0.25, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array2 = new Float32Array([-0.5, -1.0, 0.25, 0.5, -1.0, -1.0, -0.75, 0.5, -0.5, 0.75, 0.0, 0.0, 1.0, -1.0, -0.75, 0.0, 0.0, -0.25, 0.25, 1.0, 1.0, -0.5, 0.5, -1.0, -0.5, -0.75, 0.25, 0.5, 0.75, 0.5, -0.5, -0.5, -0.75, 0.75, -0.75, 0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 0.75, -0.25, -0.25, 0.0, -0.75, -0.5, 0.5, -0.75, -1.0, 0.75, 0.0, 0.75, -1.0, 0.75, -1.0, -0.75, 0.0, 0.75, -0.5, -0.25, -0.5, 0.5, 0.25, -0.5, -0.5, -1.0, -0.25, 0.0, 1.0, 1.0, -0.5, 0.25, 0.5, -0.25, 1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 0.25, -0.5, -0.5, 0.0, 0.25, -0.5, 0.25, -1.0, -0.5, -1.0, -0.5, -1.0, -1.0, -0.5, 0.75, 0.75, -0.25, 0.25, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.pushErrorScope("out-of-memory");
    
    
    buffer100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const array3 = new Float32Array([-1.0, -1.0, 0.25, 1.0, 1.0, 0.25, -1.0, 0.75, -0.25, 0.25, -1.0, -1.0, -0.25, 0.0, 0.25, 0.75, 0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.75, -0.25, 1.0, 0.25, -0.75, -0.75, -0.25, -0.25, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, -1.0, 0.0, -1.0, -0.5, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, 0.25, -0.25, -0.75, 0.0, 0.25, -0.25, 1.0, 1.0, 0.5, 0.25, -1.0, -1.0, -0.75, 1.0, -0.75, 0.25, -0.25, 0.75, -0.75, -0.25, -1.0, 1.0, -0.25, 0.25, 1.0, -1.0, 0.0, 0.75, 1.0, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, 1.0, 0.75, 0.0, 1.0, -1.0, 0.25, 0.75, -0.25, -0.5, -0.75, 0.0, 0.5, 0.0, -0.5, 1.0, 0.25, 0.25, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer101.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const array4 = new Float32Array([0.5, 0.25, 1.0, -0.25, -1.0, 1.0, -1.0, -0.5, 1.0, -0.25, 0.25, 0.25, 0.75, 0.75, -0.75, 0.75, 0.0, 1.0, -0.75, 0.25, 0.0, -1.0, -0.5, -0.5, 0.25, 1.0, 1.0, 0.25, 0.25, -0.5, -1.0, -0.5, 0.5, 0.5, -0.5, 0.75, 0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, 1.0, 0.75, 0.75, -1.0, -0.5, 0.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, 0.25, -1.0, -0.75, 0.25, 0.75, 0.0, -0.25, -0.25, 0.75, -0.5, 0.5, 1.0, -0.25, -1.0, 0.75, -0.75, 0.25, 0.0, -0.25, 0.5, 0.0, -1.0, 0.75, 0.25, -0.25, 1.0, 0.75, 0.25, 0.5, 0.25, -0.5, 1.0, 1.0, -1.0, 0.5, 0.5, 0.25, 0.25, 1.0, 0.5, ]);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder102.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder102.insertDebugMarker("mymarker");
    
    texture100.destroy();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query100.destroy()
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query100.destroy()
    query100.destroy()
    
    
    query100.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder1000.popDebugGroup()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device10.pushErrorScope("internal");
    query100.destroy()
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
    compute_pass_encoder1010.popDebugGroup()
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
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1010.popDebugGroup()
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    
    
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1010.popDebugGroup()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture101.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    compute_pass_encoder1030.setPipeline(compute_pipeline103);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const array5 = new Float32Array([0.0, 0.75, 0.75, 0.75, 1.0, -0.5, 1.0, -0.75, -0.75, -0.25, 1.0, -0.25, 0.25, 0.25, 0.5, 0.0, 1.0, 1.0, -0.75, -0.25, -0.5, 0.75, -0.5, -0.75, -0.5, 0.75, -0.75, 0.0, -0.5, -1.0, 1.0, 1.0, 0.75, 0.75, -0.25, 1.0, 0.5, 1.0, -0.25, 0.0, -1.0, -0.5, -0.5, -0.75, 1.0, -0.5, 1.0, 0.0, 1.0, 1.0, 0.5, 0.75, -1.0, -0.75, 0.5, -1.0, -0.5, 0.0, -0.5, 0.75, 0.75, -1.0, 0.0, -0.5, 0.75, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 0.75, -0.75, -1.0, -1.0, 1.0, 0.75, 1.0, 0.0, 0.25, 0.0, -0.5, 0.0, 0.75, 0.5, -0.75, -0.25, 0.25, -0.25, 1.0, 0.25, 1.0, -0.25, -0.5, 0.25, 0.25, 0.75, 0.25, -0.5, 0.25, ]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    compute_pass_encoder1020.popDebugGroup()
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    
    
    buffer104.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline106);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    const array6 = new Float32Array([0.25, 1.0, -0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, 0.5, -0.5, -0.75, -0.5, 1.0, -1.0, 0.5, 0.25, 1.0, 1.0, 0.5, -0.75, -1.0, 1.0, 0.0, 1.0, -1.0, 0.5, 0.25, 0.25, -0.75, -1.0, -1.0, -0.5, 0.0, 0.25, -0.25, 0.75, 0.5, -1.0, -0.5, -0.5, -1.0, 1.0, 1.0, -1.0, 0.75, 0.75, 0.25, 0.25, -0.25, -0.5, -1.0, -1.0, -1.0, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, -0.25, 0.5, -0.75, 0.0, 0.75, 1.0, -1.0, 0.75, 0.5, -0.5, 0.25, -0.75, -1.0, 0.25, 1.0, 0.5, -1.0, 0.0, 0.0, 0.0, 1.0, -0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 0.5, 1.0, -1.0, 1.0, -0.5, -0.25, 0.25, -0.75, 0.0, -0.5, -1.0, 0.75, 0.75, ]);
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout107]
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    command_encoder104.insertDebugMarker("mymarker");
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer107, 0);
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout107]
    });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.end();
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    query102.destroy()
    
    command_encoder104.clearBuffer(buffer107);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer105.destroy()
    buffer107.destroy()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout105]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture103.destroy();
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    query104.destroy()
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout108]
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    query103.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1050.setPipeline(compute_pipeline1016);
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    buffer103.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1012, 0);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_buffer104 = command_encoder104.finish();
    
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline1016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query103.destroy()
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture104.destroy();
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer1013.destroy()
    
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    query104.destroy()
    
    compute_pass_encoder1050.dispatchWorkgroups(100);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout107]
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline102);
    
    
    query100.destroy()
    device20.destroy();
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer106.destroy()
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.pushErrorScope("internal");
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    compute_pass_encoder1030.insertDebugMarker("marker")
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1016.destroy()
    
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    
    compute_pass_encoder1070.setPipeline(compute_pipeline101);
    
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder100.clearBuffer(buffer1012);
    command_encoder106.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    
    
    compute_pass_encoder1020.popDebugGroup()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1017, 0);
    compute_pass_encoder1050.insertDebugMarker("marker")
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1070.insertDebugMarker("marker")
    
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout102]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture500.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1083 = device10.createComputePipeline({
        label: "compute_pipeline1083",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1017, 0, array1, 0, array1.length);
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const compute_pipeline1084 = device10.createComputePipeline({
        label: "compute_pipeline1084",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1070.setBindGroup(0, bind_group106);
    buffer1017.destroy()
    const compute_pipeline1085 = device10.createComputePipeline({
        label: "compute_pipeline1085",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1086 = device10.createComputePipeline({
        label: "compute_pipeline1086",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device80.destroy();
    device50.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const compute_pipeline1087 = device10.createComputePipeline({
        label: "compute_pipeline1087",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1088 = device10.createComputePipeline({
        label: "compute_pipeline1088",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline1089 = device10.createComputePipeline({
        label: "compute_pipeline1089",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1090 = device10.createComputePipeline({
        label: "compute_pipeline1090",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1091 = device10.createComputePipeline({
        label: "compute_pipeline1091",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1092 = device10.createComputePipeline({
        label: "compute_pipeline1092",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline1093 = device10.createComputePipeline({
        label: "compute_pipeline1093",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const compute_pipeline1094 = device10.createComputePipeline({
        label: "compute_pipeline1094",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1095 = device10.createComputePipeline({
        label: "compute_pipeline1095",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const compute_pipeline1096 = device10.createComputePipeline({
        label: "compute_pipeline1096",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer100 = command_encoder100.finish();
    const compute_pipeline1097 = device10.createComputePipeline({
        label: "compute_pipeline1097",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1098 = device10.createComputePipeline({
        label: "compute_pipeline1098",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1099 = device10.createComputePipeline({
        label: "compute_pipeline1099",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline10100 = device10.createComputePipeline({
        label: "compute_pipeline10100",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query104.destroy()
    const compute_pipeline10101 = device10.createComputePipeline({
        label: "compute_pipeline10101",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline10102 = device10.createComputePipeline({
        label: "compute_pipeline10102",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query900.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline10103 = device10.createComputePipeline({
        label: "compute_pipeline10103",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline10104 = device10.createComputePipeline({
        label: "compute_pipeline10104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    buffer1019.destroy()
    
    const compute_pipeline10105 = device10.createComputePipeline({
        label: "compute_pipeline10105",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10106 = device10.createComputePipeline({
        label: "compute_pipeline10106",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer108 = command_encoder108.finish();
    const compute_pipeline10107 = device10.createComputePipeline({
        label: "compute_pipeline10107",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline10108 = device10.createComputePipeline({
        label: "compute_pipeline10108",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout106]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline10109 = device10.createComputePipeline({
        label: "compute_pipeline10109",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pipeline10110 = device10.createComputePipeline({
        label: "compute_pipeline10110",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.popDebugGroup()
    const compute_pipeline10111 = device10.createComputePipeline({
        label: "compute_pipeline10111",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const uint32_1070 = new Uint32Array(3);

    uint32_1070[0] = 100;
    uint32_1070[1] = 1;
    uint32_1070[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1070, 0, uint32_1070.length);

    compute_pass_encoder1070.dispatchWorkgroupsIndirect(buffer1020, 0);
    device30.pushErrorScope("internal");
    const compute_pipeline10112 = device10.createComputePipeline({
        label: "compute_pipeline10112",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    device10.queue.writeBuffer(buffer1020, 0, array1, 0, array1.length);
    const compute_pipeline10113 = device10.createComputePipeline({
        label: "compute_pipeline10113",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder106.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    compute_pass_encoder1070.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder1030.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder1050.end();
    compute_pass_encoder1070.end();
    compute_pass_encoder1010.popDebugGroup()
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
    const command_buffer107 = command_encoder107.finish();
    compute_pass_encoder1010.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1023, 0);
    compute_pass_encoder1030.end();
    compute_pass_encoder1020.end();
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer103, command_buffer105, command_buffer106, command_buffer108, ]);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
}