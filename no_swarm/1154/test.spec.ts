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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([0.5, -0.25, -0.25, 0.0, 0.0, 0.75, 1.0, 0.0, -1.0, -0.75, 0.25, 0.5, 1.0, 0.0, 0.0, 0.25, 0.75, 0.0, -0.5, -1.0, 0.0, 0.25, -0.5, 0.75, 1.0, -0.75, -1.0, 0.75, -0.5, 0.5, -0.5, 0.5, -0.5, -0.5, -0.75, -0.5, 0.25, 0.75, 0.25, -0.25, 0.5, 0.0, -0.25, 0.75, 0.0, 0.25, 0.0, 0.25, 0.0, -0.5, 1.0, -1.0, 0.75, -0.25, 0.5, 0.0, 0.25, 0.5, -0.5, 0.5, 1.0, 0.0, -0.75, -0.25, 0.5, 0.5, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, 1.0, -1.0, 0.0, 0.5, 0.75, 0.25, 0.0, 0.0, 0.0, -0.5, -0.25, 0.0, 0.5, 0.75, 0.0, 0.5, -1.0, -1.0, -0.5, 0.5, 0.0, -0.75, -1.0, 0.25, -0.25, -0.25, 1.0, -0.25, ]);
    const array1 = new Float32Array([0.25, 0.0, -0.25, 0.75, 1.0, -0.25, 0.75, 0.75, -1.0, -1.0, -0.75, 0.5, 0.25, 0.0, 0.75, 1.0, 1.0, -1.0, 0.5, -1.0, -0.25, 0.0, 0.25, -0.5, -1.0, 0.0, 0.25, 0.75, 0.25, 1.0, -1.0, -0.5, 0.25, -0.25, -0.25, 0.0, -1.0, 0.5, 1.0, -1.0, 0.0, -0.5, 0.0, 1.0, -1.0, -0.5, -0.5, -0.25, 0.5, -0.75, 0.5, -0.75, 0.25, -0.75, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 0.5, -0.5, -0.25, 0.25, 0.0, -1.0, 0.25, 0.5, -0.25, 0.25, 1.0, -0.25, -0.25, 1.0, 1.0, -1.0, -0.5, 0.25, 0.75, -1.0, 0.5, 0.25, 0.75, 0.0, 0.5, 0.25, 0.75, -0.25, -0.75, 0.5, 1.0, 0.0, 0.25, 0.75, 0.75, -1.0, 1.0, 0.0, 0.5, -0.75, ]);
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    texture000.destroy();
    
    device10.destroy();
    
    
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
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
    
    
    
    
    
    texture001.destroy();
    
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
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
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder0010.insertDebugMarker("marker");
    
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
    render_pass_encoder0020.setPipeline(render_pipeline000);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.beginOcclusionQuery(0)
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0000.pushDebugGroup("group_marker");
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query001
    });
    
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.beginOcclusionQuery(1)
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.endOcclusionQuery()
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    render_pass_encoder0030.setStencilReference(1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
        occlusionQuerySet: query001
    });
    render_pass_encoder0021.popDebugGroup();
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
    render_pass_encoder0040.beginOcclusionQuery(1)
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query000.destroy()
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0000.setPipeline(render_pipeline000);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
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
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_pass_encoder0011.executeBundles([])
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.beginOcclusionQuery(3)
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setPipeline(render_pipeline002);
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0011.popDebugGroup();
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group001);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.setStencilReference(1);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.setPipeline(render_pipeline002);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer001.destroy()
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setPipeline(render_pipeline002);
    render_pass_encoder0030.beginOcclusionQuery(1)
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setStencilReference(1);
    
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0040.setStencilReference(1);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0021.setPipeline(render_pipeline002);
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
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0031.executeBundles([])
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    buffer002.destroy()
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
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
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer005);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.endOcclusionQuery()
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder001.insertDebugMarker("mymarker");
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.popDebugGroup();
    
    buffer003.destroy()
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.popDebugGroup();
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0001.setStencilReference(1);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0010.popDebugGroup();
    
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0050.popDebugGroup();
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    texture002.destroy();
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setPipeline(render_pipeline003);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0051.setPipeline(render_pipeline000);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setStencilReference(1);
    
    
    render_pass_encoder0050.setPipeline(render_pipeline003);
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setStencilReference(1);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    command_encoder003.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
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
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group004);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.setPipeline(compute_pipeline0019);
    render_pass_encoder0010.setVertexBuffer(0, buffer0013);
    render_pass_encoder0051.pushDebugGroup("group_marker");
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const array2 = new Float32Array([-0.25, 0.5, -0.5, -0.5, -0.5, 0.0, 0.0, -0.75, -1.0, 0.0, -1.0, -1.0, -0.5, -0.75, 0.0, -1.0, -0.5, 0.0, -0.25, -0.25, 0.25, -0.5, -0.75, 1.0, -0.75, -0.25, 0.75, -0.25, -0.5, -0.25, -0.75, -1.0, -0.25, 0.25, 0.0, -0.75, -0.5, -0.25, -0.25, 1.0, 1.0, -0.25, -1.0, -0.5, 0.5, -0.5, -0.75, -0.75, 0.75, 0.5, -0.25, 0.0, 0.0, -0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.0, -0.75, 0.0, -0.75, 1.0, -0.25, -0.75, 0.25, -1.0, -0.25, 1.0, 0.0, 0.0, 0.5, 1.0, -0.5, -1.0, 1.0, 0.75, 0.75, -0.25, 0.25, -0.75, -0.5, -0.5, 0.75, -0.5, 0.75, 0.5, 0.25, 0.5, -0.25, -0.25, 0.75, -0.75, -0.5, -0.5, 0.5, -0.5, 0.25, 0.0, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0021.insertDebugMarker("marker");
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer0013
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0031.setStencilReference(1);
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
    
    
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    query001.destroy()
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group006);
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer0015.destroy()
    
    device10.destroy();
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer0015
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.setStencilReference(1);
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
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
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0014.destroy()
    render_pass_encoder0032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer009.destroy()
    render_pass_encoder0032.setPipeline(render_pipeline006);
    texture003.destroy();
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
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
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer001
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
    render_pass_encoder0041.setPipeline(render_pipeline007);
    query002.destroy()
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
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

    render_bundle_encoder000.setBindGroup(0, bind_group007);
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setPipeline(render_pipeline000);
    render_pass_encoder0080.setPipeline(render_pipeline007);
    
    device00.pushErrorScope("validation");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer0010.destroy()
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0080.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    command_encoder008.insertDebugMarker("mymarker");
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.setVertexBuffer(0, buffer0016);
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.insertDebugMarker("marker");
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer007,
        0,
        400
    );
    command_encoder000.clearBuffer(buffer0014);
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout009,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer007,
        0,
        400
    );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0001.setStencilReference(1);
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    render_pass_encoder0060.insertDebugMarker("marker");
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    
    render_pass_encoder0051.popDebugGroup();
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
    render_pass_encoder0061.setPipeline(render_pipeline007);
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.setVertexBuffer(0, buffer0019);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0030.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group009);
    render_pass_encoder0020.setVertexBuffer(0, buffer0014);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0010);
    render_pass_encoder0040.setVertexBuffer(0, buffer005);
    render_pass_encoder0060.setVertexBuffer(0, buffer0023);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0060.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline0019.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0032.endOcclusionQuery()
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group0012);
    render_pass_encoder0031.setVertexBuffer(0, buffer0024);
    render_pass_encoder0001.setVertexBuffer(0, buffer0016);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder0051.setVertexBuffer(0, buffer0019);
    render_pass_encoder0030.setVertexBuffer(0, buffer0017);
    render_pass_encoder0050.setVertexBuffer(0, buffer0025);
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group0013);
    render_pass_encoder0051.drawIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    render_pass_encoder0080.setBindGroup(0, bind_group0014);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0061.setBindGroup(0, bind_group0015);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    command_encoder001.popDebugGroup()
    render_pass_encoder0032.setVertexBuffer(0, buffer000);
    render_pass_encoder0061.setVertexBuffer(0, buffer0020);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0080.setVertexBuffer(0, buffer0031);
    render_pass_encoder0061.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0080.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.endOcclusionQuery()
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
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0016);
    render_pass_encoder0040.end();
    render_pass_encoder0080.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0035, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    command_encoder003.popDebugGroup()
    render_pass_encoder0021.setVertexBuffer(0, buffer0022);
    render_pass_encoder0032.end();
    render_pass_encoder0051.drawIndirect(buffer003, 0);
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
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0017);
    render_pass_encoder0061.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0061.drawIndirect(buffer006, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0021.end();
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0041.setVertexBuffer(0, buffer0025);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0061.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0080.end();
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0080.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0011.end();
    const command_buffer008 = command_encoder008.finish();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0080.setIndexBuffer(buffer0023, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0032.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0080.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0080.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0031.drawIndirect(buffer009, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0016, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0080.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0080.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0060.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, command_buffer003, command_buffer004, command_buffer006, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer007, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0051.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0061.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.end();
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0032.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0051.drawIndirect(buffer006, 0);
    render_pass_encoder0032.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0032.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline0019.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0080.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0080.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0080.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0014, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0032.drawIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder0032.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0030, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0010.draw(3);
    render_pass_encoder0001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0001.drawIndirect(buffer0024, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0061.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.end();
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0080.drawIndirect(buffer003, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0080.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0060.end();
    render_pass_encoder0061.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0080.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0080.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0061.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0061.drawIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0033, 0);
    render_pass_encoder0080.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0061.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0061.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer004, command_buffer005, command_buffer008, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0061.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0032.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0036, 0);
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0061.drawIndirect(buffer0025, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline0019.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0061.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0050.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0000.drawIndirect(buffer0041, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0032.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0080.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0061.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0080.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0061.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0061.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0033, "uint16");
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline0019.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0080.drawIndirect(buffer0028, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer006, command_buffer007, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0046, "uint16");
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0080.drawIndirect(buffer0024, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0032.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0080.drawIndirect(buffer0047, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0040, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0011.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndirect(buffer0046, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0011.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0032.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndirect(buffer0046, 0);
    render_pass_encoder0061.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0046, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0061.drawIndirect(buffer0046, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0080.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0047, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0080.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0032.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0030.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0060.drawIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0080.drawIndirect(buffer0046, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0000.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0048, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0048, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0060.end();
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0080.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0051.setIndexBuffer(buffer0021, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline0019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0080.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0080.drawIndirect(buffer0016, 0);
    render_pass_encoder0000.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0020.end();
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline0019.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0032.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0080.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0060.drawIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0080.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0041.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder0051.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0047, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    device20.queue.submit([]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0080.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0080.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0032.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer0037, 0);
    render_pass_encoder0032.drawIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    render_pass_encoder0080.drawIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
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
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.drawIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0053, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0048, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0061.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0032.drawIndirect(buffer0048, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.draw(3);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline0019.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0048, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0049, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer001, 0);
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0061.drawIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0080.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0080.end();
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.popDebugGroup();
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline0019.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder0041.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0001.drawIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0048, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0055, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0018, 0);
    render_pass_encoder0061.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0032.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.end();
    render_pass_encoder0051.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.draw(3);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer007, command_buffer008, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0080.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0047, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0047, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
}