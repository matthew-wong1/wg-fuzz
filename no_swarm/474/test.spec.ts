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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array0 = new Float32Array([0.25, -0.25, 0.25, 0.0, -1.0, 0.75, 0.75, 1.0, -0.75, 0.25, 0.75, -1.0, 0.5, -0.5, 0.0, -0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -1.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, 0.0, 1.0, -0.25, 0.25, 0.25, -0.5, 1.0, 1.0, -0.75, 0.75, 1.0, 1.0, -1.0, 0.25, -0.25, -0.75, 0.75, 0.5, 0.25, 1.0, 0.0, -0.25, 1.0, 0.25, -0.5, 1.0, -0.75, 0.5, 0.5, -0.5, 0.75, 0.0, 0.25, -0.25, 0.75, 0.25, -0.25, -0.25, -0.75, -0.25, -1.0, 0.0, -0.25, 0.25, 0.0, 1.0, -0.75, 0.0, 1.0, -0.5, -0.75, 0.25, 0.25, -0.25, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, -0.5, -0.5, -0.25, 0.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.75, ]);
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const array1 = new Float32Array([-1.0, 0.5, 1.0, -0.5, -0.25, -0.25, 1.0, -1.0, -0.25, 0.5, 0.75, 0.25, -1.0, 0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 0.5, -0.25, -0.5, -0.75, -0.5, -0.75, 0.75, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, 0.75, -1.0, 0.75, -1.0, 1.0, -0.25, -0.75, -0.5, -0.5, -0.5, 0.75, -0.25, 0.5, -0.5, -0.5, 1.0, -0.25, -0.25, 0.75, 0.75, -0.5, -0.5, -0.5, -0.75, 0.25, -0.75, 1.0, 0.0, 0.0, -0.5, -0.5, -1.0, -0.75, 0.75, -0.5, 0.0, -0.25, -1.0, 0.5, -0.25, -1.0, 1.0, -0.5, -0.5, -0.75, 1.0, -0.25, 0.25, 0.0, 0.5, -1.0, 0.75, -1.0, 0.25, 0.25, -1.0, -0.75, -0.5, -0.25, 0.0, -0.75, -0.75, 0.25, -1.0, 1.0, -0.75, 0.5, -1.0, ]);
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const command_buffer101 = command_encoder101.finish();
    
    const command_buffer102 = command_encoder102.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.pushErrorScope("out-of-memory");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    buffer100.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
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
    
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
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
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query101.destroy()
    buffer104.destroy()
    
    device40.destroy();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    const array2 = new Float32Array([1.0, 1.0, -0.75, 0.0, -0.75, 0.75, 0.75, 0.0, 1.0, 0.75, -0.75, -0.25, 0.25, 0.5, -0.75, -0.5, 0.0, 0.75, -0.25, -0.75, -0.75, -0.5, -0.5, 0.0, 0.0, 0.5, -0.25, 0.75, -1.0, 0.0, -0.5, -1.0, 0.5, 0.25, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -0.25, 1.0, 0.5, -0.25, 0.75, 0.5, 0.25, 0.5, 0.75, 0.75, -0.25, 0.0, 0.25, 0.0, 0.0, 0.25, 0.75, -0.75, 1.0, -0.5, 0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.5, -0.5, -0.5, -0.25, -0.75, 0.75, 0.0, 0.5, 0.5, -0.5, -0.25, -0.75, 0.25, 0.0, 0.75, -0.5, -1.0, 0.75, 0.75, -0.25, -0.5, 0.25, -0.25, 0.0, -1.0, -0.5, 0.75, 0.0, 0.75, 0.25, 0.75, -0.75, -1.0, 0.75, ]);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    query102.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.popDebugGroup()
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    buffer101.destroy()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer103.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    texture100.destroy();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1030.setPipeline(render_pipeline100);
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer108, 0);
    render_pass_encoder1030.insertDebugMarker("marker");
    texture101.destroy();
    buffer105.destroy()
    
    buffer106.destroy()
    
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1030.insertDebugMarker("marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer108.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer102.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.end();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const array3 = new Float32Array([-0.25, 0.25, -0.5, 0.75, 1.0, -1.0, 0.75, 0.0, 0.5, -0.25, -1.0, -1.0, -0.5, 1.0, -0.5, 0.0, -0.25, 1.0, -0.75, 0.0, 0.75, 0.25, -0.75, 1.0, 1.0, 0.5, 1.0, 0.5, 0.5, 0.25, -0.75, -0.75, 1.0, 1.0, -0.75, 0.5, -0.25, -0.75, 0.0, -0.75, -0.25, 0.0, 0.0, -0.5, -0.75, 0.75, 0.5, 0.25, 0.25, -0.75, -0.5, 0.75, 0.5, -0.5, 0.5, -0.75, 0.25, 0.25, -0.75, -0.25, 0.25, 0.5, 0.25, 0.5, -0.25, -0.25, 1.0, -0.75, -0.25, 0.75, 0.5, -0.25, 0.5, -0.75, 0.5, 0.0, 0.75, 0.75, 0.0, 0.5, 0.25, 1.0, 0.25, -0.5, 0.75, 0.0, 0.0, 0.25, -0.25, -0.25, -1.0, 0.0, 0.25, -1.0, 0.25, 0.75, -1.0, -1.0, 0.75, 0.0, ]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    query103.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query100.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.popDebugGroup();
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1030.setStencilReference(1);
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    query100.destroy()
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
    query100.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([1.0, 0.0, 1.0, 0.5, 0.75, 0.75, 0.75, -1.0, 0.0, 0.25, 0.75, 1.0, -0.25, 1.0, 0.0, -0.25, -1.0, -0.5, -0.5, 0.0, 1.0, -0.75, -0.25, -1.0, 0.25, -0.5, -0.25, 1.0, 0.5, -0.5, 0.0, 0.5, -1.0, -0.75, 0.75, -0.5, -0.5, 0.5, -1.0, 0.0, 0.75, 0.75, -0.75, 0.5, 0.0, -0.25, -0.25, 0.5, -1.0, -1.0, 0.0, 0.0, 0.5, 0.75, 0.5, 0.0, -0.75, -0.25, 0.0, -0.25, -1.0, -0.75, 1.0, -0.75, 0.75, -0.25, -0.75, 0.0, 1.0, 0.0, 0.5, -0.5, -1.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.75, -0.25, -0.75, -0.75, -1.0, -0.25, -0.25, 0.75, -0.75, -0.75, 0.75, -1.0, -0.5, 0.5, 1.0, -1.0, 1.0, 0.75, 0.75, 1.0, 0.5, ]);
    query101.destroy()
    query101.destroy()
    
    query100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const array5 = new Float32Array([0.5, 0.75, 0.5, 0.25, -0.25, -0.5, -1.0, -0.75, 0.5, -0.75, -0.25, 1.0, 0.5, -0.25, -1.0, -1.0, -1.0, 0.5, -1.0, -1.0, -0.75, 0.25, 1.0, -0.25, 0.25, -0.25, 0.25, 0.0, 1.0, 0.5, -1.0, -0.25, -0.75, -1.0, 1.0, 0.5, -0.75, -0.25, 0.75, -1.0, 0.0, -1.0, -0.5, 0.5, 0.75, 0.25, -0.25, 1.0, 0.75, 0.75, -0.25, 0.25, -0.5, -0.25, -0.5, -1.0, 0.5, 0.0, -0.75, 1.0, -0.25, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.75, 0.0, -0.5, -0.25, 0.75, 0.5, 0.5, 0.25, 0.5, 1.0, 0.5, -0.75, 0.75, -0.5, 0.5, -0.5, -0.75, -0.5, 0.5, 0.75, -0.75, -0.75, 0.0, -0.5, 0.5, 1.0, 0.5, 0.5, -1.0, -0.75, 0.25, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group103);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer1011.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1050.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1000.setPipeline(render_pipeline100);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const array6 = new Float32Array([0.75, 0.5, -0.5, 0.5, 0.25, 1.0, 0.5, 0.25, 0.75, -0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 0.75, 0.5, -0.25, -1.0, 0.5, -1.0, 0.75, 0.75, 0.5, -1.0, 0.75, 0.25, 0.5, -0.75, 0.5, 0.5, 0.0, 0.5, -0.75, 0.0, 0.0, -0.5, -0.75, 0.25, 1.0, -0.75, 0.0, 0.75, 0.0, 0.25, -0.5, -1.0, -0.75, 1.0, -1.0, -0.75, 0.75, -0.25, 0.25, -1.0, -1.0, -0.5, -0.5, 0.75, 0.75, 0.75, 0.75, -0.75, 0.75, -0.5, -0.25, -1.0, 0.5, 0.5, -0.25, 1.0, 0.0, -1.0, 0.5, -1.0, -0.75, -0.5, 0.25, -0.75, 0.25, 1.0, 0.0, -0.5, -1.0, 1.0, -0.5, 0.0, 1.0, 0.5, -0.5, 0.25, 1.0, -0.5, 0.5, 1.0, -0.75, -0.75, 0.0, 0.75, 1.0, ]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device50.destroy();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    buffer1010.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
    
    buffer107.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    query101.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer1013.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer1014.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group104);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_pass_encoder1000.popDebugGroup();
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer1012.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    query102.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout106]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    
    render_pass_encoder1050.setStencilReference(1);
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group105);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout1011,
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
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group106);
    buffer1015.destroy()
    render_pass_encoder1030.setStencilReference(1);
    command_encoder601.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    texture600.destroy();
    
    
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer1020.destroy()
    render_pass_encoder1060.setPipeline(render_pipeline1012);
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    query102.destroy()
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query101.destroy()
    render_pass_encoder1050.insertDebugMarker("marker");
    command_encoder601.insertDebugMarker("mymarker");
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder6000.popDebugGroup()
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    buffer1019.destroy()
    render_pass_encoder1030.setStencilReference(1);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout106]
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout106]
    });
    query600.destroy()
    render_pass_encoder1060.setStencilReference(1);
    
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query103.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const array7 = new Float32Array([0.0, 1.0, -1.0, 0.5, 0.0, 0.25, -1.0, 0.0, -0.75, 0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 1.0, -0.5, 0.25, -0.25, 0.0, -0.25, -0.5, 0.25, -0.75, 1.0, 0.25, 0.0, 0.5, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.25, -1.0, 0.0, -0.25, 0.0, 1.0, -0.5, 0.25, -1.0, 0.0, 0.5, -0.75, 0.75, 0.0, 0.0, 0.5, 0.0, 0.25, -0.25, -0.25, 0.75, 0.5, 0.75, 0.25, 0.0, -0.75, -0.25, 0.5, 0.5, 0.25, -0.75, -0.75, 0.5, -0.25, 0.75, 0.5, 0.25, 0.75, -0.5, 1.0, -0.25, -0.25, 1.0, 0.75, 0.25, 0.5, 1.0, 0.75, 1.0, 1.0, -0.25, -0.75, -0.5, 1.0, 0.75, -0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 1.0, ]);
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout1019,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout105]
    });
    device60.pushErrorScope("internal");
    command_encoder601.popDebugGroup()
    
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("validation");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_buffer601 = command_encoder601.finish();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder1050.popDebugGroup();
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query103.destroy()
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1060.setStencilReference(1);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout107]
    });
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, ]);
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
        layout: render_pipeline1012.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group107);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder6000.end();
    const command_buffer600 = command_encoder600.finish();
}