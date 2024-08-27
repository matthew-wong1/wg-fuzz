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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.submit([]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_buffer000 = command_encoder000.finish();
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    query000.destroy()
    const array0 = new Float32Array([1.0, 0.0, 1.0, -0.5, -0.5, 0.0, 0.75, 0.25, -0.75, 0.5, -0.25, -1.0, 1.0, -0.25, 1.0, -0.75, 1.0, -0.75, -0.5, 0.75, 0.75, -1.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.25, 0.75, -0.25, 1.0, 0.5, -1.0, 1.0, 1.0, 0.75, -0.5, -0.25, 1.0, 1.0, 0.0, -0.25, 0.5, 0.5, 0.75, 0.5, 0.75, -0.25, 0.0, -0.75, 1.0, 0.25, -0.5, 0.75, -0.25, 0.25, 1.0, -0.75, 1.0, 0.75, -0.25, 0.0, 0.25, 0.25, 0.0, 0.75, 0.75, 0.75, 0.75, -1.0, -0.5, -0.5, -1.0, -0.75, 0.25, 1.0, 0.0, 0.5, -0.25, -0.25, -1.0, 0.0, 0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, -0.75, -1.0, -1.0, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query001.destroy()
    
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
    
    device00.queue.submit([command_buffer000, ]);
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
    query001.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query001.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.pushErrorScope("internal");
    query000.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array1 = new Float32Array([1.0, -0.5, 1.0, -0.25, 0.5, 0.75, 0.5, 0.25, 0.0, 0.0, 1.0, 0.25, -0.75, 0.0, -0.25, 0.75, -0.5, -1.0, -0.25, -1.0, -0.5, 0.25, -0.25, 0.25, -0.75, -0.5, -0.25, 0.75, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, -0.5, -0.5, -0.25, 1.0, -0.25, 0.0, -1.0, -0.75, 0.5, 0.5, 1.0, -0.75, 0.75, -0.75, -0.5, 0.0, -1.0, -0.5, -0.25, 1.0, 0.75, 0.5, -0.5, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, 0.5, 0.75, 0.25, -0.5, -0.75, -0.25, 0.5, 0.75, 0.75, 0.25, -0.5, -1.0, -0.25, 1.0, -0.5, 0.25, -0.25, -0.75, -0.75, 0.5, -0.25, 0.5, 1.0, 0.0, -1.0, -0.25, 0.75, 0.5, 0.0, 0.25, 0.75, 0.25, 1.0, -0.75, -0.75, 0.25, 1.0, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.popDebugGroup();
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
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
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    query100.destroy()
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query000
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query001.destroy()
    
    render_pass_encoder0030.setStencilReference(1);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    buffer000.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0020.setPipeline(render_pipeline000);
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
    compute_pass_encoder0011.setPipeline(compute_pipeline004);
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array2 = new Float32Array([-1.0, 0.75, -0.75, 0.25, -0.5, -0.75, -0.5, -1.0, -1.0, -1.0, 0.5, -0.5, 0.25, 1.0, -0.75, 0.5, -0.5, 0.25, 0.5, 0.5, -0.5, 1.0, -0.25, 0.25, -0.5, -0.25, -0.75, -0.75, 0.75, 0.0, -0.25, -0.25, 0.25, 0.0, 1.0, 1.0, 0.5, -1.0, -0.25, 1.0, 1.0, 0.0, 0.25, 0.0, -0.25, -0.5, -0.5, 0.5, 1.0, -1.0, -1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -0.75, 1.0, 0.0, -0.25, -1.0, 0.0, 0.0, 0.0, 1.0, 0.25, -0.5, 0.75, 0.25, -0.75, -1.0, 0.75, -0.5, 0.25, 0.5, 0.25, 0.25, 1.0, -1.0, 0.75, 0.0, 1.0, 0.75, 0.5, -0.5, -0.25, 0.25, 1.0, -1.0, 0.0, -1.0, -0.5, 0.75, 0.0, 0.75, -0.25, 1.0, 0.75, 0.25, 0.0, ]);
    texture100.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
        occlusionQuerySet: query001
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0030.setPipeline(compute_pipeline008);
    device10.pushErrorScope("validation");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0050.setPipeline(compute_pipeline002);
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        occlusionQuerySet: query000
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query001.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture000.destroy();
    device00.queue.submit([]);
    render_pass_encoder0050.insertDebugMarker("marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.executeBundles([])
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.popDebugGroup();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
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
    compute_pass_encoder0010.popDebugGroup()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.setPipeline(render_pipeline001);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    compute_pass_encoder0011.insertDebugMarker("marker")
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0050.setPipeline(render_pipeline001);
    const command_buffer001 = command_encoder001.finish();
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    texture001.destroy();
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const array3 = new Float32Array([1.0, -0.5, -0.25, -0.5, 0.5, 0.5, 0.75, 0.75, -1.0, 0.25, -0.5, -1.0, 0.0, 0.25, 0.5, 1.0, -0.5, 0.5, 0.75, -0.75, 0.0, -0.5, 0.0, -1.0, -1.0, -0.25, -0.75, 0.25, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, -0.5, 0.0, -0.75, 0.0, -0.25, -0.75, -1.0, 1.0, 1.0, 0.0, 0.25, -0.5, -1.0, -0.5, 0.75, -0.75, -0.75, -0.25, -1.0, 0.0, 0.0, 0.5, 1.0, 0.25, 1.0, 0.5, -1.0, 0.0, 0.25, 0.5, 0.5, 1.0, 0.5, 0.75, -0.75, -0.25, -0.5, 0.0, 0.0, 1.0, -0.5, -0.75, 0.75, -0.25, -0.5, -0.5, -0.75, -1.0, -0.25, -1.0, -0.75, -0.5, 0.75, -1.0, 0.25, 1.0, -0.75, 0.0, 0.5, -0.25, 0.5, 0.25, 0.5, -0.5, -0.75, -0.75, ]);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture000
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group000);
    
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    compute_pass_encoder0030.popDebugGroup()
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group002);
    buffer003.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query003
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    buffer101.destroy()
    render_pass_encoder0011.setPipeline(render_pipeline002);
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder004.insertDebugMarker("mymarker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query100.destroy()
    
    buffer002.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0050.insertDebugMarker("marker")
    buffer005.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    query001.destroy()
    render_pass_encoder0060.setPipeline(render_pipeline001);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline002);
    
    query002.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0020.setStencilReference(1);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group003);
    render_pass_encoder0010.popDebugGroup();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group004);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.beginOcclusionQuery(0)
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    render_pass_encoder0020.setVertexBuffer(0, buffer006);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    
    device00.queue.submit([command_buffer001, ]);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
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

    render_bundle_encoder000.setBindGroup(0, bind_group005);
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.pushDebugGroup("group_marker");
    render_pass_encoder0051.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0060.insertDebugMarker("marker");
    buffer004.destroy()
    buffer0010.destroy()
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder0020.setStencilReference(1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.setPipeline(render_pipeline000);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder0050.setVertexBuffer(0, buffer007);
    command_encoder100.clearBuffer(buffer102);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query003
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
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
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0031.setPipeline(render_pipeline000);
    
    render_pass_encoder0031.endOcclusionQuery()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.draw(3);
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group006);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer000.destroy()
    buffer008.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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

    render_pass_encoder0051.setBindGroup(0, bind_group007);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    query000.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.setVertexBuffer(0, buffer0016);
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
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
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer0014.destroy()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group008);
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer0017
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
    render_pass_encoder0030.popDebugGroup();
    texture001.destroy();
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    render_pass_encoder0010.beginOcclusionQuery(1)
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder1000.setPipeline(render_pipeline103);
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    buffer0012.destroy()
    command_encoder005.clearBuffer(buffer0012);
    render_pass_encoder0051.drawIndirect(buffer005, 0);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.endOcclusionQuery()
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    texture002.destroy();
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group009);
    compute_pass_encoder0011.popDebugGroup()
    buffer001.destroy()
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline104);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    command_encoder003.copyBufferToBuffer(
        buffer0016,
        0,
        buffer0021,
        0,
        400
    );
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder0031.beginOcclusionQuery(0)
    render_pass_encoder0040.setVertexBuffer(0, buffer004);
    buffer0019.destroy()
    buffer0015.destroy()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0030.setVertexBuffer(0, buffer008);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer104.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0031.popDebugGroup();
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0030.draw(3);
    
    device20.pushErrorScope("validation");
    device00.pushErrorScope("validation");
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0011.insertDebugMarker("marker");
    
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0021.setStencilReference(1);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    buffer0021.destroy()
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
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
    
    buffer200.destroy()
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setPipeline(render_pipeline001);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0032.setPipeline(render_pipeline003);
    render_pass_encoder0021.setPipeline(render_pipeline001);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.setVertexBuffer(0, buffer0011);
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0051.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.setVertexBuffer(0, buffer0011);
    render_pass_encoder0060.setVertexBuffer(0, buffer008);
    render_pass_encoder0011.endOcclusionQuery()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndirect(buffer009, 0);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder0010.setVertexBuffer(0, buffer0018);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0012);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0040.end();
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0013);
    render_pass_encoder0041.setVertexBuffer(0, buffer0024);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
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

    render_pass_encoder0021.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0032, 0);
    compute_pass_encoder0050.end();
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1000.setVertexBuffer(0, buffer106);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder0041.drawIndirect(buffer0033, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0051.setIndexBuffer(buffer0017, "uint16");
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group0016);
    render_pass_encoder0040.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0032.setVertexBuffer(0, buffer0025);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0032.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.end();
    command_encoder004.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0021.setVertexBuffer(0, buffer009);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0032.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0051.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0031.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0011.end();
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0032.drawIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0031.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    device10.queue.submit([command_buffer100, ]);
    command_encoder003.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0035, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0032.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0032.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    device30.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer0014, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0051.drawIndirect(buffer0020, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0031.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.draw(3);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    device20.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0041, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    device30.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0021.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0051.drawIndirect(buffer0024, 0);
    render_pass_encoder0051.drawIndirect(buffer0035, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1000.end();
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0032.end();
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0043, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
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
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder0032.drawIndirect(buffer0044, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndirect(buffer0044, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0050.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0060.end();
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0019);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0043, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0030, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1000.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0032.drawIndirect(buffer0035, 0);
    render_pass_encoder0032.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder0032.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0010.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0032.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0060.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0060.drawIndirect(buffer0027, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0021);
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0022);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndirect(buffer0045, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0040, 0);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    compute_pass_encoder0050.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndexed(3);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0023);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0031.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0032.setIndexBuffer(buffer0056, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.drawIndirect(buffer0050, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0024);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndexed(3);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer006, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0032.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.end();
    render_pass_encoder0032.drawIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    compute_pass_encoder0030.end();
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
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.draw(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer005, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndirect(buffer0066, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndirect(buffer0021, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0031.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder1000.end();
    render_pass_encoder0021.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0032, 0);
    render_pass_encoder0032.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0031.end();
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0065, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndirect(buffer0047, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0041.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0067, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder0010.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0025);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0026);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0032.drawIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0034, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0011.end();
    render_pass_encoder0021.setIndexBuffer(buffer0065, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.drawIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0074, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    device10.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    compute_pass_encoder0010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0075, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0075, 0);
    render_pass_encoder0032.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0055, 0);
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0028);
    render_pass_encoder0010.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder0011.end();
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0029);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0030);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0032.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0031);
    render_pass_encoder0041.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer005, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.popDebugGroup();
    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
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
                    buffer: buffer0084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0085,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0032);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0032.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0033);
    render_pass_encoder0060.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0050.drawIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder0032.drawIndirect(buffer0074, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndirect(buffer0084, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndirect(buffer0050, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0031.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0030.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0021.drawIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    device30.queue.submit([]);
    render_pass_encoder0032.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
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
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0031.drawIndirect(buffer0052, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0060.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0060, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer009, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
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
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0034);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0051.drawIndirect(buffer0062, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0083, "uint16");
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
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
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0035);
    render_pass_encoder0041.drawIndirect(buffer0055, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
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
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0036);
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder0020.drawIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0066, "uint16");
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
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0037);
    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0098,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0038);
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndirect(buffer0088, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndirect(buffer0058, 0);
    render_pass_encoder0060.drawIndirect(buffer0098, 0);
    render_pass_encoder0041.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0017, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0070, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0051.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00100,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0039);
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0021.setIndexBuffer(buffer0045, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00101, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00101, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0050.drawIndirect(buffer001, 0);
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
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0040);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0045, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0032.drawIndirect(buffer0051, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0031.drawIndirect(buffer0080, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00104, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndirect(buffer0075, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00105, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00105, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
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
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0041);
    render_pass_encoder0010.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0086, "uint16");
    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00109,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0042);
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    render_pass_encoder0051.drawIndirect(buffer006, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0060.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0043);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0035, "uint16");
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
    render_pass_encoder0010.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndirect(buffer00106, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
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
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0044);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0097, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0073, 0);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0020.end();
    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00116,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0045);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndirect(buffer0075, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0051.end();
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer0071, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0050.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    device10.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0051.end();
    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00118,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0046);
    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00120,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0047);
    render_pass_encoder0040.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0032.drawIndirect(buffer00104, 0);
    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00122,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0048);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00124,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0049);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.drawIndirect(buffer0098, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0032.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.end();
    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
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
                    buffer: buffer00125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00126,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0050);
    render_pass_encoder0050.drawIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndirect(buffer0079, 0);
    device00.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer00100, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0060.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0041.drawIndirect(buffer00112, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0050.popDebugGroup();
    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00128,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0051);
    render_pass_encoder0041.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0055, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00129, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00129, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00130, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00130, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0050.drawIndirect(buffer00112, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00131, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer00131, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00105, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00132, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00132, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([]);
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
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0052);
    render_pass_encoder0011.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0051.drawIndirect(buffer0082, 0);
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
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0053);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0077, 0);
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
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0054);
    render_pass_encoder0030.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer00116, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00135, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndirect(buffer00131, 0);
    render_pass_encoder0032.setIndexBuffer(buffer006, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0051.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00105, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.setIndexBuffer(buffer00135, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0051.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndirect(buffer00107, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00120, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0051.drawIndirect(buffer00106, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0051.drawIndirect(buffer00130, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.popDebugGroup();
    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00140,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0055);
    render_pass_encoder0051.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0011.drawIndirect(buffer00115, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0060.popDebugGroup();
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
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0056);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00143, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00143, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1000.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndirect(buffer00129, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00105, 0);
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0081, 0);
    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00145,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0057);
    render_pass_encoder0041.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer00123, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0025, "uint16");
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
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0058);
    render_pass_encoder0060.drawIndirect(buffer00143, 0);
    render_pass_encoder0051.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0050.drawIndirect(buffer00129, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00115, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00112, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00148, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00148, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00150,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0059);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0031.drawIndirect(buffer00129, 0);
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00132, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00100, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00106, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0051, "uint16");
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0032.drawIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    device10.queue.submit([]);
    render_pass_encoder0032.popDebugGroup();
    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
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
                    buffer: buffer00151,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00152,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0060);
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0032.drawIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndirect(buffer00148, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0030.draw(3);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00143, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00154,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0061);
    render_pass_encoder0041.drawIndexedIndirect(buffer00131, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer00132, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00119, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00156,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0062);
    render_pass_encoder0041.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0040.drawIndirect(buffer00146, 0);
    render_pass_encoder0040.drawIndirect(buffer00104, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00143, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00112, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    device00.queue.submit([]);
    render_pass_encoder0060.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer00126, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00111, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0075, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0032.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndirect(buffer00112, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00157, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0031.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder0051.drawIndirect(buffer00131, 0);
    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00159,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0063);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer00157, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0032.drawIndirect(buffer0042, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00104, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00148, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00157, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00122, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0060.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00160, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00160, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00161, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00161, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0032.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
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
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0064);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndirect(buffer00130, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00165,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0065);
    render_pass_encoder0021.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.drawIndirect(buffer00119, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer00133, 0);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00166, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00166, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00112, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0051.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00116, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0011.drawIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00138, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0087, 0);
    render_pass_encoder0021.drawIndirect(buffer0097, 0);
    device20.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0060.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndirect(buffer00161, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00105, 0);
    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00167,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00168,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0066);
    render_pass_encoder0011.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0081, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0060.drawIndirect(buffer0085, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndirect(buffer0087, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00115, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0059, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0031.drawIndirect(buffer00161, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0088, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer00161, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.drawIndirect(buffer00142, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0050.drawIndirect(buffer00130, 0);
    render_pass_encoder0031.drawIndirect(buffer0088, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndirect(buffer00130, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0051.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.setIndexBuffer(buffer00162, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndirect(buffer00157, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00158, "uint16");
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
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0067);
    render_pass_encoder0021.setIndexBuffer(buffer00134, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00143, 0);
    render_pass_encoder0011.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00171, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00171, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0075, 0);
    render_pass_encoder0010.drawIndirect(buffer0075, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer00105, 0);
    render_pass_encoder0051.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.end();
    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0068 = device00.createBindGroup({
        label: "bind_group0068",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00172,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00173,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0068);
    render_pass_encoder0060.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndirect(buffer0099, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00129, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0014, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0089, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0020.end();
    device20.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0060.drawIndirect(buffer0081, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00172, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00150, 0);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00174, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00174, 0);
    render_pass_encoder0010.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00137, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00147, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndirect(buffer00110, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00175, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00175, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00176, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00176, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00177, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00177, 0);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0088, 0);
    render_pass_encoder0031.drawIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0032.drawIndirect(buffer0088, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder1000.popDebugGroup();
    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00179 = device00.createBuffer({
        label: "buffer00179",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00178,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00179,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0069);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0093, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0031.end();
    const buffer00180 = device00.createBuffer({
        label: "buffer00180",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00180,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00181,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0070);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0072, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0051.drawIndirect(buffer00175, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00183 = device00.createBuffer({
        label: "buffer00183",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00182,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00183,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0071);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer00177, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0060.drawIndirect(buffer00129, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder0032.drawIndirect(buffer00160, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1000.end();
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0032.end();
    device10.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00180, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00157, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0051.drawIndirect(buffer00157, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00129, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0051, 0);
    const buffer00184 = device00.createBuffer({
        label: "buffer00184",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0072 = device00.createBindGroup({
        label: "bind_group0072",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00184,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00185,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0072);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00186, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00186, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    const buffer00187 = device00.createBuffer({
        label: "buffer00187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00188 = device00.createBuffer({
        label: "buffer00188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0073 = device00.createBindGroup({
        label: "bind_group0073",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00188,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0073);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0032.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0050.drawIndirect(buffer00132, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0074 = device00.createBindGroup({
        label: "bind_group0074",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00189,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00190,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0074);
    render_pass_encoder0030.drawIndirect(buffer00107, 0);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0032.drawIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndirect(buffer00181, 0);
    render_pass_encoder1000.end();
    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00191,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00192,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0075);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0011.drawIndirect(buffer00171, 0);
    render_pass_encoder0041.drawIndirect(buffer00171, 0);
    render_pass_encoder0010.drawIndirect(buffer00161, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00121, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer00175, 0);
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00178, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    render_pass_encoder0060.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndirect(buffer00176, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0032.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0075, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00152, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00193,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00194,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0076);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00186, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00195, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00195, 0);
    render_pass_encoder0051.drawIndirect(buffer00168, 0);
    render_pass_encoder0011.drawIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0011.drawIndirect(buffer00130, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00186, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndirect(buffer00131, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0075, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00196, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00143, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00159, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer00174, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0021.drawIndirect(buffer00171, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer00148, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    device20.queue.submit([]);
    render_pass_encoder0032.drawIndirect(buffer00102, 0);
    render_pass_encoder0020.drawIndirect(buffer00179, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0090, "uint16");
    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00197,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00198,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0077);
    render_pass_encoder0041.drawIndirect(buffer00186, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00199 = device00.createBuffer({
        label: "buffer00199",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00199, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00199, 0);
    render_pass_encoder0011.drawIndirect(buffer00164, 0);
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00143, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00195, 0);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0020.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0032.drawIndirect(buffer0055, 0);
    render_pass_encoder0060.drawIndirect(buffer00132, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndirect(buffer00196, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0045, 0);
    const buffer00200 = device00.createBuffer({
        label: "buffer00200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00201 = device00.createBuffer({
        label: "buffer00201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00201,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0078);
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndirect(buffer00199, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder1000.end();
    const buffer00202 = device00.createBuffer({
        label: "buffer00202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00203 = device00.createBuffer({
        label: "buffer00203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00203,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0079);
    render_pass_encoder0031.drawIndirect(buffer00132, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00194, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00190, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00204 = device00.createBuffer({
        label: "buffer00204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00204, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00204, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00146, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer00171, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder0021.drawIndirect(buffer00161, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0051.drawIndirect(buffer00176, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00159, 0);
    render_pass_encoder0030.drawIndirect(buffer00148, 0);
    render_pass_encoder0030.drawIndirect(buffer00200, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00150, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0011.drawIndirect(buffer00104, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndirect(buffer00144, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer0051, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.end();
    render_pass_encoder0032.drawIndirect(buffer00172, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00205 = device00.createBuffer({
        label: "buffer00205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00205, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00205, 0);
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0021.setIndexBuffer(buffer00193, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndirect(buffer00166, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00171, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00129, 0);
    device00.queue.submit([]);
    render_pass_encoder0051.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer00108, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer00163, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0021.end();
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0051.drawIndirect(buffer00160, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0051.drawIndirect(buffer00204, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0010.drawIndirect(buffer00186, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0020.drawIndirect(buffer00129, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0020.drawIndirect(buffer00160, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00206, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00206, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0051.drawIndirect(buffer00109, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0060.drawIndirect(buffer00198, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer00191, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00207, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00207, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer00153, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00209,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0080);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer00130, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00173, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00159, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder0030.drawIndirect(buffer00186, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0086, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00157, 0);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndirect(buffer00190, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer00173, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndirect(buffer0062, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0035, 0);
    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00210,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00211,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0081);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer00129, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00212, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00212, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00210, 0);
    compute_pass_encoder0030.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00143, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndirect(buffer00112, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00204, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00142, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00117, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00213, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00213, 0);
    render_pass_encoder0040.drawIndirect(buffer00161, 0);
    render_pass_encoder0060.drawIndirect(buffer0096, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndirect(buffer001, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0032.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer00124, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndirect(buffer00106, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00185, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00207, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([]);
    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00214,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00215,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0082);
    render_pass_encoder0041.drawIndirect(buffer00153, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0060.drawIndirect(buffer00143, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0032.end();
    render_pass_encoder0040.drawIndirect(buffer00114, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0049, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0040.end();
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00177, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0031.drawIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndirect(buffer0086, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0051.end();
    render_pass_encoder0021.setIndexBuffer(buffer00110, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00207, 0);
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndirect(buffer0088, 0);
    render_pass_encoder0032.drawIndirect(buffer002, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.drawIndirect(buffer0073, 0);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00131, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer00216 = device00.createBuffer({
        label: "buffer00216",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00217 = device00.createBuffer({
        label: "buffer00217",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00216,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00217,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0083);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndirect(buffer00177, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00153, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder1000.end();
    render_pass_encoder0060.setIndexBuffer(buffer00185, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer006, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer00212, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0021.drawIndirect(buffer00161, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder0031.drawIndirect(buffer00171, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00194, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndirect(buffer0075, 0);
    render_pass_encoder0021.drawIndirect(buffer00131, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0043, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0032.setIndexBuffer(buffer0099, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00212, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0051.drawIndirect(buffer0066, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00130, 0);
    const buffer00218 = device00.createBuffer({
        label: "buffer00218",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00219 = device00.createBuffer({
        label: "buffer00219",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00218,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00219,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0084);
    render_pass_encoder0050.drawIndirect(buffer00171, 0);
    render_pass_encoder0050.drawIndirect(buffer00199, 0);
    render_pass_encoder0010.drawIndirect(buffer00205, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0021.drawIndirect(buffer00166, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00124, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0032.drawIndirect(buffer00143, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00175, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00220 = device00.createBuffer({
        label: "buffer00220",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00220, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00220, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0032.drawIndirect(buffer0025, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00221 = device00.createBuffer({
        label: "buffer00221",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00221, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00221, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0098, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0041.drawIndirect(buffer00166, 0);
    render_pass_encoder0032.drawIndirect(buffer00104, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0088, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00222 = device00.createBuffer({
        label: "buffer00222",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00222, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00222, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0032.drawIndirect(buffer00204, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00121, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0077, 0);
    render_pass_encoder0021.drawIndirect(buffer00169, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder0032.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0021.drawIndirect(buffer00166, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0031.end();
    const buffer00223 = device00.createBuffer({
        label: "buffer00223",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00224 = device00.createBuffer({
        label: "buffer00224",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0085 = device00.createBindGroup({
        label: "bind_group0085",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00223,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00224,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0085);
    render_pass_encoder0051.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer00196, 0);
    render_pass_encoder0031.drawIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndirect(buffer00195, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00225 = device00.createBuffer({
        label: "buffer00225",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00225, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00225, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0010.drawIndirect(buffer00214, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00200, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00174, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0032.setIndexBuffer(buffer00214, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00168, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00130, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00190, 0);
    render_pass_encoder0020.drawIndirect(buffer00129, 0);
    render_pass_encoder0032.drawIndirect(buffer00132, 0);
    render_pass_encoder0050.drawIndirect(buffer0086, 0);
    render_pass_encoder0020.drawIndirect(buffer00177, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00222, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00226 = device00.createBuffer({
        label: "buffer00226",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00226, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00226, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer0094, "uint16");
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0031.drawIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer00190, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer0075, 0);
    render_pass_encoder0032.drawIndirect(buffer00143, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00227 = device00.createBuffer({
        label: "buffer00227",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00227, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00227, 0);
    render_pass_encoder0020.drawIndirect(buffer00195, 0);
    render_pass_encoder0051.drawIndirect(buffer00199, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00159, 0);
    render_pass_encoder0032.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndirect(buffer00165, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00228 = device00.createBuffer({
        label: "buffer00228",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00228, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00228, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndirect(buffer0040, 0);
    const buffer00229 = device00.createBuffer({
        label: "buffer00229",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00230 = device00.createBuffer({
        label: "buffer00230",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0086 = device00.createBindGroup({
        label: "bind_group0086",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00229,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00230,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0086);
    render_pass_encoder0011.drawIndirect(buffer00196, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder0030.drawIndirect(buffer00177, 0);
    render_pass_encoder0050.drawIndirect(buffer00228, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0041.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndirect(buffer00188, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00199, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer00222, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00166, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00161, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00231 = device00.createBuffer({
        label: "buffer00231",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00231, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00231, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0090, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer00104, 0);
    render_pass_encoder0032.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0060, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00112, 0);
    compute_pass_encoder0011.end();
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0060.drawIndirect(buffer00198, 0);
    render_pass_encoder0020.drawIndirect(buffer00225, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0050.drawIndirect(buffer00131, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0020.drawIndirect(buffer00206, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00213, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer00225, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0060.drawIndirect(buffer00231, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer00159, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00143, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00176, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00132, 0);
    render_pass_encoder0011.drawIndirect(buffer00181, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0032.drawIndirect(buffer00174, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device20.queue.submit([]);
    render_pass_encoder0060.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder0060.drawIndirect(buffer0095, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0051.drawIndirect(buffer0039, 0);
    render_pass_encoder0032.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndirect(buffer00171, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndirect(buffer00171, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00157, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0043, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer00195, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00199, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0031.drawIndirect(buffer00176, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00232 = device00.createBuffer({
        label: "buffer00232",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00232, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00232, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndirect(buffer00228, 0);
    render_pass_encoder0011.drawIndirect(buffer00129, 0);
    render_pass_encoder0011.drawIndirect(buffer00148, 0);
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0040.drawIndirect(buffer00175, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00157, 0);
    compute_pass_encoder0050.end();
    const buffer00233 = device00.createBuffer({
        label: "buffer00233",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00234 = device00.createBuffer({
        label: "buffer00234",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0087 = device00.createBindGroup({
        label: "bind_group0087",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00233,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00234,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0087);
    render_pass_encoder0041.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer00230, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00235 = device00.createBuffer({
        label: "buffer00235",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00235, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00235, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0038, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer00236 = device00.createBuffer({
        label: "buffer00236",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00237 = device00.createBuffer({
        label: "buffer00237",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0088 = device00.createBindGroup({
        label: "bind_group0088",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00236,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00237,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0088);
    render_pass_encoder0031.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer0033, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0051, "uint16");
    const buffer00238 = device00.createBuffer({
        label: "buffer00238",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00239 = device00.createBuffer({
        label: "buffer00239",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0089 = device00.createBindGroup({
        label: "bind_group0089",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00238,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00239,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0089);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer00228, 0);
    render_pass_encoder0051.drawIndirect(buffer00104, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00202, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0050.drawIndirect(buffer00100, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00112, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndirect(buffer00204, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0032.drawIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndirect(buffer00213, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0032.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndirect(buffer00206, 0);
    render_pass_encoder1000.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00222, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0060.drawIndirect(buffer00186, 0);
    render_pass_encoder0020.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0011.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.drawIndirect(buffer00132, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0041.drawIndirect(buffer00161, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00212, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer00221, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0032.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer00118, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0040.endOcclusionQuery()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00210, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00172, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0032.end();
    const buffer00240 = device00.createBuffer({
        label: "buffer00240",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00241 = device00.createBuffer({
        label: "buffer00241",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0090 = device00.createBindGroup({
        label: "bind_group0090",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00240,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00241,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0090);
    render_pass_encoder0051.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.drawIndirect(buffer0075, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndirect(buffer00176, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer00131, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00203, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0031.drawIndirect(buffer00231, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00134, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00242 = device00.createBuffer({
        label: "buffer00242",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00242, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00242, 0);
    render_pass_encoder0051.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.setIndexBuffer(buffer00184, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0021.drawIndirect(buffer00228, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0032.drawIndirect(buffer0065, 0);
    render_pass_encoder0032.drawIndirect(buffer00196, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00191, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00220, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer00148, 0);
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0032.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00171, 0);
    const buffer00243 = device00.createBuffer({
        label: "buffer00243",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00244 = device00.createBuffer({
        label: "buffer00244",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0091 = device00.createBindGroup({
        label: "bind_group0091",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00243,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00244,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0091);
    render_pass_encoder0030.draw(3);
    const buffer00245 = device00.createBuffer({
        label: "buffer00245",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00246 = device00.createBuffer({
        label: "buffer00246",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0092 = device00.createBindGroup({
        label: "bind_group0092",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00245,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00246,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0092);
    render_pass_encoder0031.setIndexBuffer(buffer00198, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00130, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndirect(buffer00226, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00105, 0);
    const buffer00247 = device00.createBuffer({
        label: "buffer00247",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00248 = device00.createBuffer({
        label: "buffer00248",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0093 = device00.createBindGroup({
        label: "bind_group0093",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00247,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00248,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0093);
    render_pass_encoder0050.drawIndirect(buffer00176, 0);
    render_pass_encoder0032.drawIndirect(buffer00204, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0084, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00157, 0);
    render_pass_encoder0021.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0050.drawIndirect(buffer00220, 0);
    render_pass_encoder0030.drawIndirect(buffer00231, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0021.drawIndirect(buffer0075, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0032.drawIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00231, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0060.drawIndirect(buffer00228, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00249 = device00.createBuffer({
        label: "buffer00249",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00249, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00249, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0032.drawIndirect(buffer00195, 0);
    const buffer00250 = device00.createBuffer({
        label: "buffer00250",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00251 = device00.createBuffer({
        label: "buffer00251",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0094 = device00.createBindGroup({
        label: "bind_group0094",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00250,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00251,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0094);
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00130, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0060.drawIndirect(buffer00235, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00244, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer00221, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00216, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0063, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00252 = device00.createBuffer({
        label: "buffer00252",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00252, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00252, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    const buffer00253 = device00.createBuffer({
        label: "buffer00253",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00254 = device00.createBuffer({
        label: "buffer00254",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0095 = device00.createBindGroup({
        label: "bind_group0095",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00253,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00254,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0095);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer00242, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0041.popDebugGroup();
    const buffer00255 = device00.createBuffer({
        label: "buffer00255",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00256 = device00.createBuffer({
        label: "buffer00256",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0096 = device00.createBindGroup({
        label: "bind_group0096",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00255,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00256,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0096);
    render_pass_encoder0040.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00257 = device00.createBuffer({
        label: "buffer00257",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00257, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00257, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0075, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer00249, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00176, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00232, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndirect(buffer00222, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00258 = device00.createBuffer({
        label: "buffer00258",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00258, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00258, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00146, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00238, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00171, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndirect(buffer00186, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00225, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00161, 0);
    render_pass_encoder0020.drawIndirect(buffer00140, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndirect(buffer00228, 0);
    render_pass_encoder0032.drawIndirect(buffer0086, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer00259 = device00.createBuffer({
        label: "buffer00259",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00260 = device00.createBuffer({
        label: "buffer00260",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0097 = device00.createBindGroup({
        label: "bind_group0097",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00259,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00260,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0097);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder0011.end();
    render_pass_encoder0050.drawIndirect(buffer00226, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0011.drawIndirect(buffer00200, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer00221, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00261 = device00.createBuffer({
        label: "buffer00261",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00261, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00261, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00235, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0030, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00204, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0060.drawIndirect(buffer00235, 0);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00252, 0);
    const buffer00262 = device00.createBuffer({
        label: "buffer00262",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00263 = device00.createBuffer({
        label: "buffer00263",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0098 = device00.createBindGroup({
        label: "bind_group0098",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00262,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00263,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0098);
    render_pass_encoder0021.drawIndirect(buffer00242, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0095, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0040.drawIndirect(buffer00166, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00256, 0);
    render_pass_encoder0030.drawIndirect(buffer00195, 0);
    render_pass_encoder0051.drawIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0021.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0032.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0051.drawIndirect(buffer00222, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00146, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00262, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00213, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0083, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00253, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0075, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer00205, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00184, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00250, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00207, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00261, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00229, 0);
    device10.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer00209, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00130, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00233, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0086, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0060.drawIndirect(buffer00204, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.setIndexBuffer(buffer00250, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndirect(buffer00206, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00264 = device00.createBuffer({
        label: "buffer00264",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00264, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00264, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00240, "uint16");
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0040, "uint16");
    const buffer00265 = device00.createBuffer({
        label: "buffer00265",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00266 = device00.createBuffer({
        label: "buffer00266",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0099 = device00.createBindGroup({
        label: "bind_group0099",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00265,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00266,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0099);
    render_pass_encoder0030.setIndexBuffer(buffer00238, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00164, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00259, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndirect(buffer00156, 0);
    render_pass_encoder0030.drawIndirect(buffer00205, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0061, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer00160, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00205, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00171, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0032.end();
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00116, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00162, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0058, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.end();
    render_pass_encoder0030.end();
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00243, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0032.drawIndirect(buffer00161, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00202, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00166, 0);
    const buffer00267 = device00.createBuffer({
        label: "buffer00267",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00268 = device00.createBuffer({
        label: "buffer00268",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00100 = device00.createBindGroup({
        label: "bind_group00100",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00267,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00268,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00100);
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndirect(buffer00144, 0);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer00225, 0);
    render_pass_encoder0050.drawIndirect(buffer00131, 0);
    render_pass_encoder0010.drawIndirect(buffer00221, 0);
    render_pass_encoder0032.drawIndirect(buffer00224, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00199, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00177, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0010.drawIndirect(buffer00132, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0032.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndirect(buffer00177, 0);
    render_pass_encoder0050.drawIndirect(buffer00112, 0);
    render_pass_encoder0041.drawIndirect(buffer00178, 0);
    render_pass_encoder0032.drawIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndirect(buffer00172, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0032.drawIndirect(buffer00261, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0084, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer00171, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0031.drawIndirect(buffer00174, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00221, 0);
    render_pass_encoder0051.drawIndirect(buffer0075, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer00226, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer00207, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0021.drawIndirect(buffer00220, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00222, 0);
    device00.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder0051.drawIndirect(buffer00171, 0);
    const buffer00269 = device00.createBuffer({
        label: "buffer00269",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00270 = device00.createBuffer({
        label: "buffer00270",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00101 = device00.createBindGroup({
        label: "bind_group00101",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00269,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00270,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00101);
    render_pass_encoder0021.drawIndirect(buffer00148, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00178, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00219, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00138, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer00261, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0051.drawIndirect(buffer00143, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndirect(buffer00193, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    const buffer00271 = device00.createBuffer({
        label: "buffer00271",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00272 = device00.createBuffer({
        label: "buffer00272",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00102 = device00.createBindGroup({
        label: "bind_group00102",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00271,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00272,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00102);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndirect(buffer00166, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00225, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00273 = device00.createBuffer({
        label: "buffer00273",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00273, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00273, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00261, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00274 = device00.createBuffer({
        label: "buffer00274",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00274, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00274, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0052, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0030.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00275 = device00.createBuffer({
        label: "buffer00275",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00275, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00275, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00276 = device00.createBuffer({
        label: "buffer00276",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00276, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00276, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndirect(buffer00134, 0);
    const buffer00277 = device00.createBuffer({
        label: "buffer00277",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00278 = device00.createBuffer({
        label: "buffer00278",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00103 = device00.createBindGroup({
        label: "bind_group00103",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00277,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00278,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00103);
    render_pass_encoder0032.drawIndirect(buffer00229, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0031.drawIndirect(buffer00221, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndirect(buffer00171, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndirect(buffer00158, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00195, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0050.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.drawIndirect(buffer00161, 0);
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00166, 0);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndirect(buffer00226, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00138, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00176, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0050.drawIndirect(buffer0097, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0050.drawIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00135, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0010.drawIndirect(buffer00100, 0);
    render_pass_encoder0011.drawIndirect(buffer00228, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00225, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0031.drawIndirect(buffer00163, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.drawIndirect(buffer00174, 0);
    render_pass_encoder0020.drawIndirect(buffer00148, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0040.drawIndirect(buffer00204, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0041.drawIndirect(buffer00237, 0);
    render_pass_encoder0020.drawIndirect(buffer00193, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndirect(buffer00135, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00119, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00139, 0);
    render_pass_encoder0021.drawIndirect(buffer00166, 0);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0031.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0050.drawIndirect(buffer00129, 0);
    render_pass_encoder0041.drawIndirect(buffer00225, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0041.end();
    render_pass_encoder0011.setIndexBuffer(buffer00233, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00256, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer00145, 0);
    render_pass_encoder0011.drawIndirect(buffer00276, 0);
    render_pass_encoder0040.drawIndirect(buffer00148, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0032.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0010.drawIndirect(buffer00226, 0);
    render_pass_encoder0031.drawIndirect(buffer0075, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0032.drawIndirect(buffer00171, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00220, 0);
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    const buffer00279 = device00.createBuffer({
        label: "buffer00279",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00280 = device00.createBuffer({
        label: "buffer00280",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00104 = device00.createBindGroup({
        label: "bind_group00104",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00279,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00280,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00104);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndirect(buffer00276, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndirect(buffer00274, 0);
    render_pass_encoder0011.drawIndirect(buffer00228, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0011.drawIndirect(buffer0075, 0);
    render_pass_encoder0032.end();
    const buffer00281 = device00.createBuffer({
        label: "buffer00281",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00282 = device00.createBuffer({
        label: "buffer00282",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00105 = device00.createBindGroup({
        label: "bind_group00105",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00281,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00282,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00105);
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0032.drawIndirect(buffer00159, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00282, "uint16");
    const buffer00283 = device00.createBuffer({
        label: "buffer00283",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00284 = device00.createBuffer({
        label: "buffer00284",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00106 = device00.createBindGroup({
        label: "bind_group00106",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00283,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00284,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00106);
    render_pass_encoder0032.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00151, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    const buffer00285 = device00.createBuffer({
        label: "buffer00285",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00286 = device00.createBuffer({
        label: "buffer00286",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00107 = device00.createBindGroup({
        label: "bind_group00107",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00285,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00286,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00107);
    render_pass_encoder0051.drawIndirect(buffer00241, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.end();
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00216, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00176, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer00106, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer00244, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00162, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0031.drawIndirect(buffer00203, 0);
    device00.queue.submit([]);
    render_pass_encoder0051.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00207, 0);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.drawIndirect(buffer00128, 0);
    render_pass_encoder0050.drawIndirect(buffer00157, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer00276, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0075, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00281, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0040.drawIndirect(buffer00171, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0021.drawIndirect(buffer00277, 0);
    render_pass_encoder0041.drawIndirect(buffer00222, 0);
    render_pass_encoder0010.drawIndirect(buffer00275, 0);
    render_pass_encoder0050.drawIndirect(buffer00260, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00131, 0);
    render_pass_encoder0032.drawIndirect(buffer00213, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndirect(buffer00252, 0);
    render_pass_encoder0010.drawIndirect(buffer0087, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer00252, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00166, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndirect(buffer0075, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0032.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer00257, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00188, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00230, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0032.drawIndirect(buffer00275, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00216, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer00195, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00171, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00258, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer00257, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0031.drawIndirect(buffer00196, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0051.drawIndirect(buffer00220, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    const buffer00287 = device00.createBuffer({
        label: "buffer00287",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00288 = device00.createBuffer({
        label: "buffer00288",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00108 = device00.createBindGroup({
        label: "bind_group00108",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00287,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00288,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00108);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00252, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00222, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0060.drawIndirect(buffer0071, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00175, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00187, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00227, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0020.drawIndirect(buffer00225, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00230, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndirect(buffer00112, 0);
    const buffer00289 = device00.createBuffer({
        label: "buffer00289",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00290 = device00.createBuffer({
        label: "buffer00290",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00109 = device00.createBindGroup({
        label: "bind_group00109",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00289,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00290,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00109);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00131, 0);
    render_pass_encoder0032.drawIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer00274, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00283, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00291 = device00.createBuffer({
        label: "buffer00291",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00291, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00291, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00254, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndirect(buffer00258, 0);
    render_pass_encoder0011.drawIndirect(buffer00143, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0032.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer00213, 0);
    render_pass_encoder0021.drawIndirect(buffer00279, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.drawIndirect(buffer00129, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0041.drawIndirect(buffer00216, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00257, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer00161, 0);
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    const buffer00292 = device00.createBuffer({
        label: "buffer00292",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00293 = device00.createBuffer({
        label: "buffer00293",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00110 = device00.createBindGroup({
        label: "bind_group00110",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00292,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00293,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00110);
    render_pass_encoder0060.drawIndirect(buffer00161, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00291, 0);
    render_pass_encoder0021.drawIndirect(buffer00171, 0);
    render_pass_encoder0032.drawIndirect(buffer00221, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    device20.queue.submit([]);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    render_pass_encoder0050.drawIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndirect(buffer00291, 0);
    render_pass_encoder0040.drawIndirect(buffer00160, 0);
    render_pass_encoder0060.drawIndirect(buffer00261, 0);
    const buffer00294 = device00.createBuffer({
        label: "buffer00294",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00295 = device00.createBuffer({
        label: "buffer00295",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00111 = device00.createBindGroup({
        label: "bind_group00111",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00294,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00295,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00111);
    render_pass_encoder0050.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00253, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00237, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00176, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00243, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0032.setIndexBuffer(buffer00217, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00264, 0);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndirect(buffer00199, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndirect(buffer00171, 0);
    render_pass_encoder0040.drawIndirect(buffer00174, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0060.drawIndirect(buffer00226, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00296 = device00.createBuffer({
        label: "buffer00296",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00296, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00296, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00297 = device00.createBuffer({
        label: "buffer00297",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00297, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00297, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00204, 0);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00251, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00101, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0032.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00130, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer00199, 0);
    render_pass_encoder0020.drawIndirect(buffer00204, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0041.drawIndirect(buffer00246, 0);
    render_pass_encoder0032.drawIndirect(buffer00112, 0);
    render_pass_encoder0010.drawIndirect(buffer00174, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00242, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00176, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0051.drawIndirect(buffer00186, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0050.drawIndirect(buffer00113, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0030.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndirect(buffer0079, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndirect(buffer00242, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0057, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00298 = device00.createBuffer({
        label: "buffer00298",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00298, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00298, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer00197, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00291, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0011.drawIndirect(buffer00297, 0);
    render_pass_encoder0011.drawIndirect(buffer00220, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    render_pass_encoder0020.drawIndirect(buffer00287, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndirect(buffer00171, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndirect(buffer00291, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0051.drawIndirect(buffer0066, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00299 = device00.createBuffer({
        label: "buffer00299",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00299, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00299, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00122, 0);
    render_pass_encoder0021.drawIndirect(buffer0075, 0);
    render_pass_encoder0031.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0031.drawIndirect(buffer00297, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0032.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00232, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0020.drawIndirect(buffer0075, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0033, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00222, 0);
    render_pass_encoder0051.drawIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0040.drawIndirect(buffer0097, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0040.drawIndirect(buffer00231, 0);
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00295, 0);
    render_pass_encoder0050.drawIndirect(buffer00166, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00191, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00275, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00163, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0040.drawIndirect(buffer00286, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0031.drawIndirect(buffer00170, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndirect(buffer00148, 0);
    render_pass_encoder0031.drawIndirect(buffer00166, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndirect(buffer00231, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndirect(buffer00220, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0051.setIndexBuffer(buffer00235, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00227, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndirect(buffer00250, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00262, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00195, 0);
    render_pass_encoder0010.drawIndirect(buffer00174, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00169, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0032.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndirect(buffer00258, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer00226, 0);
    const buffer00300 = device00.createBuffer({
        label: "buffer00300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00301 = device00.createBuffer({
        label: "buffer00301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00112 = device00.createBindGroup({
        label: "bind_group00112",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00301,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00112);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00228, 0);
    render_pass_encoder0021.drawIndirect(buffer00127, 0);
    render_pass_encoder0032.drawIndirect(buffer00234, 0);
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00149, "uint16");
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00200, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00152, 0);
    render_pass_encoder0060.drawIndirect(buffer00297, 0);
    render_pass_encoder0032.drawIndirect(buffer00221, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0032.drawIndirect(buffer00216, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0041.drawIndirect(buffer00225, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00129, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer00213, 0);
    render_pass_encoder0010.drawIndirect(buffer00196, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0010.drawIndirect(buffer00206, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer00196, 0);
    render_pass_encoder0040.drawIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0041.drawIndirect(buffer00196, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00254, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00175, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0041.drawIndirect(buffer00177, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0011.drawIndirect(buffer0078, 0);
    render_pass_encoder0060.drawIndirect(buffer00130, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00291, 0);
    const buffer00302 = device00.createBuffer({
        label: "buffer00302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00303 = device00.createBuffer({
        label: "buffer00303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00113 = device00.createBindGroup({
        label: "bind_group00113",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00303,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00113);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer00124, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0060.drawIndirect(buffer0071, 0);
    render_pass_encoder0051.drawIndirect(buffer00129, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.drawIndirect(buffer00175, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00105, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00291, 0);
    const buffer00304 = device00.createBuffer({
        label: "buffer00304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00305 = device00.createBuffer({
        label: "buffer00305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00114 = device00.createBindGroup({
        label: "bind_group00114",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00305,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00114);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00162, 0);
    compute_pass_encoder0011.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00173, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00299, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00273, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer00235, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00174, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00276, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer00160, 0);
    device10.queue.submit([]);
    render_pass_encoder0032.drawIndirect(buffer00220, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0032.drawIndirect(buffer00222, 0);
    render_pass_encoder0021.drawIndirect(buffer0066, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00227, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0040.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0030.drawIndirect(buffer00227, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00221, 0);
    const buffer00306 = device00.createBuffer({
        label: "buffer00306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00307 = device00.createBuffer({
        label: "buffer00307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00115 = device00.createBindGroup({
        label: "bind_group00115",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00307,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00115);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00195, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0078, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer00165, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00207, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00231, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00142, 0);
    const buffer00308 = device00.createBuffer({
        label: "buffer00308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00309 = device00.createBuffer({
        label: "buffer00309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00116 = device00.createBindGroup({
        label: "bind_group00116",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00309,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00116);
    render_pass_encoder0050.drawIndirect(buffer0063, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00310 = device00.createBuffer({
        label: "buffer00310",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00310, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00310, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00112, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer005, 0);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00242, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer00207, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndirect(buffer00249, 0);
    render_pass_encoder0020.drawIndirect(buffer00195, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0051.drawIndirect(buffer00157, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00267, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00254, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndirect(buffer00302, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer00231, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.drawIndirect(buffer00227, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer00299, 0);
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0078, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00199, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer00303, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00141, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0051.drawIndexed(3);
    device10.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00253, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00296, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00311 = device00.createBuffer({
        label: "buffer00311",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00311, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00311, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0060.drawIndirect(buffer00166, 0);
    render_pass_encoder0050.drawIndirect(buffer00249, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndirect(buffer00199, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00236, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00231, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00186, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer00166, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00296, 0);
    const buffer00312 = device00.createBuffer({
        label: "buffer00312",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00313 = device00.createBuffer({
        label: "buffer00313",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00117 = device00.createBindGroup({
        label: "bind_group00117",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00312,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00313,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00117);
    render_pass_encoder0011.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00264, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndirect(buffer00177, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndirect(buffer00166, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndirect(buffer00129, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0060.drawIndirect(buffer00276, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndirect(buffer00171, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0065, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer00157, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.end();
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00177, 0);
    render_pass_encoder0010.drawIndirect(buffer00227, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndirect(buffer00204, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer00276, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndirect(buffer0065, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00221, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00228, 0);
    render_pass_encoder0021.drawIndirect(buffer00132, 0);
    render_pass_encoder0050.drawIndirect(buffer00274, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00261, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer00195, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00226, 0);
    device10.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00286, 0);
    render_pass_encoder0010.drawIndirect(buffer00157, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00249, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer00309, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00249, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer00314 = device00.createBuffer({
        label: "buffer00314",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00315 = device00.createBuffer({
        label: "buffer00315",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00118 = device00.createBindGroup({
        label: "bind_group00118",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00314,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00315,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00118);
    render_pass_encoder0011.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00303, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer00229, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndirect(buffer00310, 0);
    render_pass_encoder0030.drawIndirect(buffer00203, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00132, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00183, 0);
    render_pass_encoder0060.drawIndirect(buffer00161, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00239, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00316 = device00.createBuffer({
        label: "buffer00316",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00316, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00316, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00234, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    const buffer00317 = device00.createBuffer({
        label: "buffer00317",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00318 = device00.createBuffer({
        label: "buffer00318",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00119 = device00.createBindGroup({
        label: "bind_group00119",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00317,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00318,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00119);
    render_pass_encoder0041.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00143, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.drawIndirect(buffer00275, 0);
    render_pass_encoder0031.drawIndirect(buffer00209, 0);
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0032.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0050.drawIndirect(buffer00242, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00220, 0);
    compute_pass_encoder0010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndirect(buffer00152, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00315, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndirect(buffer00298, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00319 = device00.createBuffer({
        label: "buffer00319",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00319, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00319, 0);
    device10.queue.submit([]);
    const buffer00320 = device00.createBuffer({
        label: "buffer00320",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00321 = device00.createBuffer({
        label: "buffer00321",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00120 = device00.createBindGroup({
        label: "bind_group00120",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00320,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00321,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00120);
    render_pass_encoder0051.drawIndirect(buffer00276, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer00162, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0031.drawIndirect(buffer00252, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0031.end();
    render_pass_encoder0021.drawIndirect(buffer00222, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00246, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00101, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00311, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer00207, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer00129, 0);
    render_pass_encoder0051.drawIndirect(buffer00138, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00259, "uint16");
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00200, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00169, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00259, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0011.setIndexBuffer(buffer00220, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00102, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00322 = device00.createBuffer({
        label: "buffer00322",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00322, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00322, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1000.draw(3);
    render_pass_encoder0032.drawIndirect(buffer00195, 0);
    render_pass_encoder0011.drawIndirect(buffer00316, 0);
    const buffer00323 = device00.createBuffer({
        label: "buffer00323",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00324 = device00.createBuffer({
        label: "buffer00324",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00121 = device00.createBindGroup({
        label: "bind_group00121",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00323,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00324,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00121);
    render_pass_encoder0051.drawIndexedIndirect(buffer00143, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00249, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer00265, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00176, 0);
    render_pass_encoder0010.drawIndirect(buffer0079, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00283, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndirect(buffer00205, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0032.drawIndirect(buffer00297, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00151, 0);
    render_pass_encoder0041.drawIndirect(buffer00240, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00242, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00310, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.drawIndirect(buffer00298, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndirect(buffer00186, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00227, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00284, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0060.drawIndirect(buffer00286, 0);
    render_pass_encoder0041.drawIndirect(buffer0065, 0);
    render_pass_encoder0032.drawIndirect(buffer00143, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00249, 0);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndirect(buffer00199, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00265, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00187, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00115, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00249, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0088, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00325 = device00.createBuffer({
        label: "buffer00325",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00325, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00325, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer00188, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00212, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0060.drawIndirect(buffer00252, 0);
    render_pass_encoder0031.drawIndirect(buffer00272, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00201, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0050.drawIndirect(buffer00220, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer00222, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00237, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer00235, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0010.drawIndirect(buffer00291, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0021.drawIndirect(buffer00275, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0020.drawIndirect(buffer00220, 0);
    render_pass_encoder0040.drawIndirect(buffer00176, 0);
    render_pass_encoder0031.drawIndirect(buffer00222, 0);
    render_pass_encoder0051.drawIndirect(buffer00161, 0);
    render_pass_encoder0032.drawIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndirect(buffer00101, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0021.drawIndirect(buffer00256, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00168, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer005, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00186, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0021.drawIndirect(buffer00318, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00235, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndirect(buffer00275, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndirect(buffer00297, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00205, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00221, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00326 = device00.createBuffer({
        label: "buffer00326",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00326, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00326, 0);
    render_pass_encoder0021.drawIndirect(buffer00148, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00214, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00278, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0011.drawIndirect(buffer00249, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00289, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0066, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0066, 0);
    const buffer00327 = device00.createBuffer({
        label: "buffer00327",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00328 = device00.createBuffer({
        label: "buffer00328",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00122 = device00.createBindGroup({
        label: "bind_group00122",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00327,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00328,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00122);
    render_pass_encoder0041.drawIndexedIndirect(buffer0082, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndirect(buffer00252, 0);
    render_pass_encoder0051.drawIndirect(buffer0072, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00112, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00326, 0);
    render_pass_encoder0041.drawIndirect(buffer00226, 0);
    render_pass_encoder0030.drawIndirect(buffer00276, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0050, 0);
    const buffer00329 = device00.createBuffer({
        label: "buffer00329",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00330 = device00.createBuffer({
        label: "buffer00330",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00123 = device00.createBindGroup({
        label: "bind_group00123",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00329,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00330,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00123);
    render_pass_encoder0060.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00322, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndirect(buffer00112, 0);
    render_pass_encoder0032.drawIndirect(buffer00274, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00331 = device00.createBuffer({
        label: "buffer00331",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00331, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00331, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0032.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer00157, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00220, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0050.drawIndirect(buffer00196, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0030.drawIndirect(buffer00299, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00171, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00332 = device00.createBuffer({
        label: "buffer00332",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00332, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00332, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder0041.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.end();
    render_pass_encoder0032.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00235, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00259, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00302, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00225, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00316, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00264, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00206, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0050.drawIndirect(buffer0099, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00240, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndirect(buffer00227, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00204, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00333 = device00.createBuffer({
        label: "buffer00333",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00333, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00333, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer00201, "uint16");
    const buffer00334 = device00.createBuffer({
        label: "buffer00334",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00335 = device00.createBuffer({
        label: "buffer00335",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00124 = device00.createBindGroup({
        label: "bind_group00124",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00334,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00335,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00124);
    render_pass_encoder0040.drawIndirect(buffer00308, 0);
    device30.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    const buffer00336 = device00.createBuffer({
        label: "buffer00336",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00337 = device00.createBuffer({
        label: "buffer00337",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00125 = device00.createBindGroup({
        label: "bind_group00125",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00336,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00337,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00125);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0032.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndirect(buffer00207, 0);
    render_pass_encoder0051.drawIndirect(buffer00195, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0041.drawIndirect(buffer00242, 0);
    compute_pass_encoder0030.popDebugGroup()
    const buffer00338 = device00.createBuffer({
        label: "buffer00338",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00339 = device00.createBuffer({
        label: "buffer00339",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00126 = device00.createBindGroup({
        label: "bind_group00126",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00338,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00339,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00126);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndirect(buffer0084, 0);
    render_pass_encoder0021.drawIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0031.drawIndirect(buffer00220, 0);
    render_pass_encoder0021.drawIndirect(buffer00275, 0);
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    render_pass_encoder0032.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndirect(buffer00332, 0);
    device20.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer00204, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0011.drawIndirect(buffer0076, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0020.drawIndirect(buffer00326, 0);
    render_pass_encoder0060.drawIndirect(buffer00267, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00128, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer00131, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00322, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer00207, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0060.drawIndirect(buffer0060, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer00326, 0);
    render_pass_encoder0010.drawIndirect(buffer00257, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0041.drawIndirect(buffer00220, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0051.drawIndirect(buffer00112, 0);
    render_pass_encoder0032.drawIndirect(buffer0010, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00291, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00166, 0);
    render_pass_encoder0030.drawIndirect(buffer00171, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    const buffer00340 = device00.createBuffer({
        label: "buffer00340",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00341 = device00.createBuffer({
        label: "buffer00341",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00127 = device00.createBindGroup({
        label: "bind_group00127",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00340,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00341,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00127);
    render_pass_encoder0021.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0051.drawIndirect(buffer00225, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00225, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00216, 0);
    render_pass_encoder0010.drawIndirect(buffer00321, 0);
    render_pass_encoder0032.drawIndirect(buffer00235, 0);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00310, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer00169, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00242, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0060.drawIndirect(buffer00245, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0040.drawIndirect(buffer00271, 0);
    render_pass_encoder0041.drawIndirect(buffer00171, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0030.drawIndirect(buffer00175, 0);
    render_pass_encoder0051.drawIndirect(buffer00326, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.drawIndirect(buffer00326, 0);
    render_pass_encoder0030.drawIndirect(buffer00311, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00174, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00194, "uint16");
    render_pass_encoder0040.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00342 = device00.createBuffer({
        label: "buffer00342",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00342, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00342, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0021.drawIndirect(buffer00291, 0);
    render_pass_encoder0040.drawIndirect(buffer00175, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0032.drawIndirect(buffer0040, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00189, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00315, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00232, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer00273, 0);
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00254, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00200, 0);
    const buffer00343 = device00.createBuffer({
        label: "buffer00343",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00344 = device00.createBuffer({
        label: "buffer00344",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00128 = device00.createBindGroup({
        label: "bind_group00128",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00343,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00344,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00128);
    render_pass_encoder0040.drawIndirect(buffer00220, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0032.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndirect(buffer00221, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0021.drawIndirect(buffer00258, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00277, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0030.drawIndirect(buffer0075, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00322, 0);
    render_pass_encoder0032.drawIndirect(buffer00129, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00206, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndirect(buffer00319, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer00299, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0051.drawIndirect(buffer00332, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.end();
    render_pass_encoder0020.setIndexBuffer(buffer00235, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0031.end();
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0010.drawIndirect(buffer00308, 0);
    render_pass_encoder0031.drawIndirect(buffer00316, 0);
    render_pass_encoder0032.drawIndirect(buffer00311, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndirect(buffer00226, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0050.drawIndirect(buffer00326, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer006, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00236, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00316, 0);
    render_pass_encoder0050.drawIndirect(buffer00242, 0);
    render_pass_encoder0041.drawIndirect(buffer00299, 0);
    render_pass_encoder0011.drawIndirect(buffer00204, 0);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0060.drawIndirect(buffer00274, 0);
    render_pass_encoder0060.drawIndirect(buffer00140, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00319, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00221, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00116, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0032.drawIndirect(buffer00221, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0051.drawIndirect(buffer00225, 0);
    render_pass_encoder0050.drawIndirect(buffer00131, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00112, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00238, "uint16");
    render_pass_encoder0041.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00345 = device00.createBuffer({
        label: "buffer00345",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00345, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00345, 0);
    const buffer00346 = device00.createBuffer({
        label: "buffer00346",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00347 = device00.createBuffer({
        label: "buffer00347",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00129 = device00.createBindGroup({
        label: "bind_group00129",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00346,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00347,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00129);
    device10.queue.submit([command_buffer100, ]);
    const buffer00348 = device00.createBuffer({
        label: "buffer00348",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00349 = device00.createBuffer({
        label: "buffer00349",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00130 = device00.createBindGroup({
        label: "bind_group00130",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00348,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00349,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00130);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00342, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0032.setIndexBuffer(buffer00182, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    const buffer00350 = device00.createBuffer({
        label: "buffer00350",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00351 = device00.createBuffer({
        label: "buffer00351",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00131 = device00.createBindGroup({
        label: "bind_group00131",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00350,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00351,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00131);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00148, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndirect(buffer00212, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0030.drawIndirect(buffer00206, 0);
    render_pass_encoder0060.drawIndirect(buffer00197, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0032.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00268, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0050.drawIndirect(buffer00257, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00352 = device00.createBuffer({
        label: "buffer00352",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00352, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00352, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0032.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0020.drawIndirect(buffer00227, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00349, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0051.drawIndirect(buffer00220, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer00309, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00117, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00298, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00235, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00295, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00252, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00322, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0040.drawIndirect(buffer00195, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00345, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00353 = device00.createBuffer({
        label: "buffer00353",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00353, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00353, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0051.drawIndirect(buffer00274, 0);
    render_pass_encoder0010.drawIndirect(buffer00334, 0);
    render_pass_encoder0032.drawIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndirect(buffer00195, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00326, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00275, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndirect(buffer00130, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0078, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00145, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0010.drawIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00148, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer00332, 0);
    render_pass_encoder0041.drawIndirect(buffer00242, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00306, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0041.drawIndirect(buffer00220, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer00299, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndirect(buffer00331, 0);
    render_pass_encoder0020.drawIndirect(buffer00276, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00302, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00201, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00274, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00210, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00233, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.end();
    device30.queue.submit([]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00206, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00258, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00233, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0011.drawIndirect(buffer0064, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0060.setIndexBuffer(buffer00197, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00354 = device00.createBuffer({
        label: "buffer00354",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00354, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00354, 0);
    render_pass_encoder0021.drawIndirect(buffer00131, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0051.drawIndirect(buffer0021, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0040.drawIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00282, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0031.drawIndirect(buffer00245, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00220, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00198, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer00254, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndirect(buffer00220, 0);
    render_pass_encoder0030.drawIndirect(buffer00165, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0050.drawIndirect(buffer00204, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00325, 0);
    render_pass_encoder0011.drawIndirect(buffer00213, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00321, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00199, 0);
    device00.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0011.drawIndirect(buffer00228, 0);
    render_pass_encoder0040.drawIndirect(buffer00104, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00355 = device00.createBuffer({
        label: "buffer00355",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00355, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00355, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0031.drawIndirect(buffer00227, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer00199, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0094, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0021.drawIndirect(buffer00171, 0);
    render_pass_encoder0030.drawIndirect(buffer00177, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndirect(buffer00143, 0);
    render_pass_encoder0031.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0030.drawIndirect(buffer00261, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00308, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndirect(buffer0075, 0);
    render_pass_encoder0011.drawIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00129, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00298, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00222, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer00150, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndirect(buffer00345, 0);
    render_pass_encoder0021.drawIndirect(buffer00316, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0040.drawIndirect(buffer00204, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00329, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0041.drawIndirect(buffer00333, 0);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00198, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00331, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndirect(buffer00339, 0);
    device00.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00356 = device00.createBuffer({
        label: "buffer00356",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00356, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00356, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00345, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00186, 0);
    render_pass_encoder0011.drawIndirect(buffer00176, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0050.drawIndirect(buffer00212, 0);
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00220, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0060.setIndexBuffer(buffer00232, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00125, 0);
    render_pass_encoder0032.drawIndirect(buffer0075, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00235, 0);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0050.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0032.drawIndirect(buffer00225, 0);
    render_pass_encoder0021.popDebugGroup();
    const buffer00357 = device00.createBuffer({
        label: "buffer00357",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00358 = device00.createBuffer({
        label: "buffer00358",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00132 = device00.createBindGroup({
        label: "bind_group00132",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00357,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00358,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00132);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0051.drawIndirect(buffer0064, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0032.drawIndirect(buffer00356, 0);
    device00.queue.submit([]);
    const buffer00359 = device00.createBuffer({
        label: "buffer00359",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00360 = device00.createBuffer({
        label: "buffer00360",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00133 = device00.createBindGroup({
        label: "bind_group00133",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00359,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00360,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00133);
    render_pass_encoder0020.setIndexBuffer(buffer00269, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer00319, 0);
    render_pass_encoder0032.drawIndirect(buffer00309, 0);
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0051.drawIndirect(buffer00213, 0);
    render_pass_encoder0011.drawIndirect(buffer00353, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00309, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.draw(3);
    render_pass_encoder0051.setIndexBuffer(buffer00230, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0050.setIndexBuffer(buffer00265, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0010.drawIndirect(buffer00350, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00357, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00357, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00314, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0050.drawIndirect(buffer00297, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00226, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer00221, 0);
    render_pass_encoder0050.drawIndirect(buffer00176, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndirect(buffer00196, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer00345, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00315, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00301, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0010.drawIndirect(buffer00215, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0031.drawIndirect(buffer00332, 0);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.setIndexBuffer(buffer00301, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00299, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00332, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00278, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0032.drawIndirect(buffer00132, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndirect(buffer00276, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer00352, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00361 = device00.createBuffer({
        label: "buffer00361",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00361, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00361, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0031.drawIndirect(buffer00103, 0);
    render_pass_encoder0041.drawIndirect(buffer00132, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0050.drawIndirect(buffer00310, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndirect(buffer00246, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00129, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00109, 0);
    const buffer00362 = device00.createBuffer({
        label: "buffer00362",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00363 = device00.createBuffer({
        label: "buffer00363",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00134 = device00.createBindGroup({
        label: "bind_group00134",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00362,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00363,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00134);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0011.drawIndirect(buffer00148, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndirect(buffer00354, 0);
    render_pass_encoder0020.drawIndirect(buffer00249, 0);
    render_pass_encoder0011.drawIndirect(buffer00249, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00226, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer00361, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00361, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0032.drawIndirect(buffer00204, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0050.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00225, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer00290, 0);
    device10.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00333, 0);
    const buffer00364 = device00.createBuffer({
        label: "buffer00364",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00365 = device00.createBuffer({
        label: "buffer00365",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00135 = device00.createBindGroup({
        label: "bind_group00135",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00364,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00365,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00135);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00132, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00209, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer00227, 0);
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndirect(buffer0074, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer00205, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00303, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    const buffer00366 = device00.createBuffer({
        label: "buffer00366",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00367 = device00.createBuffer({
        label: "buffer00367",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00136 = device00.createBindGroup({
        label: "bind_group00136",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00366,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00367,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00136);
    render_pass_encoder0021.setIndexBuffer(buffer00324, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0041.drawIndirect(buffer00309, 0);
    render_pass_encoder0051.end();
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndirect(buffer00273, 0);
    render_pass_encoder0060.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0060.drawIndirect(buffer00286, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.drawIndirect(buffer00174, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00194, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0050.drawIndirect(buffer00228, 0);
    render_pass_encoder0030.drawIndirect(buffer00264, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0032.drawIndirect(buffer0088, 0);
    const buffer00368 = device00.createBuffer({
        label: "buffer00368",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00369 = device00.createBuffer({
        label: "buffer00369",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00137 = device00.createBindGroup({
        label: "bind_group00137",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00368,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00369,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00137);
    render_pass_encoder0010.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00166, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00226, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    const buffer00370 = device00.createBuffer({
        label: "buffer00370",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00371 = device00.createBuffer({
        label: "buffer00371",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00138 = device00.createBindGroup({
        label: "bind_group00138",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00370,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00371,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00138);
    render_pass_encoder0051.drawIndirect(buffer00132, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndirect(buffer00242, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00264, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0010.drawIndirect(buffer00264, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00364, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00260, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndirect(buffer00296, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer00354, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0032.drawIndirect(buffer00326, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0030.drawIndirect(buffer00353, 0);
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndirect(buffer00207, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0030.drawIndirect(buffer00147, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00148, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00296, 0);
    render_pass_encoder0050.drawIndirect(buffer00205, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00273, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer00233, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00192, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00349, 0);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer00226, 0);
    render_pass_encoder0051.drawIndirect(buffer00176, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00193, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00345, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00277, 0);
    const buffer00372 = device00.createBuffer({
        label: "buffer00372",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00373 = device00.createBuffer({
        label: "buffer00373",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00139 = device00.createBindGroup({
        label: "bind_group00139",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00372,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00373,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00139);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer00319, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndirect(buffer00298, 0);
    device20.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer00222, 0);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndirect(buffer00175, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00249, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00254, 0);
    render_pass_encoder0060.end();
    device20.queue.submit([]);
    const buffer00374 = device00.createBuffer({
        label: "buffer00374",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00375 = device00.createBuffer({
        label: "buffer00375",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00140 = device00.createBindGroup({
        label: "bind_group00140",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00374,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00375,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00140);
    const buffer00376 = device00.createBuffer({
        label: "buffer00376",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00377 = device00.createBuffer({
        label: "buffer00377",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00141 = device00.createBindGroup({
        label: "bind_group00141",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00376,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00377,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00141);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0010.drawIndirect(buffer00298, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndirect(buffer00210, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00175, 0);
    compute_pass_encoder0050.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer00276, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00170, "uint16");
    const buffer00378 = device00.createBuffer({
        label: "buffer00378",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00379 = device00.createBuffer({
        label: "buffer00379",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00142 = device00.createBindGroup({
        label: "bind_group00142",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00378,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00379,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00142);
    render_pass_encoder0011.drawIndirect(buffer00342, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00194, 0);
    render_pass_encoder0051.drawIndirect(buffer00264, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00270, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer00274, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00296, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00199, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer00319, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00239, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00361, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    const buffer00380 = device00.createBuffer({
        label: "buffer00380",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00381 = device00.createBuffer({
        label: "buffer00381",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00143 = device00.createBindGroup({
        label: "bind_group00143",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00380,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00381,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00143);
    render_pass_encoder0040.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00238, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0011.drawIndirect(buffer00275, 0);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0032.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndirect(buffer00217, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00331, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00296, 0);
    render_pass_encoder0050.drawIndirect(buffer00354, 0);
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00360, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndirect(buffer00348, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndirect(buffer0098, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer00291, 0);
    render_pass_encoder0020.drawIndirect(buffer00199, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00343, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00222, 0);
    const buffer00382 = device00.createBuffer({
        label: "buffer00382",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00383 = device00.createBuffer({
        label: "buffer00383",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00144 = device00.createBindGroup({
        label: "bind_group00144",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00382,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00383,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00144);
    render_pass_encoder0032.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder1000.draw(3);
    const buffer00384 = device00.createBuffer({
        label: "buffer00384",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00385 = device00.createBuffer({
        label: "buffer00385",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00145 = device00.createBindGroup({
        label: "bind_group00145",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00384,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00385,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00145);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00112, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer00319, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00205, 0);
    device00.queue.submit([]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00316, 0);
    render_pass_encoder0032.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndirect(buffer0075, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer00158, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0041.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer00172, 0);
    render_pass_encoder0051.drawIndirect(buffer00205, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder1000.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00386 = device00.createBuffer({
        label: "buffer00386",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00386, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00386, 0);
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00316, 0);
    render_pass_encoder0011.drawIndirect(buffer00364, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00287, 0);
    render_pass_encoder0050.drawIndirect(buffer00228, 0);
    const buffer00387 = device00.createBuffer({
        label: "buffer00387",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00388 = device00.createBuffer({
        label: "buffer00388",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00146 = device00.createBindGroup({
        label: "bind_group00146",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00387,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00388,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00146);
    render_pass_encoder0031.setIndexBuffer(buffer00172, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00144, "uint16");
    const buffer00389 = device00.createBuffer({
        label: "buffer00389",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00390 = device00.createBuffer({
        label: "buffer00390",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00147 = device00.createBindGroup({
        label: "bind_group00147",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00389,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00390,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00147);
    render_pass_encoder0030.drawIndexedIndirect(buffer00386, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer00325, 0);
    compute_pass_encoder0050.end();
    const buffer00391 = device00.createBuffer({
        label: "buffer00391",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00392 = device00.createBuffer({
        label: "buffer00392",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00148 = device00.createBindGroup({
        label: "bind_group00148",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00391,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00392,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00148);
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00275, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00391, 0);
    const buffer00393 = device00.createBuffer({
        label: "buffer00393",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00394 = device00.createBuffer({
        label: "buffer00394",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00149 = device00.createBindGroup({
        label: "bind_group00149",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00393,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00394,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00149);
    render_pass_encoder0020.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer0076, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00181, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00249, 0);
    render_pass_encoder0030.drawIndirect(buffer00222, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndirect(buffer00299, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0040.drawIndirect(buffer00143, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00351, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00345, 0);
    device10.queue.submit([]);
    render_pass_encoder0032.drawIndirect(buffer00228, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndirect(buffer00359, 0);
    render_pass_encoder0021.drawIndirect(buffer00311, 0);
    const buffer00395 = device00.createBuffer({
        label: "buffer00395",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00396 = device00.createBuffer({
        label: "buffer00396",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00150 = device00.createBindGroup({
        label: "bind_group00150",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00395,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00396,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00150);
    compute_pass_encoder0050.end();
    render_pass_encoder0060.end();
    render_pass_encoder0032.drawIndirect(buffer0050, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0021.drawIndirect(buffer00147, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder0020.drawIndirect(buffer0074, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0051.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0051.drawIndirect(buffer00161, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00306, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer00342, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00242, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    render_pass_encoder0011.drawIndirect(buffer00322, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer00352, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00264, 0);
    const buffer00397 = device00.createBuffer({
        label: "buffer00397",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00398 = device00.createBuffer({
        label: "buffer00398",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00151 = device00.createBindGroup({
        label: "bind_group00151",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00397,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00398,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00151);
    render_pass_encoder0011.drawIndirect(buffer00361, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0030.drawIndirect(buffer0078, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00177, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00166, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0031.setIndexBuffer(buffer00373, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00319, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0010.drawIndirect(buffer00215, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00381, 0);
    render_pass_encoder0010.drawIndirect(buffer00205, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00359, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00379, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00231, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00326, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0041.drawIndirect(buffer00213, 0);
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0051.drawIndirect(buffer00363, 0);
    render_pass_encoder0032.drawIndirect(buffer00367, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00372, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00126, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00399 = device00.createBuffer({
        label: "buffer00399",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00399, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00399, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00345, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00400 = device00.createBuffer({
        label: "buffer00400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00400, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00400, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00261, 0);
    const buffer00401 = device00.createBuffer({
        label: "buffer00401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00402 = device00.createBuffer({
        label: "buffer00402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00152 = device00.createBindGroup({
        label: "bind_group00152",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00402,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00152);
    render_pass_encoder0040.drawIndirect(buffer00195, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00320, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00270, "uint16");
    render_pass_encoder0051.drawIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndirect(buffer00148, 0);
    render_pass_encoder0051.drawIndirect(buffer00235, 0);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00195, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0060.setIndexBuffer(buffer00347, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0051.drawIndirect(buffer00166, 0);
    render_pass_encoder0032.drawIndirect(buffer00273, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer00305, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00291, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndirect(buffer00342, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0032.drawIndirect(buffer006, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0032.setIndexBuffer(buffer00289, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00169, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00288, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00348, 0);
    render_pass_encoder0032.drawIndirect(buffer00282, 0);
    render_pass_encoder0032.drawIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndirect(buffer0024, 0);
    render_pass_encoder0040.drawIndirect(buffer00204, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00399, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00218, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00338, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0051.drawIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndirect(buffer00176, 0);
    render_pass_encoder0032.drawIndirect(buffer00345, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer00222, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer00221, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0032.drawIndirect(buffer00352, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0051.drawIndirect(buffer00278, 0);
    render_pass_encoder0020.drawIndirect(buffer00204, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00305, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00296, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0051.drawIndirect(buffer0074, 0);
    render_pass_encoder0011.drawIndirect(buffer00311, 0);
    render_pass_encoder0020.drawIndirect(buffer00147, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0021.drawIndirect(buffer00311, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0050.end();
    const buffer00403 = device00.createBuffer({
        label: "buffer00403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00404 = device00.createBuffer({
        label: "buffer00404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00153 = device00.createBindGroup({
        label: "bind_group00153",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00404,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00153);
    render_pass_encoder0060.drawIndirect(buffer00260, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0041.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00405 = device00.createBuffer({
        label: "buffer00405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00405, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00405, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer00406 = device00.createBuffer({
        label: "buffer00406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00407 = device00.createBuffer({
        label: "buffer00407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00154 = device00.createBindGroup({
        label: "bind_group00154",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00407,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00154);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00325, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0032.drawIndirect(buffer00227, 0);
    render_pass_encoder0041.drawIndirect(buffer0075, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00376, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00350, 0);
    render_pass_encoder0060.drawIndirect(buffer00407, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00291, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer00364, 0);
    render_pass_encoder0051.drawIndirect(buffer00188, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00219, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer00316, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00316, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00105, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0051.drawIndirect(buffer00227, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndirect(buffer00212, 0);
    render_pass_encoder0060.drawIndirect(buffer00103, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0030.drawIndirect(buffer00229, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.end();
    render_pass_encoder1000.end();
    render_pass_encoder0031.drawIndirect(buffer00132, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00342, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00265, 0);
    render_pass_encoder0031.drawIndirect(buffer00361, 0);
    device10.queue.submit([]);
    const buffer00408 = device00.createBuffer({
        label: "buffer00408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00409 = device00.createBuffer({
        label: "buffer00409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00155 = device00.createBindGroup({
        label: "bind_group00155",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00409,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00155);
    render_pass_encoder0031.setIndexBuffer(buffer00160, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00200, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00186, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0060.drawIndirect(buffer00398, 0);
    render_pass_encoder0020.drawIndirect(buffer00322, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00245, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00331, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer0079, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00254, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer00226, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer00276, 0);
    render_pass_encoder0050.drawIndirect(buffer00175, 0);
    render_pass_encoder0021.drawIndirect(buffer00405, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00355, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00355, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    const buffer00410 = device00.createBuffer({
        label: "buffer00410",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00411 = device00.createBuffer({
        label: "buffer00411",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00156 = device00.createBindGroup({
        label: "bind_group00156",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00410,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00411,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00156);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0050.drawIndirect(buffer00187, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    const buffer00412 = device00.createBuffer({
        label: "buffer00412",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00413 = device00.createBuffer({
        label: "buffer00413",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00157 = device00.createBindGroup({
        label: "bind_group00157",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00412,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00413,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00157);
    render_pass_encoder0020.setIndexBuffer(buffer00175, "uint16");
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0050.drawIndirect(buffer00315, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer00414 = device00.createBuffer({
        label: "buffer00414",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00415 = device00.createBuffer({
        label: "buffer00415",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00158 = device00.createBindGroup({
        label: "bind_group00158",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00414,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00415,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00158);
    render_pass_encoder0020.drawIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00385, 0);
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00412, 0);
    render_pass_encoder0051.drawIndirect(buffer00353, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer005, ]);
    const buffer00416 = device00.createBuffer({
        label: "buffer00416",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00417 = device00.createBuffer({
        label: "buffer00417",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00159 = device00.createBindGroup({
        label: "bind_group00159",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00416,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00417,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00159);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0010.drawIndirect(buffer00273, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0021.drawIndirect(buffer00204, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00334, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    const buffer00418 = device00.createBuffer({
        label: "buffer00418",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00419 = device00.createBuffer({
        label: "buffer00419",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00160 = device00.createBindGroup({
        label: "bind_group00160",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00418,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00419,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00160);
    render_pass_encoder0041.drawIndirect(buffer00264, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00420 = device00.createBuffer({
        label: "buffer00420",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00420, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00420, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer00130, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00228, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00259, 0);
    render_pass_encoder0021.drawIndirect(buffer00242, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    const buffer00421 = device00.createBuffer({
        label: "buffer00421",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00422 = device00.createBuffer({
        label: "buffer00422",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00161 = device00.createBindGroup({
        label: "bind_group00161",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00421,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00422,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00161);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0011.drawIndirect(buffer00156, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00284, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00345, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00205, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00235, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00279, "uint16");
    const buffer00423 = device00.createBuffer({
        label: "buffer00423",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00424 = device00.createBuffer({
        label: "buffer00424",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00162 = device00.createBindGroup({
        label: "bind_group00162",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00423,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00424,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00162);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer00392, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00297, 0);
    render_pass_encoder0051.drawIndirect(buffer00105, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer00137, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer00220, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0073, 0);
    render_pass_encoder0050.drawIndirect(buffer0040, 0);
    device10.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer00137, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00385, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer00420, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00404, 0);
    render_pass_encoder0032.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.drawIndirect(buffer00186, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00371, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00425 = device00.createBuffer({
        label: "buffer00425",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00425, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00425, 0);
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0032.drawIndirect(buffer00226, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndirect(buffer00326, 0);
    render_pass_encoder0010.drawIndirect(buffer00103, 0);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00195, 0);
    const buffer00426 = device00.createBuffer({
        label: "buffer00426",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00427 = device00.createBuffer({
        label: "buffer00427",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00163 = device00.createBindGroup({
        label: "bind_group00163",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00426,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00427,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00163);
    render_pass_encoder0050.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer00298, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00208, 0);
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0041.drawIndirect(buffer00417, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00216, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0051.setIndexBuffer(buffer00358, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0040, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00207, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00266, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0040.drawIndirect(buffer00275, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00395, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00387, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00276, 0);
    render_pass_encoder0032.drawIndirect(buffer00207, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndirect(buffer00331, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder0021.drawIndirect(buffer00235, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00204, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer002, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0050.drawIndirect(buffer00141, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndirect(buffer00287, 0);
    render_pass_encoder0020.drawIndirect(buffer00274, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer0045, 0);
    render_pass_encoder0031.drawIndirect(buffer00213, 0);
    render_pass_encoder0032.drawIndirect(buffer00193, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0032.drawIndirect(buffer00200, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00288, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00261, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00307, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00125, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00378, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00112, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer00399, 0);
    render_pass_encoder0032.drawIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00276, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00428 = device00.createBuffer({
        label: "buffer00428",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00428, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00428, 0);
    render_pass_encoder0010.drawIndirect(buffer00212, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0031.drawIndirect(buffer00345, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00286, 0);
    render_pass_encoder0010.drawIndirect(buffer00299, 0);
    render_pass_encoder0050.drawIndirect(buffer00171, 0);
    render_pass_encoder0060.drawIndirect(buffer00316, 0);
    render_pass_encoder0020.drawIndirect(buffer00359, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0020.drawIndirect(buffer00119, 0);
    device20.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer00148, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00386, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00321, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer00358, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00158, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00292, "uint16");
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer00230, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00354, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0060.drawIndirect(buffer00249, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00257, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00125, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00163, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00305, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0051.drawIndirect(buffer00212, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00355, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndirect(buffer00156, 0);
    const buffer00429 = device00.createBuffer({
        label: "buffer00429",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00430 = device00.createBuffer({
        label: "buffer00430",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00164 = device00.createBindGroup({
        label: "bind_group00164",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00429,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00430,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00164);
    render_pass_encoder0021.setIndexBuffer(buffer00181, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00165, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00372, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0050.setIndexBuffer(buffer00203, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00361, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0010.draw(3);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0051.drawIndirect(buffer00182, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00428, 0);
    render_pass_encoder0030.drawIndirect(buffer00227, 0);
    const buffer00431 = device00.createBuffer({
        label: "buffer00431",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00432 = device00.createBuffer({
        label: "buffer00432",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00165 = device00.createBindGroup({
        label: "bind_group00165",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00431,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00432,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00165);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00174, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00342, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00353, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndirect(buffer00176, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndirect(buffer00195, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0031.drawIndirect(buffer00131, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00361, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00399, 0);
    const buffer00433 = device00.createBuffer({
        label: "buffer00433",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00434 = device00.createBuffer({
        label: "buffer00434",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00166 = device00.createBindGroup({
        label: "bind_group00166",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00433,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00434,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00166);
    render_pass_encoder0031.setIndexBuffer(buffer00182, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00407, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00213, 0);
    render_pass_encoder0041.drawIndirect(buffer00363, 0);
    render_pass_encoder0020.drawIndirect(buffer00400, 0);
    render_pass_encoder0021.drawIndirect(buffer00131, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0060.drawIndirect(buffer00132, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndirect(buffer00316, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00435 = device00.createBuffer({
        label: "buffer00435",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00435, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00435, 0);
    render_pass_encoder0030.drawIndirect(buffer00389, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0010.drawIndirect(buffer00264, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00428, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndirect(buffer00231, 0);
    render_pass_encoder0020.drawIndirect(buffer00342, 0);
    const buffer00436 = device00.createBuffer({
        label: "buffer00436",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00437 = device00.createBuffer({
        label: "buffer00437",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00167 = device00.createBindGroup({
        label: "bind_group00167",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00436,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00437,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00167);
    render_pass_encoder0041.drawIndexedIndirect(buffer00399, 0);
    render_pass_encoder0050.drawIndirect(buffer00406, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer00143, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0011.drawIndirect(buffer00221, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer00220, 0);
    render_pass_encoder0051.drawIndirect(buffer00425, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00150, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0040.setIndexBuffer(buffer00398, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00284, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00435, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00153, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00242, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00221, 0);
    const buffer00438 = device00.createBuffer({
        label: "buffer00438",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00439 = device00.createBuffer({
        label: "buffer00439",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00168 = device00.createBindGroup({
        label: "bind_group00168",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00438,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00439,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00168);
    render_pass_encoder0010.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00341, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer00155, 0);
    render_pass_encoder0030.drawIndirect(buffer00199, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer00440 = device00.createBuffer({
        label: "buffer00440",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00441 = device00.createBuffer({
        label: "buffer00441",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00169 = device00.createBindGroup({
        label: "bind_group00169",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00440,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00441,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00169);
    render_pass_encoder0040.drawIndirect(buffer00291, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer00354, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00358, 0);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer00254, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00101, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.drawIndirect(buffer00225, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer00258, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndirect(buffer00405, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00372, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00413, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00430, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer00345, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0031.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00259, "uint16");
    const buffer00442 = device00.createBuffer({
        label: "buffer00442",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00443 = device00.createBuffer({
        label: "buffer00443",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00170 = device00.createBindGroup({
        label: "bind_group00170",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00442,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00443,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00170);
    render_pass_encoder0011.drawIndirect(buffer00242, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00257, 0);
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer00386, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0011.drawIndirect(buffer00319, 0);
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0051.drawIndirect(buffer00166, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00145, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00171, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndirect(buffer00261, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0060.drawIndirect(buffer00264, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0020.drawIndirect(buffer00183, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0031.drawIndirect(buffer00326, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndirect(buffer00112, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00245, 0);
    render_pass_encoder0050.drawIndirect(buffer00403, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer00434, 0);
    const buffer00444 = device00.createBuffer({
        label: "buffer00444",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00445 = device00.createBuffer({
        label: "buffer00445",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00171 = device00.createBindGroup({
        label: "bind_group00171",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00444,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00445,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00171);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer00335, 0);
    render_pass_encoder0060.drawIndirect(buffer00391, 0);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00339, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndirect(buffer00353, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndirect(buffer00435, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00150, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndirect(buffer0075, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0060.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0021.drawIndirect(buffer00258, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00145, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.setIndexBuffer(buffer00122, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00238, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00334, 0);
    render_pass_encoder0020.drawIndirect(buffer00417, 0);
    render_pass_encoder0010.drawIndirect(buffer00331, 0);
    render_pass_encoder0060.drawIndirect(buffer00213, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0021.drawIndirect(buffer00336, 0);
    render_pass_encoder0011.drawIndirect(buffer00143, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.drawIndirect(buffer00385, 0);
    render_pass_encoder0030.drawIndirect(buffer00205, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0011.drawIndirect(buffer00220, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0051.drawIndirect(buffer00252, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00204, 0);
    const buffer00446 = device00.createBuffer({
        label: "buffer00446",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00447 = device00.createBuffer({
        label: "buffer00447",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00172 = device00.createBindGroup({
        label: "bind_group00172",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00446,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00447,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00172);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0031.setIndexBuffer(buffer00351, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00344, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0051.drawIndirect(buffer00386, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndirect(buffer00345, 0);
    render_pass_encoder0051.drawIndirect(buffer0055, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00445, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00448 = device00.createBuffer({
        label: "buffer00448",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00448, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00448, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndirect(buffer00326, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00203, "uint16");
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00160, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer00353, 0);
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer00190, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer00206, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndirect(buffer00352, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00428, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0031.drawIndirect(buffer00143, 0);
    render_pass_encoder0032.drawIndirect(buffer00131, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00434, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00170, 0);
    render_pass_encoder0021.drawIndirect(buffer00297, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0072, "uint16");
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndirect(buffer00146, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00296, 0);
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00268, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00277, 0);
    render_pass_encoder0051.drawIndirect(buffer00265, 0);
    render_pass_encoder0041.drawIndirect(buffer00353, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00346, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0060.drawIndirect(buffer00290, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0011.drawIndirect(buffer00223, 0);
    render_pass_encoder0011.drawIndirect(buffer00231, 0);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00183, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const buffer00449 = device00.createBuffer({
        label: "buffer00449",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00450 = device00.createBuffer({
        label: "buffer00450",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00173 = device00.createBindGroup({
        label: "bind_group00173",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00449,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00450,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00173);
    render_pass_encoder0041.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0041.drawIndirect(buffer00353, 0);
    render_pass_encoder0051.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndirect(buffer00225, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer00299, 0);
    render_pass_encoder0020.drawIndirect(buffer00143, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00326, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndirect(buffer00425, 0);
    render_pass_encoder0021.drawIndirect(buffer00177, 0);
    render_pass_encoder0051.drawIndirect(buffer00225, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00330, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0032.drawIndirect(buffer0075, 0);
    render_pass_encoder0021.drawIndirect(buffer00175, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0060.drawIndirect(buffer00257, 0);
    render_pass_encoder0031.drawIndirect(buffer00353, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00408, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0032.drawIndirect(buffer00274, 0);
    render_pass_encoder0041.drawIndirect(buffer00425, 0);
    render_pass_encoder0060.drawIndirect(buffer00355, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00220, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0060.drawIndirect(buffer00358, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00206, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00405, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00232, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer00389, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00308, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer00317, 0);
    render_pass_encoder0051.drawIndirect(buffer00101, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0010.drawIndirect(buffer00108, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00258, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00387, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00193, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00203, 0);
    render_pass_encoder0051.drawIndirect(buffer00129, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00417, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00363, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0031.drawIndirect(buffer00143, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0060.drawIndirect(buffer00112, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0051.drawIndirect(buffer00403, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer00221, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00303, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00342, 0);
    render_pass_encoder0060.drawIndirect(buffer00310, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00177, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer00204, 0);
    render_pass_encoder0020.drawIndirect(buffer00174, 0);
    device30.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00112, 0);
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0011.drawIndirect(buffer00352, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0060.drawIndirect(buffer00232, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00411, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00310, 0);
    render_pass_encoder0050.drawIndirect(buffer00421, 0);
    render_pass_encoder0040.drawIndirect(buffer00362, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00381, 0);
    render_pass_encoder0020.drawIndirect(buffer00228, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndirect(buffer00326, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00283, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00246, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0031.drawIndirect(buffer00376, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer00356, 0);
    render_pass_encoder0020.drawIndirect(buffer00322, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00171, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00301, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00439, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00329, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00177, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0069, 0);
    const buffer00451 = device00.createBuffer({
        label: "buffer00451",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00452 = device00.createBuffer({
        label: "buffer00452",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00174 = device00.createBindGroup({
        label: "bind_group00174",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00451,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00452,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00174);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndirect(buffer00333, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndirect(buffer00134, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndirect(buffer00322, 0);
    render_pass_encoder0032.drawIndirect(buffer00224, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00102, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer00132, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00160, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00430, 0);
    device10.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer00195, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00233, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00420, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00453 = device00.createBuffer({
        label: "buffer00453",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00453, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00453, 0);
    render_pass_encoder0051.drawIndirect(buffer00166, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00346, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00349, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00298, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00396, 0);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    const buffer00454 = device00.createBuffer({
        label: "buffer00454",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00455 = device00.createBuffer({
        label: "buffer00455",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00175 = device00.createBindGroup({
        label: "bind_group00175",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00454,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00455,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00175);
    render_pass_encoder0041.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndirect(buffer00296, 0);
    render_pass_encoder0041.drawIndirect(buffer00322, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00288, 0);
    const buffer00456 = device00.createBuffer({
        label: "buffer00456",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00457 = device00.createBuffer({
        label: "buffer00457",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00176 = device00.createBindGroup({
        label: "bind_group00176",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00456,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00457,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00176);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00222, 0);
    render_pass_encoder0010.drawIndirect(buffer0096, 0);
    render_pass_encoder0041.drawIndirect(buffer00106, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00425, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00225, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer00139, 0);
    render_pass_encoder0020.drawIndirect(buffer00205, 0);
    render_pass_encoder0011.drawIndirect(buffer00420, 0);
    render_pass_encoder0010.drawIndirect(buffer00291, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00316, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00207, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00264, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00125, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00242, 0);
    render_pass_encoder0041.drawIndirect(buffer00235, 0);
    render_pass_encoder0032.drawIndirect(buffer00261, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00289, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00439, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0060.drawIndirect(buffer00225, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00458 = device00.createBuffer({
        label: "buffer00458",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00458, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00458, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00270, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00291, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00205, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0032.drawIndirect(buffer00333, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00142, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00361, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00230, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00262, 0);
    render_pass_encoder0051.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer00294, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0032.popDebugGroup();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00459 = device00.createBuffer({
        label: "buffer00459",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00459, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00459, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00459, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00222, 0);
    render_pass_encoder0051.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndirect(buffer00225, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00131, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndirect(buffer00345, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer00119, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0021.drawIndirect(buffer00419, 0);
    render_pass_encoder0021.drawIndirect(buffer00296, 0);
    render_pass_encoder0051.drawIndirect(buffer00399, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0032.drawIndirect(buffer00297, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndirect(buffer00274, 0);
    render_pass_encoder0051.drawIndexed(3);
    compute_pass_encoder0050.end();
    render_pass_encoder0020.drawIndirect(buffer00147, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer00460 = device00.createBuffer({
        label: "buffer00460",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00461 = device00.createBuffer({
        label: "buffer00461",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00177 = device00.createBindGroup({
        label: "bind_group00177",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00460,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00461,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00177);
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0011.drawIndirect(buffer00166, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00458, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00143, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0051.drawIndirect(buffer00152, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00161, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00395, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00336, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00338, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndirect(buffer00220, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndirect(buffer00420, 0);
    render_pass_encoder0041.drawIndirect(buffer00325, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00351, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0082, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00462 = device00.createBuffer({
        label: "buffer00462",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00462, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00462, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndirect(buffer0085, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00171, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0060.drawIndirect(buffer00276, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer00397, 0);
    render_pass_encoder0051.drawIndirect(buffer00119, 0);
    device30.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer00458, 0);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer00279, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00435, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00273, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer00378, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer00186, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00459, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0020.drawIndirect(buffer00175, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00104, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer00258, 0);
    render_pass_encoder0030.drawIndirect(buffer00402, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndirect(buffer00342, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00131, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0050.end();
    render_pass_encoder0020.setIndexBuffer(buffer00234, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndirect(buffer00227, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer00313, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00206, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0051.drawIndirect(buffer00405, 0);
    render_pass_encoder0020.drawIndirect(buffer00252, 0);
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    device10.queue.submit([]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0020.drawIndirect(buffer00258, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00323, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0010.drawIndirect(buffer00243, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00304, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00169, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00463 = device00.createBuffer({
        label: "buffer00463",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00463, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00463, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer00319, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndirect(buffer00311, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer00333, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0032.drawIndirect(buffer00400, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00362, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00315, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer00336, 0);
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    render_pass_encoder0032.drawIndirect(buffer001, 0);
    render_pass_encoder0040.drawIndirect(buffer00331, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndirect(buffer00101, 0);
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer00386, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0071, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00360, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00316, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00269, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer00357, 0);
    render_pass_encoder0041.drawIndirect(buffer00204, 0);
    render_pass_encoder0031.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0031.drawIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndirect(buffer00163, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer00264, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0021.drawIndirect(buffer00400, 0);
    render_pass_encoder0032.drawIndirect(buffer00319, 0);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer005, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00331, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00464 = device00.createBuffer({
        label: "buffer00464",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00464, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00464, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00448, 0);
    render_pass_encoder0031.drawIndirect(buffer0063, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0040.drawIndirect(buffer00168, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00440, 0);
    device30.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00356, 0);
    render_pass_encoder0010.drawIndirect(buffer00101, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndirect(buffer00319, 0);
    render_pass_encoder0011.drawIndirect(buffer00420, 0);
    render_pass_encoder0041.drawIndirect(buffer00420, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00462, 0);
    device30.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer00166, 0);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0031.drawIndexedIndirect(buffer00357, 0);
    render_pass_encoder0010.drawIndirect(buffer00319, 0);
    render_pass_encoder0051.drawIndirect(buffer00400, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00344, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00322, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00242, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0050.drawIndirect(buffer00258, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00435, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0032.setIndexBuffer(buffer00302, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00138, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer00346, 0);
    render_pass_encoder0030.drawIndirect(buffer00342, 0);
    render_pass_encoder0010.drawIndirect(buffer00316, 0);
    render_pass_encoder0010.drawIndirect(buffer00275, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer00462, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00290, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0040.drawIndirect(buffer00231, 0);
    render_pass_encoder0032.drawIndirect(buffer00185, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00112, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.endOcclusionQuery()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00465 = device00.createBuffer({
        label: "buffer00465",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00465, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00465, 0);
    render_pass_encoder0031.drawIndirect(buffer00242, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00171, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00263, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00298, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00399, 0);
    render_pass_encoder0050.drawIndirect(buffer00184, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00459, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00312, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00166, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00226, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    device00.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00357, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00466 = device00.createBuffer({
        label: "buffer00466",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00466, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00466, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00356, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00465, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.setIndexBuffer(buffer00126, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0090, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer00161, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer00166, 0);
    render_pass_encoder0050.drawIndirect(buffer00195, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0041.drawIndirect(buffer00342, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00359, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0030.drawIndirect(buffer0075, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.setIndexBuffer(buffer00337, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00355, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00463, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00323, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0021.drawIndirect(buffer00400, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndirect(buffer00352, 0);
    render_pass_encoder0030.drawIndirect(buffer0047, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00259, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00406, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00352, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00143, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00416, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00417, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer00257, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0060.drawIndirect(buffer00161, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0031.drawIndirect(buffer00176, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00426, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00295, "uint16");
    const buffer00467 = device00.createBuffer({
        label: "buffer00467",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00468 = device00.createBuffer({
        label: "buffer00468",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00178 = device00.createBindGroup({
        label: "bind_group00178",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00467,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00468,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00178);
    render_pass_encoder0030.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0050.drawIndirect(buffer00340, 0);
    render_pass_encoder0040.drawIndirect(buffer00408, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00353, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00428, 0);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00355, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0060.drawIndirect(buffer00311, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndirect(buffer00161, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0010.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00469 = device00.createBuffer({
        label: "buffer00469",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00469, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00469, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0051.drawIndirect(buffer00462, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00459, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00306, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0020.setIndexBuffer(buffer00366, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00326, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00470 = device00.createBuffer({
        label: "buffer00470",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00470, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00470, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer00471 = device00.createBuffer({
        label: "buffer00471",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00472 = device00.createBuffer({
        label: "buffer00472",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00179 = device00.createBindGroup({
        label: "bind_group00179",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00471,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00472,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00179);
    render_pass_encoder0011.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00403, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0021.drawIndirect(buffer00186, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.setIndexBuffer(buffer00417, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer00462, 0);
    const buffer00473 = device00.createBuffer({
        label: "buffer00473",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00474 = device00.createBuffer({
        label: "buffer00474",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00180 = device00.createBindGroup({
        label: "bind_group00180",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00473,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00474,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00180);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0060.drawIndirect(buffer00222, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0031.drawIndirect(buffer00465, 0);
    const buffer00475 = device00.createBuffer({
        label: "buffer00475",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00476 = device00.createBuffer({
        label: "buffer00476",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00181 = device00.createBindGroup({
        label: "bind_group00181",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00475,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00476,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00181);
    render_pass_encoder0050.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0032.drawIndirect(buffer0025, 0);
    render_pass_encoder0060.drawIndirect(buffer00196, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0011.drawIndirect(buffer00454, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0031.drawIndirect(buffer00287, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00427, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00322, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00132, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer00258, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00199, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer00458, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00424, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00275, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00477 = device00.createBuffer({
        label: "buffer00477",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00477, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00477, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00181, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00455, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00451, 0);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer004, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00478 = device00.createBuffer({
        label: "buffer00478",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00478, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00478, 0);
    render_pass_encoder0020.drawIndirect(buffer00459, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00423, 0);
    render_pass_encoder0032.drawIndirect(buffer00459, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00389, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00199, 0);
    render_pass_encoder0020.drawIndirect(buffer00161, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00318, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00361, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00440, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0060.drawIndirect(buffer00408, 0);
    render_pass_encoder0040.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0099, "uint16");
    const buffer00479 = device00.createBuffer({
        label: "buffer00479",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00480 = device00.createBuffer({
        label: "buffer00480",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00182 = device00.createBindGroup({
        label: "bind_group00182",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00479,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00480,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00182);
    render_pass_encoder0051.setIndexBuffer(buffer00418, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00322, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0082, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00481 = device00.createBuffer({
        label: "buffer00481",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00481, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00481, 0);
    render_pass_encoder0040.drawIndirect(buffer00282, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00482 = device00.createBuffer({
        label: "buffer00482",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00482, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00482, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0041.drawIndirect(buffer00136, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00319, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    render_pass_encoder0031.setIndexBuffer(buffer00344, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00112, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00464, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00268, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00298, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0032.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer00117, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00285, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer00177, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00207, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00276, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndirect(buffer00469, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00129, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00279, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndirect(buffer00352, 0);
    const buffer00483 = device00.createBuffer({
        label: "buffer00483",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00484 = device00.createBuffer({
        label: "buffer00484",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00183 = device00.createBindGroup({
        label: "bind_group00183",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00483,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00484,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00183);
    const buffer00485 = device00.createBuffer({
        label: "buffer00485",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00486 = device00.createBuffer({
        label: "buffer00486",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00184 = device00.createBindGroup({
        label: "bind_group00184",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00485,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00486,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00184);
    render_pass_encoder0051.setIndexBuffer(buffer00434, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00366, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer00452, 0);
    render_pass_encoder0040.drawIndirect(buffer00186, 0);
    render_pass_encoder0041.drawIndirect(buffer00235, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00487 = device00.createBuffer({
        label: "buffer00487",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00487, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00487, 0);
    render_pass_encoder0021.drawIndirect(buffer00298, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00119, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0011.setIndexBuffer(buffer00218, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    const buffer00488 = device00.createBuffer({
        label: "buffer00488",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00489 = device00.createBuffer({
        label: "buffer00489",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00185 = device00.createBindGroup({
        label: "bind_group00185",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00488,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00489,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00185);
    render_pass_encoder0030.drawIndirect(buffer00297, 0);
    render_pass_encoder0041.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer00482, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0031.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00402, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndirect(buffer00462, 0);
    render_pass_encoder0031.drawIndirect(buffer00326, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00354, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0054, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00248, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00428, 0);
    render_pass_encoder0060.drawIndirect(buffer00196, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00423, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00466, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.setIndexBuffer(buffer00176, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00278, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00425, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0031.drawIndirect(buffer00166, 0);
    render_pass_encoder0041.end();
    render_pass_encoder1000.end();
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndirect(buffer00176, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0011.setIndexBuffer(buffer00172, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0096, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer00476, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    const buffer00490 = device00.createBuffer({
        label: "buffer00490",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00491 = device00.createBuffer({
        label: "buffer00491",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00186 = device00.createBindGroup({
        label: "bind_group00186",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00490,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00491,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00186);
    render_pass_encoder0051.setIndexBuffer(buffer00203, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0051.drawIndirect(buffer00176, 0);
    render_pass_encoder0021.drawIndirect(buffer00311, 0);
    render_pass_encoder0021.drawIndirect(buffer00257, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0032.drawIndirect(buffer00425, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer00353, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0031.popDebugGroup();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00492 = device00.createBuffer({
        label: "buffer00492",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00492, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00492, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00344, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00420, 0);
    compute_pass_encoder0050.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00493 = device00.createBuffer({
        label: "buffer00493",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00493, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00493, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0060.drawIndirect(buffer00206, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0010.drawIndirect(buffer00208, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00288, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer00275, 0);
    render_pass_encoder0031.drawIndirect(buffer00166, 0);
    render_pass_encoder0060.drawIndirect(buffer00206, 0);
    render_pass_encoder0050.drawIndirect(buffer00298, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0041.drawIndirect(buffer00148, 0);
    render_pass_encoder0050.drawIndirect(buffer00204, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer00400, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00245, 0);
    render_pass_encoder0011.drawIndirect(buffer0077, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00198, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndirect(buffer00207, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    render_pass_encoder0050.drawIndirect(buffer00345, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00362, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00494 = device00.createBuffer({
        label: "buffer00494",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00494, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00494, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0050.drawIndirect(buffer00399, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0062, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00450, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00126, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00399, 0);
    render_pass_encoder0020.drawIndirect(buffer00452, 0);
    render_pass_encoder0030.end();
    device10.queue.submit([]);
    render_pass_encoder0032.drawIndirect(buffer00221, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00453, 0);
    render_pass_encoder0010.drawIndirect(buffer00145, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00470, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer00192, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00413, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00472, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00131, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer00333, 0);
    render_pass_encoder0041.drawIndirect(buffer00272, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00209, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00449, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer00421, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer00304, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0051.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00399, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00464, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00222, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00459, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer00227, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer00361, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0032.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00331, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00469, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00441, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00321, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0021.drawIndirect(buffer0075, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00225, 0);
    render_pass_encoder0031.drawIndirect(buffer00261, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00336, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00495 = device00.createBuffer({
        label: "buffer00495",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00495, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00495, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00248, 0);
    render_pass_encoder0020.drawIndirect(buffer00275, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder0040.drawIndirect(buffer00195, 0);
    render_pass_encoder0040.drawIndirect(buffer00297, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.end();
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer00488, 0);
    render_pass_encoder0030.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer00487, 0);
    render_pass_encoder0030.drawIndirect(buffer00450, 0);
    const buffer00496 = device00.createBuffer({
        label: "buffer00496",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00497 = device00.createBuffer({
        label: "buffer00497",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00187 = device00.createBindGroup({
        label: "bind_group00187",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00496,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00497,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00187);
    render_pass_encoder0040.setIndexBuffer(buffer00383, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00131, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0041.drawIndirect(buffer00462, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00418, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00297, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00293, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00386, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00395, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00120, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00143, 0);
    render_pass_encoder0051.drawIndirect(buffer00226, 0);
    render_pass_encoder0032.drawIndirect(buffer00353, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00318, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0077, "uint16");
    const buffer00498 = device00.createBuffer({
        label: "buffer00498",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00499 = device00.createBuffer({
        label: "buffer00499",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00188 = device00.createBindGroup({
        label: "bind_group00188",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00498,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00499,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00188);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00459, 0);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndirect(buffer0092, 0);
    render_pass_encoder0040.drawIndirect(buffer00322, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00339, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00262, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer00470, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00481, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00206, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0060.drawIndirect(buffer00212, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndirect(buffer00461, 0);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00226, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0021.drawIndirect(buffer00160, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00469, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00291, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00216, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer00158, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00453, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00448, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00474, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0010.drawIndirect(buffer00130, 0);
    render_pass_encoder0050.drawIndirect(buffer00241, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00199, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0040.drawIndirect(buffer00275, 0);
    render_pass_encoder0040.drawIndirect(buffer00276, 0);
    render_pass_encoder0011.drawIndirect(buffer00376, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00432, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndirect(buffer00105, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00234, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0032.drawIndirect(buffer00405, 0);
    render_pass_encoder0011.drawIndirect(buffer00168, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00492, 0);
    render_pass_encoder0050.drawIndirect(buffer00482, 0);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    const buffer00500 = device00.createBuffer({
        label: "buffer00500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00501 = device00.createBuffer({
        label: "buffer00501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00189 = device00.createBindGroup({
        label: "bind_group00189",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00501,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00189);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer00345, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer00177, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00463, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer00355, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00242, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00232, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0011.drawIndirect(buffer00430, 0);
    render_pass_encoder0031.drawIndirect(buffer00465, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer00371, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00469, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndirect(buffer00361, 0);
    render_pass_encoder0051.drawIndirect(buffer00225, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00434, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndirect(buffer00492, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00493, 0);
    render_pass_encoder0050.drawIndirect(buffer00226, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0030.drawIndirect(buffer00355, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndirect(buffer00458, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer00495, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00470, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00319, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00502 = device00.createBuffer({
        label: "buffer00502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00502, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00502, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00399, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00175, 0);
    const buffer00503 = device00.createBuffer({
        label: "buffer00503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00504 = device00.createBuffer({
        label: "buffer00504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00190 = device00.createBindGroup({
        label: "bind_group00190",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00504,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00190);
    render_pass_encoder0040.drawIndirect(buffer00207, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0011.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0040, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    const buffer00505 = device00.createBuffer({
        label: "buffer00505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00506 = device00.createBuffer({
        label: "buffer00506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00191 = device00.createBindGroup({
        label: "bind_group00191",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00506,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00191);
    render_pass_encoder0050.drawIndexedIndirect(buffer00190, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0060.drawIndirect(buffer00355, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00336, 0);
    render_pass_encoder0032.drawIndirect(buffer00370, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0040.drawIndirect(buffer00502, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00227, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer00507 = device00.createBuffer({
        label: "buffer00507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00508 = device00.createBuffer({
        label: "buffer00508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00192 = device00.createBindGroup({
        label: "bind_group00192",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00508,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00192);
    render_pass_encoder0040.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00360, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00503, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndirect(buffer00502, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00465, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder0041.drawIndirect(buffer00242, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00428, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00183, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0021.drawIndirect(buffer00481, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0031.setIndexBuffer(buffer00289, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00425, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00497, 0);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder0011.end();
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00469, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0032.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndirect(buffer00477, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00463, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0032.drawIndirect(buffer00147, 0);
    render_pass_encoder0011.drawIndirect(buffer00186, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00502, 0);
    render_pass_encoder0040.drawIndirect(buffer00345, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00449, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00208, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00377, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer00321, 0);
    render_pass_encoder0040.drawIndirect(buffer00458, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00231, 0);
    const buffer00509 = device00.createBuffer({
        label: "buffer00509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00510 = device00.createBuffer({
        label: "buffer00510",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00193 = device00.createBindGroup({
        label: "bind_group00193",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00510,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00193);
    render_pass_encoder0011.drawIndexedIndirect(buffer00317, 0);
    const buffer00511 = device00.createBuffer({
        label: "buffer00511",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00512 = device00.createBuffer({
        label: "buffer00512",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00194 = device00.createBindGroup({
        label: "bind_group00194",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00511,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00512,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00194);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00513 = device00.createBuffer({
        label: "buffer00513",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00513, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00513, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00454, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00326, 0);
    render_pass_encoder0011.drawIndirect(buffer00258, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer00176, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndirect(buffer00263, 0);
    render_pass_encoder0010.drawIndirect(buffer00460, 0);
    render_pass_encoder0010.drawIndirect(buffer00216, 0);
    render_pass_encoder0051.drawIndirect(buffer00236, 0);
    render_pass_encoder0050.drawIndirect(buffer00166, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00492, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00423, 0);
    render_pass_encoder0010.drawIndirect(buffer0074, 0);
    render_pass_encoder0031.drawIndirect(buffer00459, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00513, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00245, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00301, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00200, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0032.drawIndirect(buffer00400, 0);
    render_pass_encoder0021.drawIndirect(buffer00195, 0);
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0010.drawIndirect(buffer00386, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00340, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0041.drawIndirect(buffer00484, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0021.drawIndirect(buffer00213, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00110, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0050.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndirect(buffer00274, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00446, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00418, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndirect(buffer00404, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0032.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer00459, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0011.end();
    render_pass_encoder0021.drawIndirect(buffer00420, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndirect(buffer00464, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00495, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00514 = device00.createBuffer({
        label: "buffer00514",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00514, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00514, 0);
    render_pass_encoder0031.drawIndirect(buffer00225, 0);
    render_pass_encoder0011.drawIndirect(buffer00355, 0);
    render_pass_encoder0031.drawIndirect(buffer00513, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00462, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00514, 0);
    render_pass_encoder0011.drawIndirect(buffer00235, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0030.drawIndirect(buffer00148, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0011.drawIndirect(buffer00459, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00333, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00425, 0);
    render_pass_encoder0060.drawIndirect(buffer00353, 0);
    render_pass_encoder0030.drawIndirect(buffer00343, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00322, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0032.drawIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00463, 0);
    render_pass_encoder0030.drawIndirect(buffer00463, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00331, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00225, 0);
    const buffer00515 = device00.createBuffer({
        label: "buffer00515",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00516 = device00.createBuffer({
        label: "buffer00516",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00195 = device00.createBindGroup({
        label: "bind_group00195",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00515,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00516,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00195);
    render_pass_encoder0010.drawIndexedIndirect(buffer00493, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00309, 0);
    compute_pass_encoder0010.end();
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00448, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer00202, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00161, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00482, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00407, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0051.setIndexBuffer(buffer00451, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer00257, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00354, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0032.drawIndirect(buffer00219, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0050.drawIndirect(buffer00316, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0011.drawIndirect(buffer00513, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00290, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00412, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0041.drawIndirect(buffer00324, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer00376, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00494, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0032.end();
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer00448, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00517 = device00.createBuffer({
        label: "buffer00517",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00517, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00517, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndirect(buffer00492, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0031.drawIndirect(buffer00136, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00299, 0);
    compute_pass_encoder0050.end();
    device20.queue.submit([]);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer00344, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0051.drawIndirect(buffer00315, 0);
    const buffer00518 = device00.createBuffer({
        label: "buffer00518",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00519 = device00.createBuffer({
        label: "buffer00519",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00196 = device00.createBindGroup({
        label: "bind_group00196",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00518,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00519,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00196);
    render_pass_encoder0030.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0060.drawIndirect(buffer0043, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00295, "uint16");
    const buffer00520 = device00.createBuffer({
        label: "buffer00520",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00521 = device00.createBuffer({
        label: "buffer00521",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00197 = device00.createBindGroup({
        label: "bind_group00197",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00520,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00521,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00197);
    render_pass_encoder0030.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00298, 0);
    device20.queue.submit([]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0032.drawIndirect(buffer00249, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00500, 0);
    render_pass_encoder0050.drawIndirect(buffer00237, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndirect(buffer00481, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00297, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0051.setIndexBuffer(buffer00375, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0050.setIndexBuffer(buffer00494, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00450, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0010.setIndexBuffer(buffer00370, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00513, 0);
    render_pass_encoder0010.drawIndirect(buffer00400, 0);
    render_pass_encoder0040.drawIndirect(buffer00206, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00353, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00326, 0);
    render_pass_encoder0032.drawIndirect(buffer00220, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0032.drawIndexedIndirect(buffer00204, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00176, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00435, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00513, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00221, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0040.drawIndirect(buffer00265, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0032.drawIndirect(buffer00322, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00447, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00453, 0);
    render_pass_encoder0031.drawIndirect(buffer00154, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00368, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0020.drawIndirect(buffer00174, 0);
    render_pass_encoder0032.drawIndirect(buffer00512, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0020.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.drawIndirect(buffer00493, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00431, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00513, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0032.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00481, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer00420, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00405, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer00146, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0041.drawIndirect(buffer0074, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00453, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0020.drawIndirect(buffer00298, 0);
    render_pass_encoder0041.drawIndirect(buffer00157, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00290, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00232, 0);
    render_pass_encoder0032.drawIndirect(buffer0094, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00191, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00417, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer00307, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00522 = device00.createBuffer({
        label: "buffer00522",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00522, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00522, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0019, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00473, "uint16");
    render_pass_encoder0032.drawIndirect(buffer00206, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0032.drawIndirect(buffer0027, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndirect(buffer00456, 0);
    render_pass_encoder0032.drawIndirect(buffer00297, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0041.drawIndirect(buffer0088, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndirect(buffer00281, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00380, 0);
    render_pass_encoder0051.drawIndirect(buffer00311, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0030.drawIndirect(buffer00131, 0);
    render_pass_encoder0020.drawIndirect(buffer00276, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0050.drawIndirect(buffer00204, 0);
    render_pass_encoder0021.drawIndirect(buffer00494, 0);
    render_pass_encoder0030.drawIndirect(buffer00469, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00344, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00470, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00366, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0011.drawIndirect(buffer00311, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer00513, 0);
    render_pass_encoder0060.drawIndirect(buffer00342, 0);
    render_pass_encoder0032.drawIndirect(buffer00481, 0);
    const buffer00523 = device00.createBuffer({
        label: "buffer00523",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00524 = device00.createBuffer({
        label: "buffer00524",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00198 = device00.createBindGroup({
        label: "bind_group00198",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00523,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00524,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00198);
    render_pass_encoder0030.end();
    compute_pass_encoder0050.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer00513, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndirect(buffer00477, 0);
    render_pass_encoder0051.drawIndirect(buffer00207, 0);
    render_pass_encoder0032.drawIndirect(buffer00273, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00343, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00521, 0);
    render_pass_encoder0010.drawIndirect(buffer00196, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer00246, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00213, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00425, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00339, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00461, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00212, 0);
    compute_pass_encoder0011.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0060.drawIndirect(buffer00299, 0);
    render_pass_encoder0041.drawIndirect(buffer00212, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00192, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00494, 0);
    render_pass_encoder0020.drawIndirect(buffer00383, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer00115, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00451, "uint16");
    render_pass_encoder1000.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00300, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0021.drawIndirect(buffer00244, 0);
    render_pass_encoder0060.drawIndirect(buffer00352, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer00273, 0);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00464, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00211, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00478, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00233, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00425, 0);
    render_pass_encoder0032.drawIndirect(buffer00328, 0);
    render_pass_encoder0011.drawIndirect(buffer00196, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00349, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00259, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00143, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer00451, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer00318, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00379, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00356, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0032.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00336, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer00281, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00356, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer00209, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00181, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer00322, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00514, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00525 = device00.createBuffer({
        label: "buffer00525",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00525, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00525, 0);
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00346, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00493, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00119, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0079, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00334, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer00498, 0);
    render_pass_encoder0030.drawIndirect(buffer00386, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00446, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00462, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer00513, 0);
    render_pass_encoder0010.drawIndirect(buffer00158, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0051.drawIndirect(buffer00325, 0);
    render_pass_encoder0021.drawIndirect(buffer00231, 0);
    render_pass_encoder0011.drawIndirect(buffer00248, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00405, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndirect(buffer00386, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00470, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0011.drawIndirect(buffer00337, 0);
    render_pass_encoder0011.drawIndirect(buffer00235, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00405, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00399, 0);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00502, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.setIndexBuffer(buffer00374, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00220, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00272, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00340, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer00221, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00204, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00234, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00212, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00354, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00300, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer00212, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer00439, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00464, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00388, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer00261, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0010.drawIndirect(buffer00412, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00409, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00175, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00516, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0010.drawIndirect(buffer00492, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00195, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00180, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00361, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00343, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00470, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00252, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00492, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00205, 0);
    render_pass_encoder0032.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00147, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0020.drawIndirect(buffer00319, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00247, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00225, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00437, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00177, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00463, 0);
    render_pass_encoder0051.drawIndirect(buffer00297, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00466, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0032.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0032.end();
    render_pass_encoder0030.end();
    render_pass_encoder0051.setIndexBuffer(buffer00414, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00316, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndirect(buffer00311, 0);
    const buffer00526 = device00.createBuffer({
        label: "buffer00526",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00527 = device00.createBuffer({
        label: "buffer00527",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00199 = device00.createBindGroup({
        label: "bind_group00199",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00526,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00527,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00199);
    render_pass_encoder0041.drawIndirect(buffer00208, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00213, 0);
    render_pass_encoder0032.drawIndirect(buffer00130, 0);
    const buffer00528 = device00.createBuffer({
        label: "buffer00528",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00529 = device00.createBuffer({
        label: "buffer00529",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00200 = device00.createBindGroup({
        label: "bind_group00200",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00528,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00529,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00200);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0040.drawIndirect(buffer00331, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0040.drawIndirect(buffer00319, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00514, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00366, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00316, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0032.drawIndirect(buffer00404, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0031.drawIndirect(buffer00511, 0);
    render_pass_encoder0040.drawIndirect(buffer00204, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00372, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00300, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00222, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder0010.drawIndirect(buffer00235, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00405, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00483, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00470, 0);
    render_pass_encoder0040.drawIndirect(buffer00361, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00465, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0032.drawIndirect(buffer00225, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00398, 0);
    render_pass_encoder0040.drawIndirect(buffer00494, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00495, 0);
    render_pass_encoder0032.drawIndirect(buffer00262, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00196, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00319, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer00482, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.setIndexBuffer(buffer00483, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00355, 0);
    render_pass_encoder0041.drawIndirect(buffer00487, 0);
    render_pass_encoder0020.drawIndirect(buffer00435, 0);
    const buffer00530 = device00.createBuffer({
        label: "buffer00530",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00531 = device00.createBuffer({
        label: "buffer00531",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00201 = device00.createBindGroup({
        label: "bind_group00201",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00530,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00531,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00201);
    render_pass_encoder0031.end();
    device20.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00526, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00464, 0);
    render_pass_encoder0020.drawIndirect(buffer00242, 0);
    render_pass_encoder0051.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.drawIndirect(buffer00494, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00103, 0);
    render_pass_encoder0060.drawIndirect(buffer00131, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00433, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00212, 0);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    const buffer00532 = device00.createBuffer({
        label: "buffer00532",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00533 = device00.createBuffer({
        label: "buffer00533",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00202 = device00.createBindGroup({
        label: "bind_group00202",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00532,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00533,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00202);
    render_pass_encoder0030.drawIndirect(buffer00348, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer00257, 0);
    render_pass_encoder0050.drawIndirect(buffer00514, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00534 = device00.createBuffer({
        label: "buffer00534",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00534, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00534, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndirect(buffer00310, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer00333, 0);
    render_pass_encoder0011.drawIndirect(buffer00242, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00384, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0088, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00352, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0032.drawIndexedIndirect(buffer00462, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00401, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00354, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00126, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00477, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00286, 0);
    render_pass_encoder0041.drawIndirect(buffer00471, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0011.drawIndirect(buffer00108, 0);
    render_pass_encoder0031.drawIndirect(buffer00351, 0);
    device30.queue.submit([]);
    render_pass_encoder0051.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00469, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00428, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0060.drawIndirect(buffer00297, 0);
    render_pass_encoder0021.drawIndirect(buffer00377, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00354, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00356, 0);
    render_pass_encoder0041.drawIndirect(buffer00386, 0);
    render_pass_encoder0021.drawIndirect(buffer00221, 0);
    render_pass_encoder0032.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer00494, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00469, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0041.drawIndirect(buffer00273, 0);
    render_pass_encoder0021.drawIndirect(buffer00257, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndexedIndirect(buffer0058, 0);
    const buffer00535 = device00.createBuffer({
        label: "buffer00535",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00536 = device00.createBuffer({
        label: "buffer00536",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00203 = device00.createBindGroup({
        label: "bind_group00203",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00535,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00536,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00203);
    render_pass_encoder0050.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0031.drawIndirect(buffer00227, 0);
    device10.queue.submit([]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00534, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0020.drawIndirect(buffer00160, 0);
    render_pass_encoder0032.popDebugGroup();
    const buffer00537 = device00.createBuffer({
        label: "buffer00537",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00538 = device00.createBuffer({
        label: "buffer00538",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00204 = device00.createBindGroup({
        label: "bind_group00204",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00537,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00538,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00204);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer00513, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00511, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00466, 0);
    render_pass_encoder0010.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00539 = device00.createBuffer({
        label: "buffer00539",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00539, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00539, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00514, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0032.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00470, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00539, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0032.popDebugGroup();
    const buffer00540 = device00.createBuffer({
        label: "buffer00540",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00541 = device00.createBuffer({
        label: "buffer00541",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00205 = device00.createBindGroup({
        label: "bind_group00205",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00540,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00541,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00205);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00542 = device00.createBuffer({
        label: "buffer00542",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00542, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00542, 0);
    render_pass_encoder0040.drawIndirect(buffer00299, 0);
    render_pass_encoder0011.drawIndirect(buffer00448, 0);
    render_pass_encoder0031.drawIndirect(buffer00421, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00448, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00354, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder0032.drawIndirect(buffer00342, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer00481, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00317, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndirect(buffer00213, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00359, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0032.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer00256, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0011.drawIndirect(buffer00464, 0);
    render_pass_encoder0021.drawIndirect(buffer00411, 0);
    const buffer00543 = device00.createBuffer({
        label: "buffer00543",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00544 = device00.createBuffer({
        label: "buffer00544",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00206 = device00.createBindGroup({
        label: "bind_group00206",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00543,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00544,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00206);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00356, 0);
    render_pass_encoder0040.drawIndirect(buffer00414, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0041.drawIndirect(buffer00274, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00492, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer00468, "uint16");
    render_pass_encoder0032.drawIndexed(3);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00545 = device00.createBuffer({
        label: "buffer00545",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00545, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00545, 0);
    render_pass_encoder0032.drawIndirect(buffer00256, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00248, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer00353, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0060.drawIndirect(buffer00470, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00391, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00224, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0011.drawIndirect(buffer00129, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00364, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00177, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00349, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00208, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer00425, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00532, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00546 = device00.createBuffer({
        label: "buffer00546",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00546, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00546, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00304, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00495, 0);
    render_pass_encoder0032.drawIndirect(buffer00477, 0);
    render_pass_encoder0032.drawIndirect(buffer00334, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00399, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00249, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.drawIndirect(buffer00495, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer00109, 0);
    render_pass_encoder0041.drawIndirect(buffer00221, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndirect(buffer0084, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndirect(buffer00322, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0040.drawIndirect(buffer0084, 0);
    render_pass_encoder0011.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndirect(buffer00400, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndirect(buffer00333, 0);
    render_pass_encoder0051.drawIndirect(buffer00356, 0);
    render_pass_encoder0020.drawIndirect(buffer00343, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0021.drawIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00545, 0);
    const buffer00547 = device00.createBuffer({
        label: "buffer00547",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00548 = device00.createBuffer({
        label: "buffer00548",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00207 = device00.createBindGroup({
        label: "bind_group00207",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00547,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00548,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00207);
    render_pass_encoder0020.drawIndirect(buffer00297, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0031.drawIndirect(buffer00322, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0031.setIndexBuffer(buffer00341, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00470, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0032.drawIndirect(buffer00221, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder0060.drawIndirect(buffer00415, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00439, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer00462, 0);
    const buffer00549 = device00.createBuffer({
        label: "buffer00549",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00550 = device00.createBuffer({
        label: "buffer00550",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00208 = device00.createBindGroup({
        label: "bind_group00208",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00549,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00550,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00208);
    render_pass_encoder0010.end();
    render_pass_encoder0060.drawIndirect(buffer00296, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00529, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer00435, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00333, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer00322, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0050.drawIndirect(buffer00462, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer00393, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer00523, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00386, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0020.drawIndirect(buffer00296, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00465, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00137, 0);
    render_pass_encoder0060.drawIndirect(buffer00370, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00425, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer00541, "uint16");
    device00.queue.submit([command_buffer005, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0032.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00479, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00477, 0);
    device30.queue.submit([]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00352, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndirect(buffer00171, 0);
    render_pass_encoder0040.drawIndirect(buffer00487, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00355, 0);
    render_pass_encoder0051.setIndexBuffer(buffer00171, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00353, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00281, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00431, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00495, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0021.drawIndirect(buffer00199, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00177, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00472, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00370, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00502, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00196, 0);
    render_pass_encoder0040.drawIndirect(buffer00465, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00534, 0);
    const buffer00551 = device00.createBuffer({
        label: "buffer00551",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00552 = device00.createBuffer({
        label: "buffer00552",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00209 = device00.createBindGroup({
        label: "bind_group00209",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00551,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00552,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00209);
    render_pass_encoder0032.setIndexBuffer(buffer00235, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00537, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00513, 0);
    render_pass_encoder0041.drawIndirect(buffer00186, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0032.setIndexBuffer(buffer00313, "uint16");
    const buffer00553 = device00.createBuffer({
        label: "buffer00553",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00554 = device00.createBuffer({
        label: "buffer00554",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00210 = device00.createBindGroup({
        label: "bind_group00210",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00553,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00554,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00210);
    render_pass_encoder0031.drawIndexedIndirect(buffer00357, 0);
    render_pass_encoder0010.drawIndirect(buffer00345, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer00173, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0050.drawIndirect(buffer00296, 0);
    render_pass_encoder0040.drawIndirect(buffer00313, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00174, 0);
    render_pass_encoder0050.drawIndirect(buffer00159, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00463, 0);
    const buffer00555 = device00.createBuffer({
        label: "buffer00555",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00556 = device00.createBuffer({
        label: "buffer00556",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00211 = device00.createBindGroup({
        label: "bind_group00211",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00555,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00556,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00211);
    render_pass_encoder0032.drawIndirect(buffer00195, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00480, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00493, 0);
    render_pass_encoder0060.drawIndirect(buffer00344, 0);
    render_pass_encoder0021.drawIndirect(buffer00161, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer00417, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0046, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder0030.end();
    const buffer00557 = device00.createBuffer({
        label: "buffer00557",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00558 = device00.createBuffer({
        label: "buffer00558",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00212 = device00.createBindGroup({
        label: "bind_group00212",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00557,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00558,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00212);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0032.drawIndexedIndirect(buffer00433, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndirect(buffer00268, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00559 = device00.createBuffer({
        label: "buffer00559",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00559, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00559, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer00174, 0);
    const buffer00560 = device00.createBuffer({
        label: "buffer00560",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00561 = device00.createBuffer({
        label: "buffer00561",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00213 = device00.createBindGroup({
        label: "bind_group00213",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00560,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00561,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00213);
    device30.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00417, 0);
    render_pass_encoder0010.drawIndirect(buffer00528, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer00431, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00551, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00207, 0);
    device20.queue.submit([]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00432, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00560, 0);
    render_pass_encoder0021.drawIndirect(buffer00420, 0);
    render_pass_encoder0040.drawIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndirect(buffer00204, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00493, 0);
    render_pass_encoder0051.drawIndirect(buffer00299, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0010.drawIndirect(buffer00261, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer00174, 0);
    render_pass_encoder0011.drawIndirect(buffer00222, 0);
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndirect(buffer00542, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00362, 0);
    render_pass_encoder0031.drawIndirect(buffer00177, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00465, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0032.drawIndirect(buffer0042, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer00525, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0032.drawIndirect(buffer00469, 0);
    render_pass_encoder0032.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer00304, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00271, 0);
    render_pass_encoder0032.drawIndirect(buffer00296, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndirect(buffer00296, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00332, 0);
    render_pass_encoder0031.drawIndirect(buffer00175, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00541, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00285, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0040.drawIndirect(buffer00361, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00331, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer00326, 0);
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00138, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00220, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00478, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndirect(buffer00195, 0);
    render_pass_encoder0011.drawIndirect(buffer00227, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00353, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0031.drawIndirect(buffer00231, 0);
    render_pass_encoder0041.drawIndirect(buffer00463, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00233, 0);
    render_pass_encoder0021.drawIndirect(buffer0099, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer00467, 0);
    render_pass_encoder0020.drawIndirect(buffer00525, 0);
    render_pass_encoder0050.drawIndirect(buffer00199, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00285, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00472, "uint16");
    render_pass_encoder0051.drawIndirect(buffer00195, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00428, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0032.setIndexBuffer(buffer00149, "uint16");
    const buffer00562 = device00.createBuffer({
        label: "buffer00562",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00563 = device00.createBuffer({
        label: "buffer00563",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00214 = device00.createBindGroup({
        label: "bind_group00214",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00562,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00563,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00214);
    render_pass_encoder0051.setIndexBuffer(buffer0060, "uint16");
}