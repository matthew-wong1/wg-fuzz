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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    device00.pushErrorScope("validation");
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer000.destroy()
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const array0 = new Float32Array([-0.5, 0.5, 1.0, -0.75, -0.75, 0.25, 0.5, -0.5, -0.75, 0.0, 1.0, -0.25, -0.25, -0.5, -0.75, 0.5, 0.5, -0.5, 1.0, 0.5, -1.0, 0.25, -0.75, 0.75, 0.25, -0.25, -0.5, -0.5, -0.25, 1.0, 0.75, 0.75, 0.5, -0.25, -0.5, 0.5, 0.5, -0.75, 1.0, -0.5, 1.0, 0.75, 0.5, 0.75, 0.75, -0.25, 0.25, 1.0, 0.75, 0.25, -0.5, -0.25, -0.5, -0.5, 0.75, -0.5, 0.0, -0.25, 1.0, -0.5, -1.0, 1.0, 0.0, -0.5, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 0.0, -0.5, -1.0, 0.5, 0.75, 0.0, -0.75, 0.25, 0.25, -0.5, 0.5, -1.0, -1.0, 1.0, 0.75, -1.0, -0.25, -0.75, -0.5, 0.75, 0.25, -0.75, 1.0, -1.0, 0.25, 0.0, 1.0, -0.5, -1.0, 1.0, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array1 = new Float32Array([0.75, 0.5, 0.5, 0.25, 1.0, -0.25, 0.75, -0.75, -1.0, 0.75, 0.5, -0.5, -0.25, -0.75, 0.75, 0.5, -0.75, -0.5, -0.25, 1.0, 0.25, 0.0, 0.75, 0.75, -1.0, 0.75, 0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -0.75, 1.0, 0.0, -0.5, 1.0, 0.25, 0.25, -0.5, -0.75, -0.25, -0.75, 1.0, 0.5, 0.0, 1.0, -1.0, -0.25, -0.5, 0.75, -0.5, 0.0, 0.75, 0.75, -0.5, -0.5, -0.5, 0.25, 1.0, -0.75, -0.75, -0.5, 0.0, -0.75, 0.5, 1.0, 0.75, 0.0, -0.5, -0.75, -0.75, 0.75, -0.5, 0.75, -1.0, -0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 1.0, -0.5, 0.5, -0.25, -0.75, -0.25, -0.25, -1.0, -0.75, -0.5, -0.5, -0.25, -1.0, -0.25, 0.25, -1.0, 0.0, -1.0, ]);
    
    device20.pushErrorScope("internal");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, ]);
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    texture300.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture201.destroy();
    query001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
    
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
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture000.destroy();
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array2 = new Float32Array([-0.25, 1.0, 0.25, 1.0, -1.0, 0.75, -0.25, -0.5, 0.5, 0.75, -1.0, -0.5, -0.25, 0.0, 0.0, 0.75, -0.25, 0.5, -0.25, 0.75, 1.0, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, 0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.5, -1.0, 0.75, -1.0, 0.0, 0.25, -1.0, 0.75, 0.75, -0.25, 0.0, -0.5, 0.75, -0.5, -0.5, 0.75, 0.25, 0.5, 0.25, 1.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.5, 1.0, -1.0, 0.25, -1.0, -0.25, 1.0, 1.0, -1.0, -1.0, 0.5, -1.0, -1.0, 0.25, 1.0, 0.25, 1.0, 0.25, 1.0, -0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.75, 0.5, -0.75, -0.5, 1.0, 1.0, 0.25, 0.5, 0.25, 0.25, -0.75, 1.0, 0.5, 1.0, -0.25, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const array3 = new Float32Array([-1.0, 0.25, 0.75, 0.75, 0.75, -0.75, 0.25, 0.25, 1.0, -0.75, 1.0, 0.0, 0.25, 0.75, 0.25, 0.5, -0.5, -0.25, 0.75, -0.25, -0.25, 0.25, 0.25, 0.75, -1.0, -1.0, 1.0, -1.0, 0.0, 1.0, 0.5, -0.25, 0.75, 0.0, -0.25, 0.75, 1.0, -1.0, 0.25, 0.25, 1.0, -0.5, -0.75, 0.5, -0.5, 0.0, -0.25, -0.25, 1.0, 0.5, 0.25, -0.75, 0.5, 0.5, 1.0, -0.75, -0.25, 0.5, 0.0, 0.0, 1.0, -0.25, -0.75, -1.0, 0.0, -0.25, 0.0, -0.5, 0.5, -0.25, 0.5, 0.0, 0.75, -0.5, 0.75, -0.75, -0.75, -0.5, 0.5, -0.75, 0.0, -0.5, 0.25, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, 0.5, 0.5, -0.25, -0.25, -0.75, 1.0, 0.25, 0.25, -0.5, -0.25, 1.0, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    texture002.destroy();
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query003.destroy()
    buffer200.destroy()
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    command_encoder002.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
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
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_buffer201 = command_encoder201.finish();
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const array4 = new Float32Array([-0.25, 0.0, -0.25, 0.75, -1.0, -0.5, -0.75, 0.5, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, -0.75, -0.25, -0.5, -0.5, 0.75, 1.0, -0.75, 0.0, -0.75, 0.25, -1.0, -1.0, -1.0, -0.25, 0.0, 0.25, -0.5, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.75, -0.75, 0.75, -0.75, 1.0, 0.5, -0.5, 0.5, -0.25, -0.75, -0.5, -0.5, 0.5, -0.75, 0.75, 0.0, 0.0, -0.75, 1.0, -1.0, -0.25, 0.0, 0.0, -0.75, 0.5, 0.0, 0.0, 0.75, 0.0, 0.0, 0.5, -0.5, 0.5, 0.75, -0.75, -0.5, 0.25, -0.75, -0.25, 1.0, -0.75, 0.75, -0.5, -0.75, -1.0, 0.5, -0.25, 1.0, -0.25, 0.75, 1.0, 0.0, 0.0, 0.75, 0.5, -0.5, 0.0, -0.25, -0.5, -0.75, 0.75, -0.75, -0.75, ]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const array5 = new Float32Array([0.25, 0.0, -0.5, 0.0, 0.5, 1.0, 0.25, -1.0, -0.25, -1.0, 1.0, -0.25, 1.0, 0.75, 0.0, 1.0, -1.0, 1.0, -0.75, 1.0, 0.25, 0.25, 0.0, 0.0, 0.25, 0.5, 1.0, -0.25, -0.75, -1.0, -0.5, 0.5, -0.5, 1.0, 0.25, 0.75, 0.5, 1.0, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, -0.75, 0.25, 1.0, 1.0, 0.5, 0.25, -0.5, 0.75, -0.75, -0.75, 0.75, -0.25, 1.0, 0.25, 0.25, -0.75, 0.25, 1.0, -0.25, -0.75, 1.0, 0.75, 0.75, 0.0, -0.5, 0.5, 0.75, -1.0, -0.5, 0.75, -0.75, 0.75, -0.5, -0.25, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, -0.75, -1.0, -0.25, -0.75, 0.25, -0.75, 1.0, 0.75, 0.5, 1.0, 0.25, -0.75, 0.5, -0.25, -0.75, 0.0, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    texture200.destroy();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    texture202.destroy();
    query004.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.pushErrorScope("internal");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    buffer001.destroy()
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query200.destroy()
    render_bundle_encoder200.popDebugGroup();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer002.destroy()
    compute_pass_encoder0010.popDebugGroup()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0030.executeBundles([])
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder700.insertDebugMarker("marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query700.destroy()
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    query005.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    buffer203.destroy()
    
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device00.pushErrorScope("validation");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder204.pushDebugGroup("mygroupmarker")
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder203.clearBuffer(buffer201);
    buffer003.destroy()
    device20.queue.submit([command_buffer201, ]);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    texture203.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device40.pushErrorScope("internal");
    query400.destroy()
    command_encoder204.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    buffer004.destroy()
    
    render_pass_encoder0020.executeBundles([])
    
    render_pass_encoder2030.setStencilReference(1);
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0050.setPipeline(compute_pipeline006);
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
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
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
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    query001.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer402.destroy()
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    query001.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer007, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer007, 0);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.popDebugGroup();
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    query200.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    query004.destroy()
    query005.destroy()
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.popDebugGroup()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query002.destroy()
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    command_encoder204.insertDebugMarker("mymarker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    query000.destroy()
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    query000.destroy()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query700.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query701.destroy()
    command_encoder204.popDebugGroup()
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query401.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_buffer204 = command_encoder204.finish();
    
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
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.popDebugGroup();
    command_encoder701.clearBuffer(buffer700);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    
    compute_pass_encoder0000.popDebugGroup()
    
    query400.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
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
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query401.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    query006.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder701.clearBuffer(buffer700);
    query003.destroy()
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    query007.destroy()
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder0000.end();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    command_encoder000.popDebugGroup()
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
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group002);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
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

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer702 = command_encoder702.finish();
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
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    compute_pass_encoder2020.end();
    const command_buffer001 = command_encoder001.finish();
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    compute_pass_encoder2000.end();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    device70.queue.submit([command_buffer702, ]);
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    const command_buffer202 = command_encoder202.finish();
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
}