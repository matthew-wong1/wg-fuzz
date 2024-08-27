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
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    device00.pushErrorScope("internal");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array0 = new Float32Array([-0.25, 0.5, 0.75, -0.5, 0.0, -0.75, -1.0, -0.75, -1.0, -0.75, -0.25, -0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, 1.0, -0.5, 0.25, 1.0, -1.0, 1.0, 0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 0.5, 0.0, 1.0, -0.75, 0.25, 0.5, 0.25, 0.25, 0.75, -0.25, 1.0, 0.5, 0.75, -0.75, 0.75, -1.0, -0.5, 0.5, 0.0, -1.0, -0.5, 0.5, -0.75, -1.0, 0.75, -0.25, -0.5, -0.25, 0.25, -0.75, 0.0, -0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -0.25, 0.5, 0.0, 0.0, 0.5, -0.75, 0.75, 0.75, -1.0, 0.5, -0.25, -0.75, -1.0, -1.0, 0.75, 0.5, 0.25, -0.75, 1.0, -0.75, -0.25, 0.25, -0.5, -0.25, -0.5, 0.0, -0.25, 0.25, 0.25, 0.25, 0.25, 0.25, -0.25, ]);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    texture100.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture101.destroy();
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.setPipeline(render_pipeline003);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline003);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
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
        occlusionQuerySet: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setStencilReference(1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.setPipeline(render_pipeline002);
    texture000.destroy();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_pass_encoder0011.setPipeline(render_pipeline001);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    buffer001.destroy()
    texture400.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group001);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0010.setStencilReference(1);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
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
    render_pass_encoder0020.setPipeline(render_pipeline003);
    render_pass_encoder0021.insertDebugMarker("marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group003);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setPipeline(render_pipeline001);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0021.setPipeline(render_pipeline002);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer005);
    render_pass_encoder0040.setStencilReference(1);
    buffer008.destroy()
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setVertexBuffer(0, buffer009);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    buffer002.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_pass_encoder0010.draw(3);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.setPipeline(render_pipeline103);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    texture102.destroy();
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_pass_encoder0011.setStencilReference(1);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device40.pushErrorScope("validation");
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder001.clearBuffer(buffer009);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    
    texture103.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    buffer005.destroy()
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.draw(3);
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.setPipeline(render_pipeline003);
    device50.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1030.setStencilReference(1);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer000.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array1 = new Float32Array([-1.0, -0.5, 1.0, -0.25, 0.25, 0.75, -0.25, -0.75, -0.75, -0.5, -0.5, 0.0, -0.25, -0.5, 0.25, 0.25, -0.75, -0.5, -1.0, 1.0, 1.0, 1.0, 0.75, 0.0, -0.25, 0.75, 0.0, 0.5, -0.5, 0.25, 0.0, -1.0, -1.0, 1.0, 0.25, 0.5, -0.5, 0.75, -0.5, -0.75, 0.0, -0.25, -0.75, 0.5, 0.0, 1.0, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, 0.5, -0.75, 0.0, -0.75, -0.75, -1.0, -0.25, 0.75, -0.75, -0.5, -0.75, -0.5, 0.5, -0.25, -0.25, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, -0.75, -0.75, -0.5, 0.5, -0.75, 1.0, 0.25, 0.5, 0.75, -0.25, -0.25, 0.0, -0.75, 0.0, -0.25, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, -0.25, -1.0, 1.0, -1.0, 0.0, 1.0, ]);
    const array2 = new Float32Array([0.0, -1.0, -0.25, 0.0, -0.5, 0.75, -0.5, 0.25, 0.75, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 0.75, -0.75, -0.25, 0.25, -0.75, -1.0, -1.0, -0.5, 0.75, 0.0, -0.75, 0.5, 0.75, -1.0, 1.0, -1.0, 1.0, -1.0, 0.75, 0.25, -0.25, -0.75, 0.25, 1.0, 0.75, 0.0, 0.5, -0.75, -1.0, -0.5, -0.5, 1.0, 0.25, 0.25, -1.0, 0.0, 0.75, 0.0, -0.25, -0.75, 0.5, -0.5, 0.0, 0.75, 0.5, -0.25, 0.0, -0.75, -0.75, 0.5, 1.0, 0.0, 1.0, 0.75, 0.0, -1.0, 0.0, 1.0, 1.0, 0.0, 0.25, 0.5, 1.0, -1.0, -0.25, -1.0, -0.25, 0.25, -0.5, -1.0, 1.0, 0.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.0, 1.0, -0.5, 1.0, -0.25, 0.75, 0.25, -0.75, ]);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0050.setPipeline(compute_pipeline001);
    render_pass_encoder0030.insertDebugMarker("marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.popDebugGroup();
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.setVertexBuffer(0, buffer103);
    render_pass_encoder0020.setVertexBuffer(0, buffer003);
    buffer007.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    render_pass_encoder0000.popDebugGroup();
    buffer007.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0001.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device40.pushErrorScope("internal");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group006);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer0013.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    buffer003.destroy()
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    compute_pass_encoder1011.setPipeline(compute_pipeline100);
    
    render_pass_encoder0001.insertDebugMarker("marker");
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    
    buffer101.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0030.setPipeline(compute_pipeline0012);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group007);
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
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
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.end();
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    buffer102.destroy()
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.draw(3);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder0001.setStencilReference(1);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.setIndexBuffer(buffer101, "uint16");
    
    compute_pass_encoder1011.popDebugGroup()
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.setStencilReference(1);
    
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group008);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    buffer105.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group104);
    
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0018, 0);
    command_encoder006.copyBufferToBuffer(
        buffer0017,
        0,
        buffer0012,
        0,
        400
    );
    render_bundle_encoder100.draw(3);
    render_pass_encoder0021.setStencilReference(1);
    buffer003.destroy()
    command_encoder003.clearBuffer(buffer0011);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1010, 0);
    render_pass_encoder0030.popDebugGroup();
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group009);
    compute_pass_encoder0030.dispatchWorkgroups(100);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder0001.setVertexBuffer(0, buffer008);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    render_pass_encoder0011.setVertexBuffer(0, buffer0018);
    compute_pass_encoder1010.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0001.popDebugGroup();
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group0011);
    render_pass_encoder0040.setVertexBuffer(0, buffer0015);
    render_pass_encoder1030.setVertexBuffer(0, buffer103);
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    compute_pass_encoder1011.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1013, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0011.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.popDebugGroup();
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0012);
    render_pass_encoder0001.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer103, 0);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1030.end();
    render_pass_encoder0000.setVertexBuffer(0, buffer0019);
    device40.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1016, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setVertexBuffer(0, buffer0019);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.end();
    compute_pass_encoder1011.end();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1017, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1018, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1019, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0013);
    render_pass_encoder0000.draw(3);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group107);
    render_pass_encoder0011.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.setVertexBuffer(0, buffer0028);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    device30.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0029, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0032, 0);
    render_pass_encoder0010.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1023, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0001.drawIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0016);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0021.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    compute_pass_encoder1010.end();
    device00.queue.submit([]);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0017);
    render_pass_encoder0010.draw(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group108);
    render_pass_encoder1030.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
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
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0018);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1030.popDebugGroup();
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder1030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group109);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder1020.popDebugGroup()
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.end();
    render_pass_encoder0020.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0021);
    render_pass_encoder0021.end();
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer004, 0);
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0023);
    compute_pass_encoder1000.popDebugGroup()
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0024);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0024, 0);
    device30.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder0011.draw(3);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1035, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    device10.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0033, 0);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1011);
    compute_pass_encoder1011.end();
    compute_pass_encoder1011.popDebugGroup()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0054, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    device40.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0034, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1041, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0044, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder1020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    device00.queue.submit([]);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    render_pass_encoder0010.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0050.end();
    compute_pass_encoder4010.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0057, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder1000.popDebugGroup()
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0046, "uint16");
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    compute_pass_encoder1010.end();
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0054, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1017);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0001.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0055, 0);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0040.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0062, 0);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.end();
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0026);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0021.setIndexBuffer(buffer0063, "uint16");
    compute_pass_encoder1011.popDebugGroup()
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0000.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndirect(buffer0064, 0);
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1055, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder0020.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0066, 0);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder1030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0061, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1058, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0011.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0067, 0);
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1020);
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0052, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0040.setIndexBuffer(buffer0055, "uint16");
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1021);
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder0020.drawIndirect(buffer0058, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0040.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1058, 0);
    compute_pass_encoder0030.popDebugGroup()
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1023);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0040.end();
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0070, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0070, 0);
    compute_pass_encoder4010.popDebugGroup()
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
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
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0028);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0001.drawIndirect(buffer0061, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1024);
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1058, 0);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0030);
    render_pass_encoder0000.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0001.drawIndirect(buffer0062, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0062, 0);
    render_pass_encoder0010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.end();
    render_pass_encoder1030.setIndexBuffer(buffer1066, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1026);
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0066, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0078, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0078, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0011.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1073, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1073, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0001.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0079, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1027);
    render_pass_encoder0011.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0078, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndexed(3);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1076, 0);
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1028);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0062, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1010.end();
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
    compute_pass_encoder1010.end();
    render_pass_encoder0001.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndirect(buffer0078, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1079, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0079, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1080, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
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
    render_pass_encoder0011.draw(3);
    compute_pass_encoder1011.end();
    render_pass_encoder0040.end();
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0082, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0010.drawIndirect(buffer0082, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder1011.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.draw(3);
    device40.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder4000.popDebugGroup()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1083, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0001.drawIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0001.end();
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
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
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0032);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1084, 0);
    render_pass_encoder0001.drawIndirect(buffer0053, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0080, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder0030.drawIndirect(buffer0079, 0);
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0079, 0);
    render_pass_encoder0011.drawIndirect(buffer0079, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1030);
    render_pass_encoder0011.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0057, 0);
}