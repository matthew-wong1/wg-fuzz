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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const array0 = new Float32Array([-0.5, -1.0, 0.5, -0.5, 0.5, -1.0, 0.0, 0.75, 0.25, 1.0, -0.25, 0.0, 0.25, 1.0, 0.5, -0.75, 1.0, 0.25, 0.5, -0.25, -0.25, -0.25, -0.25, 0.75, 1.0, -1.0, 0.5, -1.0, 0.25, 1.0, -0.75, 0.5, 0.0, -1.0, 0.0, 0.5, 1.0, -0.25, -0.5, -1.0, 0.5, 0.75, 0.0, -0.25, 0.0, -0.25, -0.25, 0.25, 0.25, -0.5, -0.75, -0.25, -0.5, -1.0, 0.75, 0.0, 0.25, -0.75, -0.5, 0.5, 0.5, 0.5, 0.75, -1.0, 0.5, -0.25, 1.0, 0.75, -0.75, -0.25, 0.75, -0.25, -0.5, 0.5, -0.75, 0.5, 1.0, -1.0, 0.0, 0.5, 0.75, 0.75, -0.75, -1.0, 0.0, 0.25, -0.5, 0.0, -0.75, 1.0, 0.0, 0.25, 0.5, -0.25, 0.0, -1.0, 0.0, -0.25, -0.5, 1.0, ]);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("validation");
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([-1.0, 0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, 0.25, -0.25, 1.0, -0.5, 0.5, -1.0, 0.0, -1.0, 0.5, 1.0, -0.25, -0.5, -1.0, -0.5, 0.75, -0.75, -0.5, -0.25, 0.5, 0.75, 0.0, 0.25, -0.25, 0.5, -0.5, -0.75, -0.5, 0.25, 0.5, 0.5, -1.0, 0.0, 0.0, 0.5, 0.5, -0.5, -0.25, -0.75, -0.75, -0.5, 0.5, -1.0, -0.75, 0.25, 1.0, 0.0, 1.0, -1.0, 0.75, -1.0, -1.0, -1.0, 0.25, -0.5, 0.25, 0.5, 0.0, -0.5, 0.25, -1.0, 0.0, 0.25, -0.25, 1.0, -0.25, 0.0, 0.5, -0.5, 0.5, 0.75, 0.5, -0.25, -0.25, -0.5, 0.25, 1.0, -0.5, 1.0, 0.0, -1.0, 1.0, -0.25, -0.5, 1.0, 0.5, -0.75, 0.75, 1.0, 1.0, 0.25, ]);
    
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    buffer200.destroy()
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
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device20.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer300.destroy()
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer301.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
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
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder3030.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const array2 = new Float32Array([0.25, -0.25, 0.75, 0.25, -0.25, -1.0, 0.5, -0.25, -0.75, -0.5, 0.25, -0.5, 0.5, -0.5, 0.0, 0.75, 0.0, 0.5, 0.0, -0.25, 0.75, 1.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.0, 0.5, -0.5, -0.5, 1.0, 0.0, 1.0, 0.5, -1.0, -1.0, 0.25, -0.25, -0.25, 0.75, -0.5, 0.25, -0.25, 0.5, 0.25, 0.5, -0.5, -0.25, -0.75, 1.0, -0.5, 0.5, -1.0, -0.25, -0.25, 1.0, -1.0, 0.75, 0.0, 1.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.5, -0.75, -0.5, 0.0, 0.25, -0.25, -0.5, -0.25, -0.75, 1.0, 0.75, -0.25, 0.0, -0.5, 0.0, 0.25, 1.0, 0.0, -0.5, -0.25, -0.5, -0.75, -0.75, 0.5, -1.0, 0.5, 1.0, -0.75, 0.75, 0.5, -0.25, 0.75, -0.25, -0.5, ]);
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
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
    query100.destroy()
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer304.destroy()
    texture300.destroy();
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    texture100.destroy();
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
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer305, 0);
    
    texture301.destroy();
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    buffer307.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer302.destroy()
    buffer308.destroy()
    
    const array3 = new Float32Array([0.25, -0.75, -0.25, -0.5, 0.75, -0.5, -0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -0.5, 0.0, -1.0, -0.5, 1.0, 0.0, -1.0, 1.0, -0.25, 0.0, -0.5, -0.25, 1.0, 0.25, 0.75, 0.5, 0.5, -0.75, -1.0, -0.5, -0.5, -0.75, 0.0, -0.75, 0.25, -0.75, 1.0, -0.25, 0.25, 0.25, -0.25, -1.0, 0.0, -0.25, -1.0, -0.75, -1.0, 0.75, 0.0, 1.0, 0.0, -0.5, 0.75, -1.0, 0.75, 0.75, 0.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.75, -0.25, 1.0, 0.5, -1.0, -0.5, -0.25, -0.5, 0.5, -0.5, 0.5, -1.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.5, 0.5, -0.75, 1.0, 0.0, -0.5, -0.25, -0.5, -0.75, -0.75, 1.0, 1.0, 0.25, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    render_pass_encoder3030.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer306.destroy()
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3030.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder300.popDebugGroup();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer309.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer303.destroy()
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query300.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3030.popDebugGroup();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_pass_encoder3030.insertDebugMarker("marker");
    buffer305.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    texture101.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3020.popDebugGroup()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    texture302.destroy();
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder3030.setStencilReference(1);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder102.setPipeline(render_pipeline101);
    buffer100.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    texture304.destroy();
    texture303.destroy();
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer3010.destroy()
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    compute_pass_encoder3010.popDebugGroup()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    render_pass_encoder3030.popDebugGroup();
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group302);
    const command_buffer104 = command_encoder104.finish();
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    buffer3011.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-1.0, -0.5, 0.0, -1.0, 1.0, 0.75, -0.25, 0.5, -0.25, -0.75, 0.75, 0.0, -0.75, 0.5, -1.0, 0.25, 0.5, -0.75, 0.5, -1.0, 0.0, 0.0, -0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 0.25, 1.0, 1.0, 0.0, -1.0, 1.0, 0.5, 0.75, 0.0, -0.25, 0.5, 0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.75, 0.0, -1.0, 1.0, -0.5, 1.0, 0.5, 1.0, 0.5, 1.0, -0.25, -1.0, 1.0, 0.0, -1.0, -0.5, 0.0, -0.25, 0.25, 0.5, -0.75, 0.25, -0.25, 0.0, -0.25, -0.75, -0.75, 1.0, 0.25, 0.0, 0.25, -0.25, -0.75, 1.0, 0.75, 1.0, 0.5, 1.0, -0.5, -0.25, -0.5, 0.25, 0.0, 0.75, -0.25, 0.25, 0.0, 1.0, -0.75, 0.75, -0.75, 0.5, -0.75, 0.25, 0.75, ]);
    
    const array5 = new Float32Array([0.25, -0.75, 0.75, 0.0, -0.5, -0.5, -0.75, 0.0, 0.75, -0.5, -0.25, -0.25, -1.0, 1.0, -0.25, 0.75, -0.75, -1.0, -0.75, 0.25, 0.25, 0.5, -0.75, 0.25, 0.25, -1.0, 1.0, -0.5, -0.5, -1.0, 1.0, 1.0, -1.0, -1.0, 0.25, -1.0, 0.25, 0.0, -0.5, -0.75, 0.75, 0.75, 0.75, -0.75, -1.0, 0.0, -0.25, -0.5, -0.75, -0.75, -1.0, 0.25, 0.5, 0.0, -1.0, 0.5, 0.0, 1.0, 0.25, 0.25, 0.0, -0.25, -1.0, 0.0, -0.75, 0.25, -0.75, -0.75, 1.0, 0.5, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.0, -0.75, 0.5, 0.25, -1.0, 0.75, -0.75, -0.5, -1.0, -0.5, 0.75, 0.5, 0.5, -0.25, -1.0, -1.0, 0.5, 0.75, 0.0, 0.0, -1.0, -0.25, 0.75, 0.5, ]);
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.end();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query303
    });
    buffer3013.destroy()
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer108, 0);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder101.clearBuffer(buffer108);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder3020.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    buffer107.destroy()
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    compute_pass_encoder1030.popDebugGroup()
    render_bundle_encoder302.setPipeline(render_pipeline301);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    query302.destroy()
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    render_pass_encoder3020.setPipeline(render_pipeline300);
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    buffer3015.destroy()
    query303.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.dispatchWorkgroups(100);
    query100.destroy()
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group304);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    render_pass_encoder3020.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.drawIndirect(buffer108, 0);
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder3020.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group103);
    query301.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group305);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    device10.pushErrorScope("validation");
    
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group306);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query302.destroy()
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
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
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query302
    });
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query302.destroy()
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query303.destroy()
    device30.pushErrorScope("out-of-memory");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer3019.destroy()
    
    
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
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1013, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3040.setPipeline(render_pipeline300);
    compute_pass_encoder1030.end();
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group307);
    compute_pass_encoder1010.popDebugGroup()
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder1020.end();
    const command_buffer305 = command_encoder305.finish();
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder3000.end();
    compute_pass_encoder3010.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder3010.end();
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
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
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    command_encoder103.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer101 = command_encoder101.finish();
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([command_buffer301, ]);
}