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
        powerPreference: undefined
    });
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    
    
    const command_buffer000 = command_encoder000.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.pushErrorScope("validation");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    query002.destroy()
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query001.destroy()
    
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    query000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
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
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query000.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    buffer000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0010.setStencilReference(1);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder0011.setStencilReference(1);
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query001.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0011.setStencilReference(1);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setPipeline(render_pipeline001);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    
    texture000.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder0020.setPipeline(compute_pipeline007);
    query002.destroy()
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    query002.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_buffer200 = command_encoder200.finish();
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0010.popDebugGroup();
    
    
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device10.pushErrorScope("validation");
    device20.queue.submit([command_buffer200, ]);
    
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    texture003.destroy();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline007.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    command_encoder001.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.executeBundles([])
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0021.setPipeline(render_pipeline000);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
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
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline003);
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0011.popDebugGroup();
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer003.destroy()
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_pass_encoder0031.setStencilReference(1);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group001);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0011.insertDebugMarker("marker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder0031.setPipeline(render_pipeline003);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const command_buffer002 = command_encoder002.finish();
    
    render_bundle_encoder000.setPipeline(render_pipeline004);
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer004.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setStencilReference(1);
    
    texture200.destroy();
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group002);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setStencilReference(1);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0031.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    texture201.destroy();
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group003);
    render_pass_encoder0011.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder204.insertDebugMarker("mymarker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder2030.insertDebugMarker("marker")
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    query100.destroy()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0031.setStencilReference(1);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout005]
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    render_pass_encoder2020.executeBundles([])
    texture001.destroy();
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.submit([command_buffer002, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_pass_encoder0010.setVertexBuffer(0, buffer0010);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query300.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2040.setStencilReference(1);
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline002);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0030.setStencilReference(1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout005]
    });
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
        occlusionQuerySet: query200
    });
    texture302.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    
    render_pass_encoder0011.insertDebugMarker("marker");
    
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    
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
    
    device00.pushErrorScope("internal");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer0011.destroy()
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const array0 = new Float32Array([0.25, 0.0, 1.0, -0.75, -0.25, 0.75, -0.5, -0.25, -0.25, 0.5, -0.5, 0.0, 0.0, -1.0, 0.0, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.75, 0.75, 0.75, 1.0, -0.75, -1.0, -0.5, 0.0, 0.0, -0.25, 0.5, 0.25, 0.5, -0.25, -0.25, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.25, 0.25, 0.25, 0.75, -1.0, 0.5, -1.0, -1.0, 0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 0.0, 0.5, 0.0, -0.25, -0.5, 0.75, -0.5, -1.0, 0.5, 0.0, -0.75, 1.0, 0.5, 0.75, -0.25, -0.25, 0.25, 1.0, -0.5, 0.75, 1.0, -0.75, -1.0, 0.25, 0.5, 1.0, 0.0, 0.25, -1.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.5, 0.5, 0.5, 0.5, 0.25, -0.25, 0.75, -1.0, -0.5, ]);
    command_encoder201.insertDebugMarker("mymarker");
    texture301.destroy();
    
    
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2030.beginOcclusionQuery(0)
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder0011.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setVertexBuffer(0, buffer006);
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
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query002.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout005]
    });
    buffer201.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder201.setPipeline(render_pipeline200);
    query202.destroy()
    render_pass_encoder2040.insertDebugMarker("marker");
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    query201.destroy()
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    const array1 = new Float32Array([0.0, 0.0, -1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -0.75, -0.75, 0.25, -0.25, -1.0, 0.0, 1.0, -0.75, -0.5, -0.75, 1.0, 0.5, -1.0, -0.75, 0.5, -0.5, -1.0, 0.75, -1.0, 0.0, -0.25, -0.25, 0.5, -1.0, 1.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.25, -0.5, 0.0, -0.75, -0.75, 0.25, -0.75, -1.0, -0.5, 0.25, 0.75, -1.0, 0.75, -0.5, 0.5, -0.25, -1.0, -1.0, -0.5, -0.25, -0.75, 0.75, -1.0, 0.75, 0.75, 0.75, -0.75, 0.5, 0.75, 0.25, 1.0, 0.75, -0.5, 1.0, 0.25, 0.5, 0.0, -0.75, 0.0, 0.75, -0.25, 0.25, -0.25, -0.25, -0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -0.25, -0.75, 1.0, 0.75, 0.5, 0.0, 0.75, 1.0, -0.5, 0.0, -0.25, 1.0, ]);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group005);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder0011.draw(3);
    command_encoder203.insertDebugMarker("mymarker");
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder202.popDebugGroup();
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder300.popDebugGroup()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2041.setPipeline(render_pipeline200);
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout006]
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder003.clearBuffer(buffer0013);
    
    texture000.destroy();
    render_pass_encoder2040.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
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

    render_pass_encoder2041.setBindGroup(0, bind_group200);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder0031.setVertexBuffer(0, buffer0015);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder0032.setPipeline(render_pipeline003);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group007);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0020.setVertexBuffer(0, buffer0013);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0010.end();
    command_encoder202.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder2041.setVertexBuffer(0, buffer200);
    render_pass_encoder2010.setVertexBuffer(0, buffer204);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0021.setVertexBuffer(0, buffer0010);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    render_pass_encoder0011.end();
    render_pass_encoder2011.setPipeline(render_pipeline200);
    render_pass_encoder2040.setPipeline(render_pipeline200);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
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

    render_pass_encoder2040.setBindGroup(0, bind_group203);
    render_pass_encoder2010.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.end();
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    render_pass_encoder0011.end();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    render_pass_encoder2041.drawIndirect(buffer208, 0);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0030.setVertexBuffer(0, buffer000);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    compute_pass_encoder0020.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2040.setVertexBuffer(0, buffer204);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2030.end();
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder0031.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0011.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.popDebugGroup();
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group008);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2011.endOcclusionQuery()
    const command_buffer203 = command_encoder203.finish();
    device00.queue.submit([command_buffer001, ]);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group205);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2011.setVertexBuffer(0, buffer204);
    render_pass_encoder0030.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0032.setVertexBuffer(0, buffer0011);
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0032.drawIndirect(buffer000, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2041.end();
    render_pass_encoder2040.end();
    render_pass_encoder0032.end();
    render_pass_encoder0031.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder2041.end();
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2011.drawIndirect(buffer208, 0);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2041.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group009);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2011.draw(3);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder0010.draw(3);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2041.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0021.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer209, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder2041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.draw(3);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2040.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.end();
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0011);
    render_pass_encoder0010.draw(3);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0011.draw(3);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2010.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder2040.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.draw(3);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2041.drawIndirect(buffer2013, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    device20.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder0032.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.end();
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder2011.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0010.end();
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2041.end();
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder0032.drawIndirect(buffer0029, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0030, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0032.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0032.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0032.end();
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2040.end();
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0032.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0032.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder2041.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2010.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2040.end();
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndirect(buffer207, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2030.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.draw(3);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder0032.drawIndirect(buffer001, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2014, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2040.drawIndirect(buffer202, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2030.end();
    device10.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2041.end();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0021.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0012);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    compute_pass_encoder2030.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2040.draw(3);
    render_pass_encoder0032.end();
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0011.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2010.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0032, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0032.drawIndirect(buffer005, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndirect(buffer0019, 0);
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2041.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0011.draw(3);
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0032.drawIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0013, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    device00.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer004, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0010.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0032.end();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer007, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0030.draw(3);
    render_pass_encoder2010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2041.draw(3);
    compute_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2040.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0032.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer204, ]);
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2014, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder0032.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0032.draw(3);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2020.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0032.drawIndirect(buffer003, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer005, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0020.endOcclusionQuery()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0032.drawIndirect(buffer0022, 0);
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    device30.queue.submit([]);
    render_pass_encoder2011.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder0032.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2020.draw(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder2020.end();
    render_pass_encoder0032.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0032.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0032.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer207, 0);
    device10.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2041.end();
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0030.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2020.end();
    render_pass_encoder2011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    device10.queue.submit([]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0021.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0039, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    device30.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2040.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2040.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0020.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndexed(3);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder0030.end();
    render_pass_encoder2041.drawIndirect(buffer207, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    render_pass_encoder0032.drawIndirect(buffer0037, 0);
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0032.drawIndirect(buffer0036, 0);
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0021.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    render_pass_encoder0032.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0030.end();
    render_pass_encoder2011.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2041.setIndexBuffer(buffer2011, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2041.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder2040.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0032.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2013, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder0032.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2010, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2030.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2011.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2041.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0031.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0017);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0034, 0);
    render_pass_encoder0032.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2041.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0031, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2041.end();
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.end();
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    device30.queue.submit([]);
    render_pass_encoder0032.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2041.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder2041.drawIndirect(buffer2014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0032.drawIndirect(buffer0046, 0);
    render_pass_encoder0032.end();
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0031.drawIndirect(buffer0037, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0036, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2040.end();
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder2040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0019, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2040.drawIndexed(3);
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0032.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0032.drawIndirect(buffer0036, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0014, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0032.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0032.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2040.end();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.end();
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0032.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder2041.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2013, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    device20.queue.submit([]);
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2040.end();
    render_pass_encoder0032.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2030.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0049, 0);
    render_pass_encoder2041.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder0032.drawIndirect(buffer0030, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder0030.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0042, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer205, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0020, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0031.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2041.drawIndirect(buffer2013, 0);
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    device30.queue.submit([]);
    render_pass_encoder2040.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder2030.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2040.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder2040.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0032.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    render_pass_encoder0032.drawIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.end();
    render_pass_encoder2020.end();
    render_pass_encoder2030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0032.end();
    device30.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.end();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    device20.queue.submit([]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexed(3);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.end();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2011.end();
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder0032.drawIndirect(buffer0030, 0);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2030.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.drawIndirect(buffer207, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0032.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0032.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2041.end();
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0032.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0021);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0030.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0059,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0022);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder2040.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.end();
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0029, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder2041.drawIndirect(buffer2012, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2041.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0032.end();
    render_pass_encoder2040.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2041.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.drawIndirect(buffer207, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0061,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0023);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0012, 0);
    device20.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder2020.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer2014, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2041.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2010.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0063, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder2041.drawIndirect(buffer204, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer005, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0064, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder2041.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0032.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.end();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    render_pass_encoder2041.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder0011.drawIndirect(buffer0063, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0062, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer000, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0032.drawIndirect(buffer0048, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
}