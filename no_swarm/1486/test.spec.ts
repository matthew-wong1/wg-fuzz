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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array0 = new Float32Array([-0.75, 0.5, 0.75, 1.0, 1.0, 0.25, 0.5, 0.0, 0.25, 0.25, 0.5, 0.0, -1.0, 0.25, 0.75, 1.0, 1.0, -0.25, 0.0, -0.25, -1.0, -0.25, 1.0, -0.5, -1.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.0, 0.75, 0.0, -0.5, -0.5, -0.5, -0.25, -1.0, 0.5, -0.25, 0.5, 0.25, 0.5, 0.25, 0.5, -0.5, 0.25, -0.75, 0.75, 0.0, -0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 0.5, 0.75, -0.25, 1.0, 0.75, -0.25, 0.25, 0.5, -0.5, 0.75, -0.5, -0.75, -0.75, 1.0, 1.0, -0.5, -1.0, -0.25, 0.75, 0.0, 1.0, 0.25, 0.75, 0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 0.25, 0.25, 0.25, -0.25, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, -1.0, 0.5, ]);
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder001.popDebugGroup();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    device00.pushErrorScope("validation");
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer004, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer004, 0);
    command_encoder000.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    texture001.destroy();
    buffer004.destroy()
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    device00.pushErrorScope("internal");
    buffer002.destroy()
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.pushDebugGroup("mygroupmarker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer005.destroy()
    texture005.destroy();
    const array1 = new Float32Array([1.0, 0.25, 0.5, 0.5, -1.0, -0.75, 0.0, 0.25, -0.25, -0.75, -1.0, 0.0, 0.0, -0.5, -0.5, -0.75, 0.75, 0.0, -1.0, -0.5, 0.5, -0.25, -0.5, -1.0, 0.0, 0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.75, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, 0.5, 0.25, -0.25, -0.5, -1.0, 0.5, 0.25, 0.5, 0.25, -0.25, 0.5, 0.75, -0.25, -0.25, 0.75, 0.25, -1.0, 0.0, 0.25, -0.25, 0.0, 0.75, 0.0, 0.0, 0.75, -0.75, -1.0, -0.5, 0.5, -0.25, 0.5, -0.25, -0.75, 0.75, 0.5, 0.75, 0.5, 0.0, 0.75, 1.0, 0.5, 1.0, 0.75, 0.25, 1.0, -0.5, 0.5, 0.5, 1.0, 0.75, 0.75, -0.75, 1.0, 0.75, -0.5, 0.75, 0.75, 1.0, -0.5, 0.75, ]);
    command_encoder000.popDebugGroup()
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    buffer001.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture004.destroy();
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.executeBundles([])
    command_encoder003.clearBuffer(buffer006);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder001.popDebugGroup()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture006
        },
        {
            buffer: buffer004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder0000.executeBundles([render_bundle_encoder001, ])
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
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
    compute_pass_encoder0030.setPipeline(compute_pipeline0011);
    
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const array2 = new Float32Array([-0.25, 0.25, 0.75, -0.75, 0.5, 0.5, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, 0.5, -1.0, -0.75, -0.75, 0.25, -0.5, 0.75, 0.5, 0.5, 0.75, 0.5, 0.5, -0.25, -0.75, -0.25, -1.0, 0.0, -0.75, -1.0, -0.5, -1.0, -0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 1.0, -1.0, 0.5, -0.5, -0.5, 0.5, 0.75, 1.0, 1.0, 1.0, -1.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.75, -0.25, 0.25, -0.5, -0.5, -0.5, 0.75, 0.25, -0.5, 1.0, 0.25, 1.0, 0.0, 0.5, 0.25, 0.0, -0.5, -0.75, 1.0, 0.75, 0.75, 0.5, -0.75, -1.0, -0.5, 1.0, -0.5, 0.25, -0.75, 0.0, 0.0, -0.5, 0.25, -0.75, -0.25, -0.5, -0.75, -0.5, 0.75, 0.75, 0.75, 0.25, 1.0, -1.0, 0.75, ]);
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    const array3 = new Float32Array([0.25, -0.5, 0.0, -0.5, 0.25, 0.5, 0.5, 0.5, 1.0, 0.5, -0.25, -1.0, -0.25, 0.25, 0.75, 1.0, 0.0, 0.75, 0.5, -1.0, -0.5, 0.0, 0.5, -1.0, -1.0, 0.5, -0.5, -0.5, -0.75, 0.5, -0.75, -0.5, -0.75, 1.0, -0.5, 1.0, 0.75, -1.0, -0.25, -1.0, -0.5, -0.75, 0.75, 0.25, 1.0, 0.25, -1.0, -0.5, -1.0, 0.0, 0.5, 1.0, -0.5, 0.5, 0.5, -1.0, 1.0, -0.25, -1.0, 0.25, 0.0, 0.75, -0.25, -0.75, -0.5, 0.0, -0.25, 0.75, -1.0, 1.0, 1.0, -0.5, 0.0, -0.75, 0.0, -0.5, 0.0, -0.25, 0.75, -0.25, -0.5, -0.25, -0.25, 0.75, 0.0, -1.0, 0.25, 0.25, 0.25, 0.75, -0.25, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, 0.25, 0.5, ]);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture006.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture007
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array4 = new Float32Array([-0.75, -0.25, 1.0, -0.5, 0.5, 0.75, 0.5, -0.5, 0.5, 0.25, 0.5, 1.0, 0.75, 0.0, 0.75, -0.25, 1.0, 0.75, -0.25, -0.5, 0.25, -0.25, -0.75, -0.75, 0.25, -0.25, -1.0, -0.5, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, 0.0, 0.75, -0.25, -0.25, 0.5, -0.5, -0.5, -0.75, -0.75, -0.5, 0.25, 1.0, -0.5, -1.0, 0.5, 1.0, -1.0, -0.25, 0.0, 0.0, -0.75, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, -1.0, 1.0, 0.0, 0.25, -0.5, 0.0, 0.0, 0.25, -1.0, 0.25, -0.5, -0.5, 0.25, 1.0, -1.0, -0.5, 0.25, -0.5, -0.75, 0.0, 0.25, -0.25, -1.0, 0.0, 0.25, 0.75, 0.75, -0.25, -0.5, -0.25, 0.25, 0.25, -0.25, -1.0, 0.5, -0.5, -0.5, 0.75, 0.5, ]);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setStencilReference(1);
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    buffer000.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0001.setPipeline(render_pipeline002);
    render_pass_encoder0020.executeBundles([])
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    device00.pushErrorScope("out-of-memory");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setPipeline(render_pipeline002);
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const command_buffer001 = command_encoder001.finish();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0030.insertDebugMarker("marker")
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder000.setVertexBuffer(0, buffer007);
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
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
    render_pass_encoder0001.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder001.setVertexBuffer(0, buffer0010);
    render_bundle_encoder000.drawIndirect(buffer000, 0);
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

    render_pass_encoder0001.setBindGroup(0, bind_group004);
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0011.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.popDebugGroup();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer0013,
        0
    )
    const array5 = new Float32Array([-0.25, 0.25, 0.5, 0.0, 1.0, 0.5, 0.0, -1.0, -1.0, -0.25, -0.5, 0.0, 0.5, -0.25, -1.0, 1.0, -0.25, 0.25, 0.25, -0.75, 0.25, -1.0, -0.5, -0.25, -0.25, 0.25, -0.25, -0.75, 0.0, -0.75, 0.0, -0.5, -0.75, 0.5, 0.5, 0.0, -1.0, -0.25, 0.5, -1.0, -0.25, -0.5, -0.75, 0.25, -0.75, 0.75, -0.75, 0.25, 0.5, -0.5, -0.25, 0.5, -0.5, -1.0, 0.75, -0.75, 1.0, 1.0, 0.0, -0.75, 1.0, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, 0.0, -1.0, -0.5, 1.0, 0.25, 0.5, 0.0, 0.25, -0.75, -1.0, -0.5, -0.75, 0.5, -0.75, 0.75, 0.75, -0.5, 0.0, -0.5, -0.5, -0.5, -0.25, 0.75, -1.0, -0.75, 0.75, ]);
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.drawIndirect(buffer004, 0);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0001.insertDebugMarker("marker");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    buffer009.destroy()
    texture002.destroy();
    
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture007
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0001.setVertexBuffer(0, buffer0014);
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer0013
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture006.destroy();
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0061,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0030.executeBundles([])
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0050.setPipeline(render_pipeline002);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.setScissorRect(0, 0, texture007.width / 2, texture007.height / 2);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.executeBundles([])
    
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    render_bundle_encoder001.draw(3);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0050.setVertexBuffer(0, buffer000);
    query001.destroy()
    render_pass_encoder0040.executeBundles([])
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0061,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture007
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0061.setPipeline(render_pipeline000);
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device00.pushErrorScope("out-of-memory");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0060.setPipeline(render_pipeline000);
    
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer0013
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setPipeline(render_pipeline002);
    render_pass_encoder0001.drawIndirect(buffer002, 0);
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

    render_pass_encoder0060.setBindGroup(0, bind_group007);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setStencilReference(1);
    
    
    render_pass_encoder0021.setPipeline(render_pipeline003);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.popDebugGroup();
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0016, 0, array0, 0, array0.length);
    
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
    query100.destroy()
    
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0051.setStencilReference(1);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0061,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeBuffer(buffer0019, 0, array3, 0, array3.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.insertDebugMarker("marker");
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0060.setStencilReference(1);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    texture003.destroy();
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder000.copyBufferToBuffer(
        buffer0013,
        0,
        buffer000,
        0,
        400
    );
    
    render_pass_encoder0060.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture007
        },
        {
            buffer: buffer0014
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: query002
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0042.setViewport(0, 0, texture007.width / 2, texture007.height / 2, 0, 1);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder0042.setPipeline(render_pipeline003);
    render_bundle_encoder000.finish();
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0030.insertDebugMarker("marker")
    buffer0015.destroy()
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.draw(3);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer0012.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0031.beginOcclusionQuery(0)
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder0041.setPipeline(render_pipeline001);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer003);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0019, 0, array5, 0, array5.length);
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
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
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query001
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
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

    render_pass_encoder0042.setBindGroup(0, bind_group008);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0020.draw(3);
    render_pass_encoder0070.pushDebugGroup("group_marker");
    buffer008.destroy()
    render_pass_encoder0051.setPipeline(render_pipeline002);
    command_encoder002.copyBufferToBuffer(
        buffer0021,
        0,
        buffer0011,
        0,
        400
    );
    
    render_pass_encoder0021.setStencilReference(1);
    query000.destroy()
    render_pass_encoder0050.popDebugGroup();
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture007
        },
        {
            buffer: buffer0012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.insertDebugMarker("marker");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0023, 0);
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    command_encoder006.copyBufferToBuffer(
        buffer0019,
        0,
        buffer0023,
        0,
        400
    );
    {
        await buffer0019.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0019.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0019.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group009);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0061.setBindGroup(0, bind_group0010);
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    command_encoder003.copyBufferToBuffer(
        buffer0013,
        0,
        buffer006,
        0,
        400
    );
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder002.clearBuffer(buffer0023);
    render_pass_encoder0070.setPipeline(render_pipeline002);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0001.end();
    render_pass_encoder0040.setPipeline(render_pipeline005);
    render_pass_encoder0070.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture007
        },
        {
            buffer: buffer0026
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device00.queue.writeBuffer(buffer0025, 0, array1, 0, array1.length);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.draw(3);
    buffer0020.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture007.width / 2, texture007.height / 2);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0023, 0, array5, 0, array5.length);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout006]
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    device00.queue.writeTexture({ texture: texture007 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setStencilReference(1);
    device00.queue.writeBuffer(buffer0023, 0, array0, 0, array0.length);
    compute_pass_encoder0060.setPipeline(compute_pipeline0044);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0023, 0, array3, 0, array3.length);
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder000.copyBufferToBuffer(
        buffer0013,
        0,
        buffer0023,
        0,
        400
    );
    render_pass_encoder0020.end();
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0061.setVertexBuffer(0, buffer003);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setVertexBuffer(0, buffer0021);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0061.draw(3);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group0012);
    render_pass_encoder0042.setVertexBuffer(0, buffer0019);
    render_pass_encoder0042.drawIndirect(buffer007, 0);
    render_pass_encoder0060.setVertexBuffer(0, buffer0014);
    render_pass_encoder0060.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0060.drawIndirect(buffer0015, 0);
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group0013);
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.setVertexBuffer(0, buffer008);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group0014);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0034, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer0010);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0041.setVertexBuffer(0, buffer004);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group0015);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0070.setVertexBuffer(0, buffer0014);
    render_pass_encoder0042.drawIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0070.drawIndirect(buffer004, 0);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0042.end();
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0016);
    render_pass_encoder0041.end();
    render_pass_encoder0061.end();
    render_pass_encoder0001.end();
    render_pass_encoder0050.end();
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group0017);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0031, 0);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0060.endOcclusionQuery()
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0051.setVertexBuffer(0, buffer0014);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0051.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0042, 0);
    render_pass_encoder0001.draw(3);
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder0010.end();
    device00.queue.submit([]);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0021.end();
    render_pass_encoder0001.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0019);
    render_pass_encoder0042.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0031.setVertexBuffer(0, buffer0010);
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0047, 0);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0000.setVertexBuffer(0, buffer0014);
    render_pass_encoder0041.draw(3);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0070.drawIndirect(buffer0047, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0061.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.draw(3);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0070.popDebugGroup();
    command_encoder003.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer005, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0042.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0061.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0061.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0061.setIndexBuffer(buffer0022, "uint16");
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer005, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0070.setIndexBuffer(buffer0029, "uint16");
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline0044.getBindGroupLayout(0),
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

    compute_pass_encoder0060.setBindGroup(0, bind_group0021);
    render_pass_encoder0050.drawIndirect(buffer0048, 0);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0042.drawIndirect(buffer000, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0026, 0);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0042.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0070.drawIndirect(buffer0052, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0001.end();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0060.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexed(3);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0070.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0042.drawIndirect(buffer0023, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0012, 0);
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0016, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0042.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0061.drawIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0061.draw(3);
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0022);
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0023);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0018, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0042.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0051.popDebugGroup();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0026, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0024);
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0070.drawIndirect(buffer0053, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0053, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0064, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0042.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.draw(3);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.setIndexBuffer(buffer006, "uint16");
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0025);
    render_pass_encoder0061.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0061.drawIndirect(buffer0056, 0);
    render_pass_encoder0051.drawIndirect(buffer0059, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0068, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0069, 0);
    render_pass_encoder0060.drawIndirect(buffer007, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0001.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0042.drawIndirect(buffer0067, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0001.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0061.drawIndirect(buffer0047, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0069, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0042.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0042.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0061.drawIndirect(buffer0064, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0000.drawIndirect(buffer0053, 0);
    device20.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0026);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.end();
    render_pass_encoder0030.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0048, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0000.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0069, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0073, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0001.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0073, 0);
    compute_pass_encoder0060.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0042.drawIndirect(buffer0045, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0001.drawIndirect(buffer0067, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0000.drawIndirect(buffer0064, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder0042.drawIndirect(buffer0064, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0060.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer009, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0001.drawIndirect(buffer0056, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0060.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0023, 0);
    render_pass_encoder0061.drawIndirect(buffer0023, 0);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0060.drawIndirect(buffer004, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0051.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0060.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    render_pass_encoder0070.drawIndirect(buffer0073, 0);
    render_pass_encoder0041.drawIndirect(buffer0072, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0061.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    compute_pass_encoder0000.end();
    render_pass_encoder0061.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0061.drawIndirect(buffer0061, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0072, 0);
    render_pass_encoder0061.drawIndirect(buffer0072, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0042.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndirect(buffer0070, 0);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0050.drawIndirect(buffer0074, 0);
    render_pass_encoder0042.drawIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer005, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0061.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0074, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0070.drawIndirect(buffer0068, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndirect(buffer0069, 0);
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    compute_pass_encoder0030.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0020.end();
    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0080,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0051.drawIndirect(buffer0073, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0081, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0001.setIndexBuffer(buffer0047, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0060.drawIndirect(buffer0080, 0);
    render_pass_encoder0060.drawIndirect(buffer0082, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0067, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0030.end();
    render_pass_encoder0070.end();
    compute_pass_encoder0060.end();
    device00.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.popDebugGroup();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndirect(buffer0014, 0);
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndirect(buffer0070, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0000.drawIndirect(buffer0084, 0);
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0070.drawIndirect(buffer0072, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0000.drawIndirect(buffer0073, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder0070.drawIndirect(buffer004, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0061.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0084, 0);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer007, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0070.drawIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0051.drawIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0051.drawIndirect(buffer0068, 0);
    render_pass_encoder0060.drawIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0070.drawIndirect(buffer0082, 0);
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder0070.drawIndirect(buffer0056, 0);
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    render_pass_encoder0000.drawIndirect(buffer0053, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0042.drawIndirect(buffer0022, 0);
    render_pass_encoder0061.drawIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0042.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0061.drawIndirect(buffer0038, 0);
    render_pass_encoder0051.drawIndirect(buffer0082, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0042, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0061.drawIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0060.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.drawIndirect(buffer0074, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0070.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0031.drawIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.drawIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndirect(buffer0074, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0051.drawIndirect(buffer0072, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0061.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0030.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0061.drawIndirect(buffer0084, 0);
    render_pass_encoder0050.drawIndirect(buffer0077, 0);
    render_pass_encoder0042.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0061.drawIndirect(buffer0083, 0);
    render_pass_encoder0061.drawIndirect(buffer0073, 0);
    render_pass_encoder0070.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0031.drawIndirect(buffer0075, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0030.endOcclusionQuery()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0085, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0085, 0);
    render_pass_encoder0061.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0083, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0001.end();
    render_pass_encoder0041.drawIndirect(buffer0063, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndirect(buffer0072, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0042.drawIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0042.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0087,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0030);
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0088, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0001.drawIndirect(buffer0072, 0);
    render_pass_encoder0070.drawIndirect(buffer000, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0041.drawIndirect(buffer0074, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer007, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0001.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0042.end();
    render_pass_encoder0051.drawIndirect(buffer0084, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0070.drawIndirect(buffer0081, 0);
    render_pass_encoder0001.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    device20.queue.submit([]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0061.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0042.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0069, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0088, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0069, 0);
    render_pass_encoder0001.drawIndirect(buffer0072, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0070.drawIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0042.drawIndirect(buffer0072, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0041.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer0085, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0051.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0061.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0070.drawIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0056, "uint16");
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0085, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0061.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndirect(buffer0082, 0);
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0091, 0);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.drawIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0092, 0);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0032);
    render_pass_encoder0040.drawIndirect(buffer0083, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0075, "uint16");
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0033);
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0061.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0097, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0086, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer0084, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0073, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndirect(buffer0074, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0001.drawIndirect(buffer0064, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0061.drawIndirect(buffer0064, 0);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0072, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0021, 0);
    render_pass_encoder0051.drawIndirect(buffer0083, 0);
    render_pass_encoder0051.drawIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndirect(buffer0066, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0038, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0001.popDebugGroup();
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0034);
    render_pass_encoder0051.drawIndirect(buffer0088, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0070.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0095, 0);
    render_pass_encoder0060.drawIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0069, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0070.drawIndirect(buffer0092, 0);
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.end();
    render_pass_encoder0042.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0059, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0051.drawIndirect(buffer0091, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0067, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0061.drawIndirect(buffer0067, 0);
    render_pass_encoder0031.drawIndirect(buffer0085, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0042.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0072, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndirect(buffer0085, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00100, 0);
    render_pass_encoder0042.drawIndirect(buffer0071, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0085, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0060.drawIndirect(buffer0074, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0044, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0031.drawIndirect(buffer0074, 0);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0070.drawIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndirect(buffer0099, 0);
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0082, 0);
    render_pass_encoder0040.drawIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00101, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00101, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0051.drawIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndirect(buffer0053, 0);
    render_pass_encoder0051.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndirect(buffer0064, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0001.drawIndirect(buffer0084, 0);
    render_pass_encoder0061.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    render_pass_encoder0042.drawIndirect(buffer0097, 0);
    render_pass_encoder0000.popDebugGroup();
    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00103,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0035);
    render_pass_encoder0061.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndirect(buffer0092, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0070.drawIndirect(buffer0068, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndirect(buffer0082, 0);
    render_pass_encoder0042.drawIndirect(buffer0062, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0064, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0030.drawIndirect(buffer00100, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0061.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0042.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0042.drawIndirect(buffer00101, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0042.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00105,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder0042.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0042.drawIndirect(buffer0091, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndirect(buffer0064, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0070.drawIndirect(buffer0068, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    render_pass_encoder0050.drawIndexed(3);
    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00107,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0037);
    render_pass_encoder0050.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0060.drawIndirect(buffer0085, 0);
    render_pass_encoder0020.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0070.drawIndirect(buffer0069, 0);
    render_pass_encoder0042.drawIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndirect(buffer00100, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0061, 0);
    render_pass_encoder0021.drawIndirect(buffer0092, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00106, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0045, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00108, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00108, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0042.popDebugGroup();
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0038);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0097, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00111, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00111, 0);
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder0042.drawIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0088, 0);
    render_pass_encoder0042.end();
    compute_pass_encoder0060.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00112, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0070.drawIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00101, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0001.drawIndirect(buffer0059, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00113, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00113, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0070.drawIndirect(buffer0086, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0088, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00114, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00114, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00115, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00115, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0061.drawIndirect(buffer0072, 0);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00105, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0041.drawIndirect(buffer00100, 0);
    render_pass_encoder0042.drawIndirect(buffer004, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0042.drawIndirect(buffer0085, 0);
    render_pass_encoder0050.drawIndirect(buffer00103, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0070.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00117,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0039);
    render_pass_encoder0040.drawIndirect(buffer00111, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0061.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndirect(buffer00115, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0042.drawIndirect(buffer00108, 0);
    render_pass_encoder0030.drawIndirect(buffer0091, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0091, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0080, 0);
    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00119,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0040);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.end();
    render_pass_encoder0031.setIndexBuffer(buffer0010, "uint16");
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0041);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0070.drawIndirect(buffer0083, 0);
    render_pass_encoder0001.setIndexBuffer(buffer00102, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0042.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0041.end();
    render_pass_encoder0040.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0042.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0042.drawIndirect(buffer0081, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0042.end();
    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00123,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0042);
    render_pass_encoder0000.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0082, 0);
    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00125,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0043);
    render_pass_encoder0042.drawIndexedIndirect(buffer0096, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00126, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00126, 0);
    render_pass_encoder0051.drawIndirect(buffer00112, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00101, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0061.drawIndirect(buffer0088, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0090, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0042.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0031.drawIndirect(buffer00126, 0);
    render_pass_encoder0070.drawIndirect(buffer004, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder0070.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndirect(buffer00100, 0);
    render_pass_encoder0070.drawIndirect(buffer0083, 0);
    render_pass_encoder0020.drawIndirect(buffer0091, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0097, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00127, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00127, 0);
    render_pass_encoder0070.drawIndirect(buffer0082, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, command_buffer006, command_buffer007, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0069, 0);
    render_pass_encoder0051.drawIndirect(buffer00100, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder0061.drawIndirect(buffer0084, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0000.drawIndirect(buffer00127, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndirect(buffer0047, 0);
    render_pass_encoder0061.drawIndirect(buffer0088, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndirect(buffer0084, 0);
    render_pass_encoder0051.drawIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndirect(buffer00100, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00127, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    render_pass_encoder0042.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00113, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndirect(buffer0069, 0);
    render_pass_encoder0000.drawIndirect(buffer00101, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0061.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0061.drawIndirect(buffer00126, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0042.drawIndirect(buffer002, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0000.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0021.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00113, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0042.drawIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0061.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0074, 0);
    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00129,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00108, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer00100, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0001.drawIndirect(buffer0073, 0);
    render_pass_encoder0042.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.setIndexBuffer(buffer0052, "uint16");
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0045);
    render_pass_encoder0000.drawIndirect(buffer00126, 0);
    render_pass_encoder0061.drawIndirect(buffer0067, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0021.drawIndirect(buffer00108, 0);
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndirect(buffer00115, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00100, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0061.drawIndirect(buffer0083, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0060.end();
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0085, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00112, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00127, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder0061.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00126, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer007, ]);
    render_pass_encoder0051.drawIndirect(buffer0073, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.drawIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0001.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer00111, 0);
    render_pass_encoder0061.drawIndirect(buffer00101, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0051.drawIndirect(buffer00114, 0);
    render_pass_encoder0060.drawIndirect(buffer0053, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0042.drawIndirect(buffer0072, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00132, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00132, 0);
    render_pass_encoder0031.drawIndirect(buffer00132, 0);
    render_pass_encoder0042.drawIndirect(buffer0056, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0042.drawIndirect(buffer0067, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.draw(3);
    compute_pass_encoder0060.end();
    render_pass_encoder0070.drawIndirect(buffer0034, 0);
    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00134,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0046);
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0070.drawIndirect(buffer0073, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0001.drawIndirect(buffer00115, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndirect(buffer0055, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00114, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0051.drawIndirect(buffer0092, 0);
    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00135,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00136,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0047);
    render_pass_encoder0070.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0031.drawIndirect(buffer00115, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndirect(buffer00114, 0);
    render_pass_encoder0042.drawIndirect(buffer0083, 0);
    render_pass_encoder0061.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00122, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00113, 0);
    render_pass_encoder0042.drawIndirect(buffer0069, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00108, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0042.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0042.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0061.drawIndirect(buffer00100, 0);
    render_pass_encoder0061.drawIndirect(buffer0072, 0);
    render_pass_encoder0060.drawIndirect(buffer0048, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0042.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer00114, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder0001.drawIndirect(buffer003, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0042.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0090, 0);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00138,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0048);
    render_pass_encoder0070.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00139, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00139, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0001.drawIndirect(buffer0092, 0);
    render_pass_encoder0061.drawIndirect(buffer0045, 0);
    render_pass_encoder0060.drawIndirect(buffer00113, 0);
    render_pass_encoder0031.drawIndirect(buffer0046, 0);
    render_pass_encoder0041.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder0061.drawIndirect(buffer0061, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexed(3);
    compute_pass_encoder0060.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0041.drawIndirect(buffer0073, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer00132, 0);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0041.drawIndirect(buffer00103, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00111, 0);
    render_pass_encoder0042.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00113, 0);
    device00.queue.submit([]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    render_pass_encoder0042.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0061.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0088, 0);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder0051.drawIndirect(buffer00113, 0);
    render_pass_encoder0042.drawIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0041.drawIndirect(buffer0097, 0);
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    render_pass_encoder0041.drawIndirect(buffer00112, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00140, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00140, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0000.drawIndirect(buffer0082, 0);
    render_pass_encoder0061.drawIndirect(buffer0091, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0070.end();
    render_pass_encoder0031.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0046, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00114, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    render_pass_encoder0041.drawIndirect(buffer0091, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndirect(buffer00114, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00125, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0001.drawIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0070.drawIndirect(buffer00126, 0);
    render_pass_encoder0060.drawIndirect(buffer00113, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0058, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00126, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0073, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0081, 0);
    render_pass_encoder0001.drawIndirect(buffer00122, 0);
    render_pass_encoder0051.drawIndirect(buffer00112, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0042.popDebugGroup();
    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00142,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0049);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00119, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0082, 0);
    render_pass_encoder0070.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndirect(buffer00137, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0073, 0);
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    render_pass_encoder0061.drawIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0070.drawIndirect(buffer0088, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00144,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0050);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00100, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0041.drawIndirect(buffer00101, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0074, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00145, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0050, 0);
    render_pass_encoder0051.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0061, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0060.drawIndirect(buffer0091, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00115, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00140, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00126, 0);
    render_pass_encoder0060.drawIndirect(buffer00102, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00138, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0097, 0);
    render_pass_encoder0070.drawIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0070.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0083, 0);
    render_pass_encoder0042.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0072, 0);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0042.drawIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndirect(buffer00133, 0);
    render_pass_encoder0060.drawIndirect(buffer00115, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0042.drawIndirect(buffer0082, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00147,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0051);
    render_pass_encoder0060.drawIndirect(buffer0085, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndirect(buffer0093, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndirect(buffer00100, 0);
    render_pass_encoder0000.drawIndirect(buffer0088, 0);
    render_pass_encoder0042.drawIndirect(buffer0067, 0);
    render_pass_encoder0061.drawIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00139, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0061.drawIndirect(buffer0060, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0056, 0);
    render_pass_encoder0061.drawIndirect(buffer00103, 0);
    render_pass_encoder0050.drawIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0097, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0061.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndirect(buffer00114, 0);
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00132, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0042.drawIndirect(buffer0023, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0061.draw(3);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndirect(buffer00126, 0);
    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00149,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0052);
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0081, 0);
    render_pass_encoder0001.drawIndirect(buffer00114, 0);
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0061.drawIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0070.drawIndirect(buffer0053, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0091, 0);
    device20.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00112, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0062, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0080, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0001.drawIndirect(buffer00112, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00150, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00150, 0);
    render_pass_encoder0042.drawIndirect(buffer0082, 0);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0001.drawIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0050.end();
    render_pass_encoder0001.drawIndirect(buffer0050, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    render_pass_encoder0070.drawIndirect(buffer0067, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00151, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00151, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00114, 0);
    render_pass_encoder0030.drawIndirect(buffer00113, 0);
    render_pass_encoder0020.drawIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0091, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer0092, 0);
    render_pass_encoder0001.drawIndirect(buffer00113, 0);
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0042.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndirect(buffer0090, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0061.setIndexBuffer(buffer00103, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndirect(buffer0073, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00147, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00145, 0);
    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00152,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00153,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0053);
    render_pass_encoder0031.drawIndirect(buffer00145, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0001.drawIndirect(buffer00132, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0041.drawIndirect(buffer00103, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer00111, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0070.drawIndirect(buffer0092, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndirect(buffer0072, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0040.drawIndirect(buffer00111, 0);
    render_pass_encoder0041.drawIndirect(buffer00139, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0042.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0084, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0051.drawIndirect(buffer00101, 0);
    render_pass_encoder0021.drawIndirect(buffer0073, 0);
    render_pass_encoder0001.drawIndirect(buffer00145, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0001.drawIndirect(buffer00140, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00140, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer00121, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    render_pass_encoder0042.drawIndirect(buffer00145, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0051.drawIndirect(buffer0069, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0053, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer0088, 0);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0020.drawIndirect(buffer00126, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0051.drawIndirect(buffer0082, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0074, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    render_pass_encoder0042.drawIndirect(buffer0060, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0061.drawIndirect(buffer0091, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0001.drawIndirect(buffer0076, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0092, 0);
    render_pass_encoder0051.drawIndirect(buffer00132, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0070.drawIndirect(buffer00115, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0042.drawIndirect(buffer0082, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00127, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndirect(buffer0064, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0080, 0);
    device20.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder0020.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0051.drawIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndirect(buffer0053, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.end();
    render_pass_encoder0020.end();
    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00155,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0054);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00156, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00156, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0091, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00140, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndirect(buffer00100, 0);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0051.drawIndirect(buffer0098, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00115, 0);
    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00158,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0055);
    render_pass_encoder0042.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00145, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0073, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndirect(buffer0034, 0);
    render_pass_encoder0031.drawIndirect(buffer0064, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0031.drawIndirect(buffer0093, 0);
    render_pass_encoder0042.popDebugGroup();
    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00160,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0056);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndirect(buffer00100, 0);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00123, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0060.drawIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder0021.drawIndirect(buffer00139, 0);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder0000.drawIndirect(buffer00131, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00161, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00161, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0041.end();
    render_pass_encoder0000.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0042.setIndexBuffer(buffer00141, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndirect(buffer0089, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0082, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0070.drawIndirect(buffer00112, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00148, 0);
    const buffer00162 = device00.createBuffer({
        label: "buffer00162",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00162,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00163,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0057);
    render_pass_encoder0000.drawIndirect(buffer0074, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0069, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0021.drawIndirect(buffer00112, 0);
    render_pass_encoder0051.drawIndirect(buffer00113, 0);
    render_pass_encoder0040.drawIndirect(buffer00160, 0);
    render_pass_encoder0000.drawIndirect(buffer00126, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0069, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0070, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0021.drawIndirect(buffer00136, 0);
    render_pass_encoder0021.draw(3);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00164, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00164, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0073, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0088, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0050.drawIndirect(buffer00140, 0);
    render_pass_encoder0042.drawIndirect(buffer004, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0085, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer00133, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0042.drawIndirect(buffer00114, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00140, 0);
    render_pass_encoder0020.drawIndirect(buffer0069, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer007, ]);
    render_pass_encoder0042.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0060.drawIndirect(buffer0082, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndirect(buffer00111, 0);
    render_pass_encoder0020.drawIndirect(buffer00164, 0);
    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00166,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0058);
    render_pass_encoder0061.drawIndirect(buffer0074, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00151, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00167, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00167, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00149, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0061.draw(3);
    render_pass_encoder0001.drawIndirect(buffer00151, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00110, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00111, 0);
    render_pass_encoder0030.drawIndirect(buffer0073, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0069, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00168, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00168, 0);
    render_pass_encoder0061.drawIndirect(buffer00113, 0);
    render_pass_encoder0051.drawIndirect(buffer0081, 0);
    render_pass_encoder0061.drawIndirect(buffer0083, 0);
    render_pass_encoder0042.drawIndirect(buffer00128, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00103, 0);
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00169,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00170,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0059);
    render_pass_encoder0051.drawIndirect(buffer00167, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer00132, 0);
    render_pass_encoder0040.drawIndirect(buffer00100, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndirect(buffer00140, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00171,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00172,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0060);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndirect(buffer00111, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0001.drawIndirect(buffer0090, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0068, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndirect(buffer00159, 0);
    render_pass_encoder0041.drawIndirect(buffer0023, 0);
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.drawIndirect(buffer00136, 0);
    render_pass_encoder0030.drawIndirect(buffer00164, 0);
    render_pass_encoder0061.drawIndirect(buffer00101, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0050.setIndexBuffer(buffer00146, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00151, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0001.drawIndirect(buffer0085, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline0044.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00174,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0061);
    render_pass_encoder0042.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0021.drawIndirect(buffer00139, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer00139, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0042.drawIndirect(buffer00150, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00143, 0);
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer005, ]);
    render_pass_encoder0042.drawIndirect(buffer00140, 0);
    render_pass_encoder0061.drawIndirect(buffer00151, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00132, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer00145, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndirect(buffer00170, 0);
    render_pass_encoder0020.drawIndirect(buffer00140, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0001.setIndexBuffer(buffer00112, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00126, 0);
}