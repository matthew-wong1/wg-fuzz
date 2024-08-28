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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device20.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    texture100.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder101.insertDebugMarker("mymarker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const command_buffer401 = command_encoder401.finish();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    texture400.destroy();
    render_pass_encoder1010.insertDebugMarker("marker");
    device50.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const command_buffer102 = command_encoder102.finish();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device40.pushErrorScope("internal");
    texture101.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    texture102.destroy();
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    texture103.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    const array0 = new Float32Array([-0.75, 1.0, -0.75, -0.5, 0.0, 1.0, 0.0, -1.0, 0.75, 0.5, 0.25, 0.0, 0.25, 0.25, 0.5, 0.25, -0.5, -0.25, -0.25, 0.75, 0.25, 0.75, 0.5, -0.5, -1.0, 0.25, 0.75, -0.25, 0.25, 1.0, -1.0, 0.0, 1.0, 0.5, 0.75, -0.25, -1.0, 1.0, -1.0, 0.5, -0.5, -1.0, 1.0, -0.25, -1.0, 0.5, -0.75, -0.25, -0.25, -0.75, -0.5, -1.0, -0.5, -0.5, 0.25, 0.5, -1.0, -0.5, -0.75, -0.25, -1.0, 0.0, -0.5, -0.25, -0.75, -0.5, 0.0, 0.5, 0.0, 0.0, 0.25, -1.0, -0.25, -0.5, -1.0, -1.0, -1.0, -0.5, 0.5, 0.5, -1.0, 0.0, -0.5, -0.75, 1.0, 0.0, 0.5, 0.5, 0.5, -0.5, -0.75, -0.75, 0.5, -0.5, -0.5, -0.25, -0.25, 0.0, -1.0, 0.5, ]);
    device10.queue.submit([command_buffer102, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder1010.executeBundles([])
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1010.setStencilReference(1);
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
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
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    query400.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array1 = new Float32Array([0.0, -0.5, -0.5, 0.75, 0.0, -0.5, 0.75, 0.0, 0.5, -0.5, -0.5, 0.75, -0.25, 0.5, 0.25, 0.75, -0.75, -0.25, -0.75, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -1.0, 1.0, -0.5, -1.0, 0.5, 0.75, 0.0, 1.0, -0.25, -0.25, 0.75, 1.0, 1.0, -0.5, -1.0, -0.25, 0.75, 0.0, -1.0, -0.5, 0.0, -1.0, 0.25, 0.25, 0.0, -0.25, 1.0, 0.25, -0.25, 0.5, 0.5, -1.0, -1.0, -0.25, -0.25, -1.0, 0.0, 1.0, 0.75, 0.25, 0.5, -0.5, -1.0, 0.0, -0.5, -0.25, 1.0, 0.25, 0.0, 1.0, -0.25, -0.75, -1.0, 0.0, 1.0, -1.0, 0.5, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.75, -0.5, -1.0, 0.5, 1.0, -1.0, -0.5, -0.25, ]);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
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
    
    command_encoder402.clearBuffer(buffer400);
    buffer100.destroy()
    
    command_encoder402.insertDebugMarker("mymarker");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    command_encoder402.clearBuffer(buffer400);
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
    texture105.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder1010.setStencilReference(1);
    command_encoder402.insertDebugMarker("mymarker");
    query100.destroy()
    const command_buffer402 = command_encoder402.finish();
    
    
    
    
    
    
    
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder1000.insertDebugMarker("marker")
    query401.destroy()
    compute_pass_encoder1000.popDebugGroup()
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout403]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    query600.destroy()
    device60.pushErrorScope("internal");
    texture601.destroy();
    query100.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    texture600.destroy();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    query100.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    device10.pushErrorScope("out-of-memory");
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
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder600.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder102.popDebugGroup();
    
    
    render_pass_encoder1010.setStencilReference(1);
    
    
    
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    query100.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    buffer401.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    render_bundle_encoder601.insertDebugMarker("marker");
    
    command_encoder104.insertDebugMarker("mymarker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer600.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    device40.queue.submit([command_buffer401, ]);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
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
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
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
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    query101.destroy()
    render_bundle_encoder601.popDebugGroup();
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    query402.destroy()
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device60.queue.submit([command_buffer600, ]);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    query100.destroy()
    device70.destroy();
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline1013);
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout407,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    const array2 = new Float32Array([0.25, -0.75, 0.5, -0.5, 0.5, -1.0, -0.5, -0.5, 0.0, 0.75, -0.75, 0.75, 0.5, -1.0, 1.0, 0.25, -0.5, -0.25, -0.75, 0.25, -1.0, 0.0, -1.0, 0.5, 1.0, 0.5, -0.5, -1.0, -0.5, 1.0, -1.0, 0.25, -1.0, 0.0, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.25, 1.0, -0.5, -0.75, 1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 0.5, 0.75, 0.5, -1.0, -0.75, -0.25, -0.75, -0.75, 1.0, -0.5, -0.25, -1.0, 0.0, 0.25, -0.75, 0.0, 0.5, -0.25, 0.5, -0.75, -1.0, 0.5, -0.5, 0.0, -0.25, -0.25, -0.25, -0.75, 0.75, -0.25, -1.0, -1.0, -0.25, -1.0, 0.75, 0.25, -0.5, 1.0, 0.5, -0.5, 0.25, 0.25, -0.25, -0.25, -0.5, -0.25, 0.25, ]);
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query600.destroy()
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
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
        layout: compute_pipeline1013.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group100);
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query600.destroy()
    
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout406,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query403.destroy()
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout403,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
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
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout403,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.setPipeline(render_pipeline405);
    render_bundle_encoder600.insertDebugMarker("marker");
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    device60.destroy();
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout406,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    query100.destroy()
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module4011_code = "";
    try {
        shader_module4011_code = await fs.readFile(__dirname + '/shader_module4011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4011 = await device40.createShaderModule({ label: "shader_module4011", code: shader_module4011_code })
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    query404.destroy()
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout408,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module4012_code = "";
    try {
        shader_module4012_code = await fs.readFile(__dirname + '/shader_module4012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4012 = await device40.createShaderModule({ label: "shader_module4012", code: shader_module4012_code })
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout400,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout404,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    const command_buffer403 = command_encoder403.finish();
    const command_buffer400 = command_encoder400.finish();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer105, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer105, 0);
    compute_pass_encoder1030.end();
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    device40.queue.submit([command_buffer403, ]);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer400, ]);
    command_encoder103.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer402, ]);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
}