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
    const array0 = new Float32Array([0.0, 1.0, 0.5, 0.75, 0.75, 0.5, -1.0, 0.75, -0.5, -1.0, 0.0, 0.75, 0.75, -0.25, 0.5, 0.25, 1.0, -1.0, 0.0, -0.75, 0.0, -0.25, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, -1.0, 0.0, 0.5, 0.75, 1.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.75, 0.0, -0.5, 0.0, 0.5, 0.75, -1.0, -1.0, -1.0, 0.25, -1.0, 0.0, 1.0, -0.25, -0.75, 0.0, 0.25, 0.75, -0.25, -0.75, -1.0, -0.25, 0.5, -1.0, 0.75, 0.0, 1.0, -0.75, 0.0, -0.75, -1.0, -0.75, 0.75, 1.0, 0.0, 1.0, -0.5, -0.25, 0.75, -0.75, -1.0, 1.0, 1.0, -0.5, -0.5, 0.0, -0.75, -1.0, 0.5, 0.75, -0.5, -0.75, -1.0, 0.75, -0.75, 0.5, -1.0, -0.25, -1.0, 0.0, 0.25, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-0.25, -1.0, -0.75, -1.0, -0.75, -0.5, 1.0, 0.75, -1.0, 0.5, -0.25, -0.5, 1.0, -0.75, -0.5, -1.0, 0.25, -0.25, 0.75, -1.0, -0.75, -0.75, 0.5, -0.75, 0.25, 0.75, -0.25, 1.0, -0.5, -0.25, -0.25, 0.0, -0.75, 0.5, 0.0, -1.0, -0.5, -0.5, -0.5, -0.25, -0.75, 0.25, -1.0, 0.0, -0.5, 1.0, 0.5, 0.25, 0.0, -0.5, -1.0, 0.5, 0.75, 0.25, -0.25, -0.25, 0.5, -0.75, -1.0, -1.0, -1.0, 0.75, -0.5, 0.25, -0.25, 0.25, 1.0, -0.5, -0.5, -0.75, -0.25, 0.75, -0.5, -0.75, -0.75, -0.75, 0.75, -0.75, 1.0, 0.25, -0.25, 0.75, -0.25, -0.5, 0.5, -1.0, -0.5, -1.0, 1.0, 0.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.25, 0.0, 0.75, 0.0, -0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const array2 = new Float32Array([0.5, -0.25, -0.25, 0.75, 0.25, -0.25, -0.5, 0.5, 0.5, 0.0, -0.75, -0.25, -1.0, 0.0, -0.25, 0.5, -0.75, 0.5, -1.0, 1.0, -1.0, 0.25, 1.0, 0.25, 0.0, -0.25, -0.75, -0.75, 0.5, 1.0, 0.0, 0.75, -1.0, -0.25, 0.5, -0.25, 1.0, -0.75, -1.0, -0.5, 0.75, 1.0, 0.25, -0.75, 0.75, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, 0.25, 0.5, 1.0, -0.5, 0.5, -0.25, 0.75, 0.75, -0.25, 0.0, 0.5, -0.75, 0.25, 0.5, -0.25, -1.0, -0.25, -0.25, 0.0, -0.25, 0.75, 0.25, -1.0, -0.75, 0.25, 0.75, 0.5, 0.0, -0.25, 1.0, 0.5, 0.5, 0.0, -1.0, 1.0, -0.75, 0.5, -0.25, 0.75, -0.25, 0.0, 0.25, 0.25, 1.0, -0.75, -0.5, 0.25, 0.25, -0.25, ]);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    texture400.destroy();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device10.pushErrorScope("internal");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    query100.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("validation");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query300.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query300.destroy()
    
    texture100.destroy();
    compute_pass_encoder1020.popDebugGroup()
    
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    texture101.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_buffer300 = command_encoder300.finish();
    
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
    
    render_bundle_encoder100.popDebugGroup();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer102.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_buffer301 = command_encoder301.finish();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    command_encoder302.insertDebugMarker("mymarker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device30.queue.submit([command_buffer301, ]);
    
    const command_buffer302 = command_encoder302.finish();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    
    
    query101.destroy()
    
    render_pass_encoder1030.setStencilReference(1);
    
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout104]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query101.destroy()
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    query300.destroy()
    render_pass_encoder1030.setStencilReference(1);
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    texture300.destroy();
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    compute_pass_encoder2000.popDebugGroup()
    command_encoder106.insertDebugMarker("mymarker");
    const command_buffer105 = command_encoder105.finish();
    
    
    query303.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    compute_pass_encoder1040.setPipeline(compute_pipeline102);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder3030.insertDebugMarker("marker")
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder106.insertDebugMarker("mymarker");
    render_bundle_encoder301.insertDebugMarker("marker");
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
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1030.setPipeline(render_pipeline100);
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
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const array3 = new Float32Array([0.75, 1.0, -0.75, 0.25, -1.0, 1.0, -0.75, 0.75, -0.75, 0.75, 0.5, -0.25, 0.0, 0.75, -0.5, -0.75, -0.25, 0.75, 0.75, -0.75, -0.25, -0.5, 0.25, -0.5, 1.0, -0.75, -0.75, 0.5, 0.75, 0.0, 0.75, -0.75, 0.5, 0.5, -0.25, -0.75, -0.25, 0.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.25, -0.5, 0.5, 0.5, 0.75, -1.0, 1.0, 0.75, -0.5, 0.0, -0.5, 0.75, -0.25, 0.0, 0.0, -0.75, 0.25, 0.25, 0.0, -0.75, -0.75, -0.5, -0.5, -1.0, -0.5, -0.5, 0.0, -0.25, 0.75, -0.25, 0.0, -0.75, -0.25, 0.75, 0.75, 0.75, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, 0.75, -0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 0.25, 0.75, -1.0, -1.0, ]);
    
    compute_pass_encoder1000.setPipeline(compute_pipeline104);
    query200.destroy()
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    device30.pushErrorScope("internal");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer200.destroy()
    
    
    render_pass_encoder1030.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    texture301.destroy();
    
    buffer101.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder301.insertDebugMarker("marker");
    query100.destroy()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer106, 0);
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query101.destroy()
    device10.pushErrorScope("out-of-memory");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const array4 = new Float32Array([0.0, 0.0, -0.75, 0.5, 0.5, 0.25, 0.75, 0.0, 1.0, 0.75, 0.25, 0.25, -0.75, -0.75, 1.0, 1.0, 0.75, -0.75, 0.25, 0.0, 0.0, -0.75, -1.0, 1.0, 0.0, 0.5, -1.0, -1.0, 0.25, 0.75, -0.25, 0.0, 0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 0.5, 0.5, 0.25, 0.0, 0.5, -0.5, -0.75, -0.75, -0.75, 0.75, -1.0, -0.75, -0.75, 0.75, 0.5, -1.0, 0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 0.75, -0.75, 1.0, -1.0, -1.0, 1.0, 0.75, 0.0, 0.0, 0.0, 0.0, 0.75, 0.25, 0.75, 0.25, 0.5, 1.0, 0.75, 0.5, 1.0, -0.25, 0.75, 0.0, -0.25, -1.0, 0.5, 0.5, 0.0, 0.25, 0.25, -0.5, 0.0, 0.0, 1.0, -1.0, 0.25, -0.25, -0.5, 0.5, -0.75, ]);
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder106.clearBuffer(buffer106);
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_pass_encoder1030.insertDebugMarker("marker");
    texture103.destroy();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    buffer201.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    device50.pushErrorScope("out-of-memory");
    buffer104.destroy()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    
    buffer300.destroy()
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    query102.destroy()
    query303.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query103
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
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
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1040.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    query500.destroy()
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline303);
    query301.destroy()
    const array5 = new Float32Array([0.75, 0.0, 0.75, -0.5, -0.75, 0.0, -0.25, -1.0, 1.0, 1.0, 1.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.75, -0.75, -0.5, 0.0, 1.0, 0.75, 0.5, 0.75, 0.25, 1.0, 0.0, -0.25, 0.75, -0.5, -0.25, 0.75, -0.5, 0.25, -0.5, 0.0, 0.25, -0.5, -0.75, 0.25, 1.0, 0.0, 0.5, 0.0, -1.0, -0.5, -1.0, -0.75, -0.75, 0.5, -0.75, -0.5, 0.5, -0.75, 0.0, 0.5, -1.0, -0.25, 0.75, -1.0, -0.75, 1.0, 0.0, 0.5, -0.25, 0.0, 1.0, -0.75, 0.75, 0.25, -0.25, 0.0, -0.5, 1.0, -1.0, -0.75, -0.25, -0.25, -1.0, 0.75, -1.0, -1.0, 0.5, 0.75, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, 1.0, -0.75, 0.5, -0.25, -0.75, 0.0, 0.5, 0.5, 0.5, 0.75, ]);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    query200.destroy()
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    compute_pass_encoder1000.end();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.pushErrorScope("validation");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1060.setPipeline(render_pipeline101);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query100.destroy()
    buffer109.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder200.popDebugGroup();
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    query500.destroy()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    buffer204.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
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
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    query300.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1060.beginOcclusionQuery(0)
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const array6 = new Float32Array([-0.5, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, 1.0, -0.5, -0.75, 1.0, -0.5, 0.75, 0.25, 1.0, -0.5, 0.5, -0.5, -1.0, -1.0, 0.5, -1.0, 0.0, -1.0, -0.5, -0.75, 0.25, 0.75, 0.75, -0.25, -0.75, -0.5, 1.0, -0.5, -1.0, -0.75, -0.75, 0.0, 0.5, 0.5, -0.5, -1.0, -0.25, -0.25, -0.25, 0.25, -0.25, -0.5, -0.5, 0.75, 0.75, -1.0, -0.25, 0.75, -0.25, -0.5, 1.0, 1.0, 1.0, 0.0, 0.75, 0.75, 0.5, 0.75, -0.25, 0.75, 0.5, 0.5, 0.25, -0.5, -1.0, -0.25, -0.75, 0.5, -1.0, 0.75, -0.75, -0.75, 0.25, -0.25, -0.75, -0.75, 1.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.5, -0.5, 1.0, -0.25, -0.5, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, -0.5, ]);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.25, -0.75, 0.75, 0.5, 0.5, -0.5, -0.5, -0.5, -1.0, -0.25, -0.25, -1.0, -0.75, -0.5, -1.0, -1.0, -0.25, 0.25, -0.5, 1.0, -0.25, 0.5, -0.75, 1.0, 0.5, -0.25, 0.0, -0.5, 0.0, -0.75, 0.5, -1.0, 0.25, 0.0, -0.5, 0.0, -1.0, 0.0, -0.5, -0.5, 0.75, -0.25, 0.25, -0.25, 0.5, 0.75, -0.5, -0.5, -1.0, 0.75, -1.0, 0.5, -0.25, -1.0, -0.25, 0.5, -1.0, -0.25, -0.25, 0.75, -1.0, 1.0, -0.5, 0.75, 0.75, 0.75, -0.75, 0.0, 0.75, 0.0, 0.5, -1.0, 0.0, -0.25, 0.0, -0.25, -0.25, -0.5, 0.5, -1.0, -1.0, -0.5, 0.25, -1.0, -0.5, -0.25, 1.0, -0.25, -0.25, -1.0, 0.0, 0.75, -1.0, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, -0.75, ]);
    buffer108.destroy()
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query103
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1070.setPipeline(render_pipeline103);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group104);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture302.destroy();
    texture500.destroy();
    
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group105);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    compute_pass_encoder1040.popDebugGroup()
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
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group300);
    render_pass_encoder1030.popDebugGroup();
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer303, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer303, 0);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    compute_pass_encoder1010.end();
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1021, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group107);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer209, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer105, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1024, 0);
    compute_pass_encoder3030.end();
    compute_pass_encoder2000.end();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group108);
    compute_pass_encoder2010.end();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer303 = command_encoder303.finish();
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, ]);
}