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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const array0 = new Float32Array([-0.25, -0.25, 0.0, -0.5, -1.0, 0.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.5, 1.0, 0.0, -0.75, -1.0, -0.5, -0.5, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, -0.75, 0.75, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, 1.0, -0.25, 1.0, 0.5, 0.5, 0.25, -0.5, 0.75, -1.0, 0.5, -1.0, -1.0, -0.25, 0.25, 0.0, 1.0, 0.25, -1.0, 0.75, -0.5, 0.5, -0.75, 0.25, -0.25, -1.0, -0.75, 0.5, 0.25, 0.5, 1.0, -0.25, -0.5, 1.0, -0.25, 1.0, 0.0, -0.25, -1.0, 0.75, -0.5, -0.5, 1.0, 0.0, 1.0, 0.75, 0.5, -1.0, -0.25, -0.5, 1.0, 1.0, 1.0, 0.25, 1.0, -0.5, 0.5, 1.0, -1.0, -1.0, 0.5, 0.25, -0.25, -1.0, 0.75, -0.5, -0.25, -0.25, 0.75, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.pushErrorScope("out-of-memory");
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
    command_encoder100.insertDebugMarker("mymarker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    command_encoder100.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array1 = new Float32Array([0.75, 1.0, 1.0, -1.0, -0.75, 0.5, -0.75, -0.5, -1.0, -0.25, -1.0, -0.5, 0.0, -0.25, -0.25, -0.25, 1.0, -0.5, -0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 0.75, -0.25, -1.0, 0.25, 0.75, -1.0, -0.75, -0.75, -1.0, -0.75, 0.5, 1.0, -0.75, 0.75, 0.25, -0.75, 0.25, -0.5, -0.25, -0.5, 1.0, 0.0, 1.0, 0.25, 0.25, -0.5, 0.75, -1.0, -0.75, 0.5, 0.5, 0.0, -0.25, 1.0, -0.75, -0.5, 0.5, -1.0, 0.75, -0.25, -0.5, 0.5, -0.25, -0.25, -1.0, 0.5, -0.5, 0.25, 0.5, -1.0, 1.0, 0.5, 0.75, -0.5, 1.0, -1.0, 0.5, 0.0, -0.5, 0.75, 0.5, -0.75, -0.75, -0.25, 0.5, -1.0, 0.25, -0.25, -1.0, -0.25, -0.25, 1.0, -1.0, 0.75, 0.0, -1.0, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    buffer100.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    query100.destroy()
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer100, ]);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    device00.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer101.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture101.destroy();
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer103 = command_encoder103.finish();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder200.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer103, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer103, 0);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    compute_pass_encoder1020.setPipeline(compute_pipeline108);
    device40.pushErrorScope("internal");
    const command_buffer201 = command_encoder201.finish();
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    buffer202.destroy()
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    buffer201.destroy()
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
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
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    compute_pass_encoder1010.end();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder105.insertDebugMarker("mymarker");
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    buffer401.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer400.destroy()
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_bundle_encoder400.setPipeline(render_pipeline402);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder1050.setPipeline(compute_pipeline1017);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
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
    query400.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    command_encoder101.popDebugGroup()
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder202.popDebugGroup();
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
    const command_buffer400 = command_encoder400.finish();
    
    
    
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
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    command_encoder104.clearBuffer(buffer103);
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.75, -0.25, 0.5, 0.25, -0.75, -1.0, -0.5, 0.5, -0.75, 1.0, -0.5, 0.75, -0.75, 0.25, 0.75, -1.0, -0.25, -0.25, 0.5, 0.25, 0.75, 0.25, -0.75, 0.0, 0.25, -0.25, -0.75, 1.0, 0.75, -1.0, -0.5, 0.5, 0.25, 0.5, 0.75, -1.0, -0.25, -0.25, 0.5, -0.5, -0.5, -0.75, -0.25, 0.0, -0.75, -0.75, 0.0, 0.0, -0.5, 0.25, 0.25, -0.25, 0.0, -1.0, 0.75, 0.5, -0.25, -0.25, 0.0, 0.75, -0.5, -0.75, -0.75, 0.25, 0.25, 1.0, -0.75, -0.5, -0.75, -0.5, 0.0, -0.5, -0.5, -1.0, 1.0, -0.5, 0.25, 0.75, 0.0, -0.5, -0.25, -0.5, -0.75, 0.5, 0.0, 0.75, 0.5, 0.5, -0.75, -1.0, 1.0, -0.25, -0.75, -0.5, 0.5, 1.0, 0.0, 0.5, 0.25, -0.75, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder202.setVertexBuffer(0, buffer202);
    
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder104.insertDebugMarker("mymarker");
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    buffer203.destroy()
    const command_buffer104 = command_encoder104.finish();
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    device40.queue.submit([command_buffer400, ]);
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
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
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    
    buffer205.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder202.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder201.setPipeline(render_pipeline201);
    device20.queue.submit([command_buffer201, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder402.setPipeline(render_pipeline406);
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    texture201.destroy();
    render_bundle_encoder202.draw(3);
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.finish();
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    buffer204.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer103.destroy()
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2020.popDebugGroup()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const array3 = new Float32Array([0.0, 0.0, 0.5, 0.25, -0.5, 0.25, -0.5, -0.5, -0.25, -0.75, 0.75, -1.0, 0.75, -0.5, 0.5, 0.0, 1.0, 1.0, -0.25, 1.0, -1.0, -0.5, -0.5, -0.75, -1.0, 0.25, -1.0, 0.0, -0.5, -0.25, -0.5, -0.25, 0.0, 0.25, -0.25, 0.0, -0.75, 0.75, -0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -0.5, -0.5, 1.0, 0.75, -0.75, 0.25, 0.25, -0.75, 0.5, -0.25, 0.5, -0.5, 0.0, -0.25, 1.0, 0.25, 0.75, -1.0, 0.5, 0.0, 0.25, 0.25, 0.25, -1.0, -0.5, 1.0, -0.25, -0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.25, -0.75, -0.5, -0.75, 0.5, -1.0, -0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.5, 0.5, -0.5, 0.75, 0.75, ]);
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device40.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    texture204.destroy();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1050.insertDebugMarker("marker")
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
    
    
    render_bundle_encoder101.popDebugGroup();
    
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.popDebugGroup();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device50.pushErrorScope("internal");
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
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture202.destroy();
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.setPipeline(compute_pipeline201);
    compute_pass_encoder1050.insertDebugMarker("marker")
    buffer209.destroy()
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer206.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
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
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setVertexBuffer(0, buffer202);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer107.destroy()
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    buffer301.destroy()
    const compute_pipeline1083 = device10.createComputePipeline({
        label: "compute_pipeline1083",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1084 = device10.createComputePipeline({
        label: "compute_pipeline1084",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.draw(3);
    const compute_pipeline1085 = device10.createComputePipeline({
        label: "compute_pipeline1085",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    buffer106.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
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
    
    
    const compute_pipeline1086 = device10.createComputePipeline({
        label: "compute_pipeline1086",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    compute_pass_encoder2020.setPipeline(compute_pipeline202);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    device30.destroy();
    query100.destroy()
    compute_pass_encoder1011.setPipeline(compute_pipeline1016);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline1087 = device10.createComputePipeline({
        label: "compute_pipeline1087",
        layout: pipeline_layout108,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline1088 = device10.createComputePipeline({
        label: "compute_pipeline1088",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline1089 = device10.createComputePipeline({
        label: "compute_pipeline1089",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group203);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1090 = device10.createComputePipeline({
        label: "compute_pipeline1090",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1091 = device10.createComputePipeline({
        label: "compute_pipeline1091",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer2012.destroy()
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group204);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer104, ]);
    command_encoder102.popDebugGroup()
    compute_pass_encoder2030.end();
    const command_buffer102 = command_encoder102.finish();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
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
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group104);
    compute_pass_encoder2020.dispatchWorkgroups(100);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline1017.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group105);
    compute_pass_encoder2020.end();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    const command_buffer202 = command_encoder202.finish();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1015, 0);
    compute_pass_encoder1050.popDebugGroup()
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2018, 0);
    compute_pass_encoder2000.end();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1011.end();
    device20.queue.submit([command_buffer202, ]);
    const command_buffer203 = command_encoder203.finish();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1050.end();
    const command_buffer105 = command_encoder105.finish();
    const command_buffer200 = command_encoder200.finish();
    device10.queue.submit([command_buffer105, ]);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
}