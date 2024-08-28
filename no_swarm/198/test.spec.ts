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
    
    const array0 = new Float32Array([0.25, -0.75, -0.5, -0.5, 1.0, 0.0, -0.5, -0.25, 1.0, -0.25, 0.25, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, 0.25, 0.75, 0.5, -0.5, -0.5, -0.5, 0.75, -0.75, -1.0, 0.75, 1.0, 0.75, 0.0, -1.0, 1.0, 0.5, 0.75, 1.0, -0.5, 0.5, -0.5, -1.0, 1.0, -0.5, 1.0, -0.25, 0.5, 1.0, -0.25, -1.0, -0.5, -0.75, -0.25, 0.0, 0.25, -0.75, -1.0, -1.0, -1.0, 0.25, 0.5, 0.25, -0.75, 0.5, -0.75, -0.5, 0.25, 0.75, -0.5, 0.0, 0.25, 0.0, -0.25, 0.25, 0.5, -0.25, -0.5, 0.25, -0.75, -0.75, -1.0, -0.75, 0.75, 0.5, -1.0, 0.5, -0.75, -0.5, 0.5, -0.75, -1.0, -0.5, 0.5, 0.25, 0.25, -1.0, 0.0, -0.25, 1.0, 0.0, 0.75, -0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([0.0, 1.0, -0.75, -0.5, -0.25, -0.5, 0.0, 1.0, 1.0, -0.5, -1.0, 0.0, 0.25, -0.75, 0.75, 1.0, -0.5, -0.25, 1.0, -1.0, 1.0, -0.25, -0.25, 1.0, 1.0, 0.5, -1.0, -0.5, -0.25, 0.0, 0.5, 0.5, -0.5, -1.0, -0.75, 1.0, 0.75, -1.0, 0.5, -1.0, -0.25, 0.25, -1.0, 0.5, 0.25, -1.0, 0.75, -1.0, 0.0, -0.75, 0.5, -0.5, 0.75, -0.75, -0.75, -0.75, 0.5, 1.0, -1.0, -1.0, 0.75, -1.0, 0.75, 0.0, 1.0, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, 1.0, -1.0, 0.75, -0.25, 0.25, 0.25, 0.5, -1.0, 0.0, 0.75, -1.0, 1.0, -0.25, 1.0, -0.25, -0.5, 0.0, 0.0, -0.5, 0.25, -0.75, 0.0, 0.25, -1.0, 0.5, 0.25, 1.0, -0.5, -1.0, ]);
    
    
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device00.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    query101.destroy()
    
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    query100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    
    
    command_encoder100.popDebugGroup()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    query101.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
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
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([0.25, 0.25, 0.5, -0.25, 0.75, 0.75, -0.25, 0.5, 0.25, -0.75, 0.75, 0.75, -0.25, -1.0, -0.5, 0.25, -0.5, -0.75, 1.0, -0.75, -0.5, -0.75, 0.5, 0.0, 1.0, -0.25, -1.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.75, -0.75, 0.0, 0.75, -0.75, -0.25, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, 1.0, 1.0, -0.75, 0.25, -0.25, -1.0, -0.25, -0.25, 0.0, 0.0, 0.75, 0.5, 0.25, -0.25, 0.0, -0.25, 0.5, -0.75, 1.0, -0.5, 0.5, 0.0, -0.25, -0.5, 0.0, -1.0, -1.0, 1.0, 0.75, 1.0, -0.25, 0.0, -1.0, -0.25, 0.5, -0.5, 1.0, 0.75, -0.5, 0.75, -0.5, -1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.25, 0.25, -0.75, 0.25, 0.0, 1.0, 1.0, 0.25, 0.75, ]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
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
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query100.destroy()
    
    
    texture100.destroy();
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device40.destroy();
    
    compute_pass_encoder1000.setPipeline(compute_pipeline105);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    buffer100.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    query101.destroy()
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
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1020.setPipeline(compute_pipeline1016);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.submit([command_buffer101, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
        layout: compute_pipeline105.getBindGroupLayout(0),
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
    buffer103.destroy()
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.popDebugGroup()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer105, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer105, 0);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const command_buffer104 = command_encoder104.finish();
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_buffer103 = command_encoder103.finish();
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.end();
    query101.destroy()
    render_bundle_encoder100.popDebugGroup();
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
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    command_encoder100.popDebugGroup()
    buffer102.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer104, ]);
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
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
        layout: compute_pipeline1016.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    buffer107.destroy()
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder1060.setPipeline(compute_pipeline1015);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query100.destroy()
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1011, 0);
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
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
    
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.setPipeline(compute_pipeline1030);
    buffer200.destroy()
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    const array3 = new Float32Array([0.75, 0.0, 0.75, -0.75, -0.5, -0.5, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.0, 1.0, -1.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.5, -0.75, -0.5, -0.25, 0.25, 0.75, -0.5, 0.25, -0.25, 0.0, -0.5, 0.5, 0.0, 0.75, -0.25, -0.75, 0.5, 0.0, -0.5, 1.0, 0.5, -1.0, 0.25, -0.5, -0.75, 0.5, 1.0, 1.0, -1.0, 0.5, -0.75, 0.5, 0.0, 1.0, -0.25, 0.0, 0.5, 1.0, 0.0, -0.5, 1.0, 0.0, -1.0, 0.25, -1.0, 0.75, 0.75, -0.5, 0.0, -0.75, -0.5, -0.75, -0.75, 0.25, 0.0, -0.5, 0.75, -0.5, -0.75, -0.25, -0.5, -0.75, 1.0, -0.25, -0.5, -0.75, 0.75, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, -0.75, -0.5, -0.75, -0.5, 1.0, -0.5, 0.5, ]);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline1030.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group104);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1011, 0, array1, 0, array1.length);
    texture200.destroy();
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    buffer1014.destroy()
    buffer1010.destroy()
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    const compute_pipeline1083 = device10.createComputePipeline({
        label: "compute_pipeline1083",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    query102.destroy()
    
    
    
    const compute_pipeline1084 = device10.createComputePipeline({
        label: "compute_pipeline1084",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1085 = device10.createComputePipeline({
        label: "compute_pipeline1085",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1086 = device10.createComputePipeline({
        label: "compute_pipeline1086",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    buffer104.destroy()
    const compute_pipeline1087 = device10.createComputePipeline({
        label: "compute_pipeline1087",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1088 = device10.createComputePipeline({
        label: "compute_pipeline1088",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1089 = device10.createComputePipeline({
        label: "compute_pipeline1089",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1090 = device10.createComputePipeline({
        label: "compute_pipeline1090",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    const compute_pipeline1091 = device10.createComputePipeline({
        label: "compute_pipeline1091",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1092 = device10.createComputePipeline({
        label: "compute_pipeline1092",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    const compute_pipeline1093 = device10.createComputePipeline({
        label: "compute_pipeline1093",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1094 = device10.createComputePipeline({
        label: "compute_pipeline1094",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query101.destroy()
    const compute_pipeline1095 = device10.createComputePipeline({
        label: "compute_pipeline1095",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1096 = device10.createComputePipeline({
        label: "compute_pipeline1096",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1097 = device10.createComputePipeline({
        label: "compute_pipeline1097",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1098 = device10.createComputePipeline({
        label: "compute_pipeline1098",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline1099 = device10.createComputePipeline({
        label: "compute_pipeline1099",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline10100 = device10.createComputePipeline({
        label: "compute_pipeline10100",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    const compute_pipeline10101 = device10.createComputePipeline({
        label: "compute_pipeline10101",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([0.5, 0.25, 0.0, 1.0, -0.25, -1.0, 0.0, 0.5, -0.25, -0.5, 0.25, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.5, 0.75, 0.0, 0.25, -1.0, -0.25, 0.5, 0.0, -0.5, 0.0, 0.5, 1.0, 0.0, 1.0, -0.5, 0.75, -0.25, 0.5, 0.75, 0.25, -0.25, -0.75, -0.75, 0.5, -0.5, 1.0, -0.75, 0.25, -1.0, 0.5, -0.75, 0.75, 0.0, 0.0, -0.5, -1.0, 0.25, -0.5, 1.0, 0.5, -0.5, 0.0, -1.0, 0.25, 0.75, 0.5, 0.25, -1.0, 0.75, -1.0, 0.0, 0.25, -1.0, 0.5, 0.25, 1.0, -0.75, 0.25, -0.25, 1.0, 0.75, -0.5, -1.0, 0.5, -0.75, -0.75, 1.0, 0.5, 0.5, 1.0, 0.5, 0.75, 1.0, 0.5, -0.5, 0.75, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 0.0, ]);
    const compute_pipeline10102 = device10.createComputePipeline({
        label: "compute_pipeline10102",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
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
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1016, 0);
    const compute_pipeline10103 = device10.createComputePipeline({
        label: "compute_pipeline10103",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture101.destroy();
    const compute_pipeline10104 = device10.createComputePipeline({
        label: "compute_pipeline10104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline10105 = device10.createComputePipeline({
        label: "compute_pipeline10105",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline10106 = device10.createComputePipeline({
        label: "compute_pipeline10106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    buffer1013.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const compute_pipeline10107 = device10.createComputePipeline({
        label: "compute_pipeline10107",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline10108 = device10.createComputePipeline({
        label: "compute_pipeline10108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10109 = device10.createComputePipeline({
        label: "compute_pipeline10109",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    buffer1015.destroy()
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    const compute_pipeline10110 = device10.createComputePipeline({
        label: "compute_pipeline10110",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10111 = device10.createComputePipeline({
        label: "compute_pipeline10111",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline10112 = device10.createComputePipeline({
        label: "compute_pipeline10112",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10113 = device10.createComputePipeline({
        label: "compute_pipeline10113",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10114 = device10.createComputePipeline({
        label: "compute_pipeline10114",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10115 = device10.createComputePipeline({
        label: "compute_pipeline10115",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10116 = device10.createComputePipeline({
        label: "compute_pipeline10116",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10117 = device10.createComputePipeline({
        label: "compute_pipeline10117",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10118 = device10.createComputePipeline({
        label: "compute_pipeline10118",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    const compute_pipeline10119 = device10.createComputePipeline({
        label: "compute_pipeline10119",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10120 = device10.createComputePipeline({
        label: "compute_pipeline10120",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    
    
    
    const compute_pipeline10121 = device10.createComputePipeline({
        label: "compute_pipeline10121",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1016, 0, array0, 0, array0.length);
    buffer108.destroy()
    const compute_pipeline10122 = device10.createComputePipeline({
        label: "compute_pipeline10122",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
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
    
    const compute_pipeline10123 = device10.createComputePipeline({
        label: "compute_pipeline10123",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10124 = device10.createComputePipeline({
        label: "compute_pipeline10124",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1016, 0, array3, 0, array3.length);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
        powerPreference: "high-performance"
    });
    const compute_pipeline10125 = device10.createComputePipeline({
        label: "compute_pipeline10125",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    compute_pass_encoder1050.setPipeline(compute_pipeline10103);
    const compute_pipeline10126 = device10.createComputePipeline({
        label: "compute_pipeline10126",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query200.destroy()
    
    const compute_pipeline10127 = device10.createComputePipeline({
        label: "compute_pipeline10127",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline10128 = device10.createComputePipeline({
        label: "compute_pipeline10128",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10129 = device10.createComputePipeline({
        label: "compute_pipeline10129",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1016, 0, array3, 0, array3.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    
    const compute_pipeline10130 = device10.createComputePipeline({
        label: "compute_pipeline10130",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline10131 = device10.createComputePipeline({
        label: "compute_pipeline10131",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
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
    const compute_pipeline10132 = device10.createComputePipeline({
        label: "compute_pipeline10132",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10133 = device10.createComputePipeline({
        label: "compute_pipeline10133",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    compute_pass_encoder1050.insertDebugMarker("marker")
    const compute_pipeline10134 = device10.createComputePipeline({
        label: "compute_pipeline10134",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    const compute_pipeline10135 = device10.createComputePipeline({
        label: "compute_pipeline10135",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline10136 = device10.createComputePipeline({
        label: "compute_pipeline10136",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10137 = device10.createComputePipeline({
        label: "compute_pipeline10137",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    const compute_pipeline10138 = device10.createComputePipeline({
        label: "compute_pipeline10138",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    const compute_pipeline10139 = device10.createComputePipeline({
        label: "compute_pipeline10139",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    const compute_pipeline10140 = device10.createComputePipeline({
        label: "compute_pipeline10140",
        layout: pipeline_layout108,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    const compute_pipeline10141 = device10.createComputePipeline({
        label: "compute_pipeline10141",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline10142 = device10.createComputePipeline({
        label: "compute_pipeline10142",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query103.destroy()
    const compute_pipeline10143 = device10.createComputePipeline({
        label: "compute_pipeline10143",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    
    const compute_pipeline10144 = device10.createComputePipeline({
        label: "compute_pipeline10144",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline10145 = device10.createComputePipeline({
        label: "compute_pipeline10145",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline10146 = device10.createComputePipeline({
        label: "compute_pipeline10146",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10147 = device10.createComputePipeline({
        label: "compute_pipeline10147",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline10103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group106);
    const compute_pipeline10148 = device10.createComputePipeline({
        label: "compute_pipeline10148",
        layout: pipeline_layout109,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline10149 = device10.createComputePipeline({
        label: "compute_pipeline10149",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10150 = device10.createComputePipeline({
        label: "compute_pipeline10150",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1021, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1050.end();
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline1015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group107);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    compute_pass_encoder1001.popDebugGroup()
    command_encoder105.popDebugGroup()
    compute_pass_encoder1001.end();
    compute_pass_encoder1060.end();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer106 = command_encoder106.finish();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([command_buffer105, ]);
}