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
    const array0 = new Float32Array([-1.0, -0.5, 0.75, 0.25, 0.25, 0.25, 0.25, 1.0, 0.75, -1.0, 1.0, -1.0, 0.25, -0.5, -0.5, 0.5, -0.25, -0.5, 1.0, 0.75, 0.25, -1.0, 0.75, -1.0, -1.0, 0.0, -1.0, 0.75, -0.25, 0.25, 0.5, 0.0, 0.25, -1.0, -0.5, 1.0, 0.25, -1.0, 0.75, -0.75, -1.0, 0.75, 0.25, 0.0, 0.0, -0.5, 1.0, -1.0, -0.75, -0.25, 0.5, 0.25, -0.25, -1.0, -0.25, 0.5, -0.25, -0.25, 0.75, 1.0, -0.5, -0.25, 0.75, 0.75, 0.5, 0.5, -0.5, 0.75, 0.75, 0.5, -1.0, -0.5, 0.75, 0.0, 0.0, 0.75, -0.25, 0.75, 0.5, -1.0, -0.75, -1.0, 1.0, -0.75, 0.75, -0.25, -0.5, -0.5, -0.25, 0.25, -1.0, 0.75, -0.25, 1.0, 0.75, -0.25, -1.0, -0.5, -1.0, 0.25, ]);
    const array1 = new Float32Array([0.0, 0.25, -0.75, 0.0, 1.0, -0.5, 1.0, -1.0, 1.0, 0.0, -1.0, 1.0, 0.5, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, 0.5, -0.5, -1.0, -0.5, 0.0, 0.0, -0.5, 0.75, -0.75, 0.5, 0.0, 0.75, -0.75, 0.75, -1.0, -1.0, 0.75, 0.0, 0.0, 0.5, 0.0, -1.0, 0.5, -0.75, -0.5, -1.0, -0.75, -0.75, 0.75, 1.0, 0.5, 0.25, 0.25, 0.0, -0.75, 0.75, -0.75, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.0, -0.75, 0.0, -1.0, -0.75, 0.75, 0.75, -1.0, 1.0, -1.0, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, 0.75, 1.0, -0.5, 0.75, 1.0, 0.5, 0.75, 0.25, 0.5, -0.5, -1.0, 0.5, 0.0, -1.0, 0.75, -0.25, 0.5, -1.0, -0.5, 0.5, 0.0, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.25, -0.5, -1.0, 0.75, 0.5, 0.0, -0.75, -0.25, -0.75, 0.0, 0.75, -1.0, -0.25, -0.25, 0.0, 0.75, 0.5, 0.75, 0.5, 0.5, 0.0, -0.25, -0.75, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 1.0, -0.5, -1.0, -0.25, -0.25, -1.0, -1.0, 1.0, -0.75, 0.0, 0.5, -0.5, 1.0, 0.25, 1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 0.5, 0.25, -0.25, -0.75, -0.25, -0.75, 0.0, -0.5, -0.25, -0.5, -0.5, 0.25, 1.0, 1.0, -0.75, 0.5, 0.75, -1.0, 0.25, -0.75, -0.5, 0.5, 0.25, 1.0, 0.25, -0.5, 0.5, -0.75, 0.5, 0.75, 1.0, 1.0, 0.75, -1.0, 0.25, 0.75, -0.75, -0.5, -0.5, 0.25, 0.75, 1.0, -0.75, 1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.75, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.25, 1.0, -1.0, -1.0, 1.0, 0.0, 1.0, -0.75, 0.5, -1.0, 0.0, -0.25, -0.5, -0.75, 0.0, -0.75, 0.25, 0.0, -0.5, 0.0, -0.75, -0.25, -1.0, 0.0, -0.25, 0.0, -0.25, 1.0, -1.0, -1.0, -0.75, 0.75, -1.0, -0.75, -0.75, -0.5, 1.0, -0.5, 0.0, 0.5, 0.0, 0.75, -0.5, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, 1.0, 0.75, 0.5, 1.0, 0.5, 0.5, 0.25, 0.25, -0.5, -0.5, 0.5, -0.75, 0.75, -1.0, 0.5, -0.75, -0.25, -1.0, 0.25, -0.5, 1.0, -0.75, -0.75, 0.5, 0.25, -1.0, 0.0, -0.75, 1.0, 0.5, -0.25, -1.0, 1.0, -1.0, -0.5, 0.75, -0.75, 1.0, -1.0, 0.75, -0.75, -0.5, 1.0, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.25, 1.0, 1.0, -0.75, -0.25, 0.5, -0.25, -0.25, 0.5, 0.5, -1.0, 0.5, -0.75, -0.25, 0.25, 0.5, -0.75, 0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 1.0, 0.75, -0.75, 1.0, 1.0, 0.75, -0.5, 0.0, 0.75, 1.0, -0.25, -1.0, -1.0, 0.25, 1.0, -0.25, -0.75, 0.0, -1.0, 0.25, 0.5, -0.5, -0.75, 0.0, -0.75, 1.0, -0.25, -0.25, 1.0, 0.5, -1.0, -0.75, 0.25, 0.75, 0.0, 0.75, -0.25, -0.25, 0.75, -0.5, -0.5, -0.75, -1.0, 0.25, -0.25, 0.25, -0.25, 0.25, -0.25, -0.5, 1.0, -1.0, 0.25, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, -0.5, 0.5, -1.0, 1.0, -0.75, -0.75, 0.75, -0.25, -0.75, 0.5, 1.0, -0.5, 0.5, -0.75, -0.25, 0.75, -0.25, -1.0, ]);
    device00.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    buffer300.destroy()
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.pushErrorScope("validation");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query300.destroy()
    
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
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder300.popDebugGroup();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.destroy();
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    command_encoder301.insertDebugMarker("mymarker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    query300.destroy()
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    render_pass_encoder3020.setStencilReference(1);
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_pass_encoder3020.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer301.destroy()
    
    
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
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.executeBundles([])
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.pushErrorScope("out-of-memory");
    
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    query300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture500.destroy();
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    texture301.destroy();
    
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
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    render_pass_encoder3020.setStencilReference(1);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device50.pushErrorScope("internal");
    render_pass_encoder3020.popDebugGroup();
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device30.pushErrorScope("validation");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    device50.pushErrorScope("internal");
    device70.destroy();
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    texture302.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("validation");
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query300.destroy()
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder3020.setStencilReference(1);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3020.setPipeline(render_pipeline301);
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder3020.setStencilReference(1);
    const array5 = new Float32Array([-0.75, 0.5, -0.5, 0.75, -0.5, -0.5, 0.75, -0.75, -1.0, 0.75, 0.5, 0.75, 0.5, 0.0, -0.5, -0.75, -1.0, 0.0, 1.0, -1.0, -1.0, 0.25, 0.0, 0.0, 0.0, 0.5, -0.5, -1.0, -0.25, 0.5, 0.0, 1.0, 0.25, -0.25, 1.0, 0.75, 0.75, 0.75, 1.0, -0.5, 1.0, 0.5, 0.25, 0.75, 0.0, 1.0, 0.0, 0.75, -0.25, 0.5, -0.75, 0.25, -0.75, 0.5, -0.25, 0.5, 0.25, 0.0, 0.25, -1.0, 1.0, -1.0, 1.0, -0.5, 0.5, -0.75, 0.25, -0.25, 0.0, 0.5, 0.5, 0.25, 0.0, -0.5, 0.75, 1.0, -0.25, -1.0, -1.0, 0.0, -1.0, -1.0, 0.25, 0.75, -0.5, -0.25, 0.25, -0.25, 0.25, 0.75, -0.25, 1.0, -0.5, 0.5, 0.5, -0.75, -0.75, 0.0, 0.25, -1.0, ]);
    command_encoder303.pushDebugGroup("mygroupmarker")
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    buffer502.destroy()
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline301);
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    
    query500.destroy()
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline508);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group300);
    texture303.destroy();
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([-0.25, 1.0, 1.0, -0.25, 0.5, 1.0, 0.0, 0.25, 0.5, -0.75, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, -1.0, -0.25, -1.0, 0.0, 1.0, 0.75, -1.0, -0.5, 0.25, -0.75, -0.25, -1.0, 1.0, -0.75, 1.0, -0.25, 0.5, -0.5, -0.25, 0.0, -0.75, 0.0, 0.25, -0.75, 0.75, -0.5, -0.75, 1.0, 0.25, -1.0, -0.75, 0.5, -1.0, -0.5, -0.5, 0.75, 0.5, -1.0, 1.0, -0.5, -0.75, 0.5, -0.75, 1.0, -0.5, 0.5, 0.25, 0.0, -0.25, 0.75, 1.0, -1.0, -0.25, 0.25, -0.75, 0.0, -0.25, 1.0, -0.25, -0.25, 0.5, 0.75, -0.25, 1.0, -0.75, 1.0, 1.0, -1.0, -0.5, 1.0, -1.0, 0.5, 0.0, -1.0, 0.0, 0.75, -0.75, 0.0, 0.25, -0.75, -0.75, 0.75, 0.25, 0.0, ]);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group501);
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder3030.setStencilReference(1);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer504.destroy()
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    
    const command_buffer501 = command_encoder501.finish();
    
    render_pass_encoder3020.popDebugGroup();
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setStencilReference(1);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout504]
    });
    buffer600.destroy()
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout507,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const bind_group_layout507 = device50.createBindGroupLayout({ 
        label: "bind_group_layout507",
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
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer306.destroy()
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    
    
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer503.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer308.destroy()
    
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout504]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout506]
    });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3030.setStencilReference(1);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout506]
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group303);
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array7 = new Float32Array([0.5, -0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 0.5, 0.0, 1.0, 0.75, -1.0, -0.75, 0.25, 0.75, -0.25, 1.0, -1.0, 1.0, -0.75, -0.5, -0.75, 0.0, 0.5, 0.25, 0.5, 1.0, 0.0, 0.75, 0.75, 0.5, 0.5, 1.0, 0.25, 0.25, 0.0, 1.0, 1.0, -0.5, -0.5, 0.75, 0.25, 1.0, -0.25, 0.25, 0.75, 0.75, 0.25, 0.5, -1.0, 0.5, 0.0, 0.0, 0.0, -0.5, 0.25, -0.75, -0.5, -1.0, -0.75, -1.0, -0.25, 0.25, 0.75, 1.0, -1.0, 0.25, -1.0, -1.0, 0.5, 0.75, -0.25, -1.0, 1.0, 1.0, -0.75, 0.75, 1.0, -1.0, -0.75, -0.25, -0.75, 0.0, 0.75, -1.0, 0.75, 1.0, 0.75, -1.0, 0.25, -1.0, -0.75, -0.5, 0.0, 0.25, 0.25, -1.0, -0.25, 0.25, -1.0, ]);
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout505]
    });
    
    
    
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setPipeline(render_pipeline303);
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.insertDebugMarker("marker");
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group304);
    
    
    const array8 = new Float32Array([0.0, -1.0, -1.0, -0.25, 0.0, 1.0, -1.0, 0.75, -0.75, -0.5, -0.5, 0.0, 0.25, -0.25, 1.0, 0.75, 0.25, 0.0, -1.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.25, 0.75, 0.5, 0.25, 0.0, 0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.5, 0.25, -1.0, 0.25, 0.0, 0.75, 0.25, -0.5, -0.75, 0.75, 0.75, 0.75, -0.5, 1.0, -0.5, 1.0, 0.25, -1.0, -0.5, -0.25, 1.0, 0.0, -1.0, 0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 0.0, -0.25, 0.0, 0.25, 1.0, 0.5, -0.25, 0.75, 0.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.0, -0.5, -0.25, 0.25, -0.25, -0.75, 0.25, 0.75, -0.25, 0.5, 0.5, -1.0, 0.25, 0.0, 1.0, -0.75, 0.25, -0.75, -0.5, 0.75, 1.0, 0.5, ]);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group305);
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout507,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setStencilReference(1);
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout506,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline508.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer507, 0);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.end();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder3020.popDebugGroup();
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}