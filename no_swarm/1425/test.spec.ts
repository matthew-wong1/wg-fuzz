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
    
    
    
    const array0 = new Float32Array([0.5, 0.5, -0.75, 1.0, 0.75, -0.25, 0.25, -0.5, 0.25, 1.0, 0.25, -1.0, 0.0, -1.0, 0.0, -0.75, -0.75, -0.5, -0.75, -0.5, 0.0, 0.5, 0.25, -0.5, 0.5, -1.0, -0.5, -1.0, 0.75, 0.0, -0.25, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, 0.5, 0.0, -1.0, 1.0, -0.75, 0.25, -1.0, -1.0, -0.75, -0.25, -0.75, -0.5, 0.25, -0.5, 0.0, -0.25, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, -0.25, -0.75, 0.5, -1.0, 0.25, 0.75, 0.0, -0.5, 0.5, 0.0, 0.5, -0.5, -1.0, -0.5, 0.75, -0.5, 0.5, 0.25, 1.0, 0.5, 0.25, -0.75, 0.25, 1.0, 0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -1.0, -0.75, 0.5, -0.25, 0.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.25, ]);
    const array1 = new Float32Array([-0.75, 0.25, 0.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.5, 0.5, 0.75, -0.25, -1.0, 0.75, 0.5, 0.75, 0.0, -1.0, 1.0, -0.75, 0.25, -0.25, -0.25, 1.0, 0.5, 0.25, -0.25, -0.25, 0.75, 0.25, 0.0, 0.25, 0.25, 0.5, -0.5, 0.5, -0.75, -0.5, 0.0, 0.0, 0.75, 0.0, -1.0, -1.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, 0.75, 0.5, -0.75, 0.5, 1.0, 0.25, 0.75, -0.5, 0.75, -1.0, -0.5, 0.75, -1.0, -1.0, -0.75, -0.25, -0.25, -1.0, 0.5, 0.5, -1.0, 0.5, 0.0, 0.75, 0.25, 0.25, -1.0, 0.5, 0.5, -0.25, 0.5, -0.25, -0.25, 1.0, 0.5, -0.25, 0.25, 0.75, -0.25, 1.0, -0.75, 0.0, 0.75, 0.0, -0.5, 1.0, -0.75, 1.0, ]);
    const array2 = new Float32Array([0.25, -0.5, 0.5, -0.75, -0.5, 0.75, -0.75, 0.75, 1.0, 0.0, -0.5, -1.0, 1.0, 0.75, -0.25, -0.75, -0.25, 0.75, 0.0, 0.5, 0.5, 1.0, 0.0, -0.5, 1.0, 0.0, 0.5, 0.5, -0.75, -0.75, -0.75, -0.5, 0.5, -0.75, -0.25, -0.75, -1.0, -0.25, 1.0, -0.25, 1.0, -0.75, -0.25, 1.0, 0.25, 1.0, 0.0, -0.5, 0.0, -0.5, 0.75, 0.0, -0.25, -0.5, -0.25, -1.0, 0.75, 0.75, 0.0, -0.5, -0.5, -0.75, -1.0, 0.25, 0.25, -1.0, -0.75, 0.75, -1.0, 0.25, 0.75, -0.75, -0.75, -1.0, -0.5, -0.5, -0.25, -0.25, 0.0, 0.75, 0.5, 1.0, -1.0, 0.75, -0.5, 0.5, -0.75, -0.75, 1.0, 0.25, 0.0, 0.5, 0.0, -1.0, -1.0, 0.5, 0.0, -0.5, -0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("validation");
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
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
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    const command_buffer000 = command_encoder000.finish();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array3 = new Float32Array([-1.0, -1.0, -0.5, 0.5, -0.25, -0.5, 0.75, 1.0, -0.25, -0.5, 0.75, -1.0, -0.5, -0.25, -1.0, 0.25, 0.25, 0.75, 0.5, -0.5, -0.25, -0.75, -0.5, 0.5, 1.0, 1.0, -0.75, -0.25, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, -0.25, 0.25, -0.5, -0.25, -0.5, 1.0, -0.75, -1.0, -0.75, 1.0, -1.0, -1.0, 0.0, -1.0, -0.25, 0.5, 0.0, 0.0, -0.5, -1.0, -1.0, 0.25, -0.25, 0.0, 0.5, 0.25, -0.5, 1.0, 0.5, 1.0, -1.0, 0.75, 1.0, -0.75, 1.0, -1.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.75, 1.0, -0.5, -0.5, 0.5, 0.5, -0.75, -0.25, -0.25, 0.75, 0.0, -0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.5, 1.0, -0.5, -0.5, 0.0, -0.75, -0.25, -1.0, ]);
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
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
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder1000.setPipeline(render_pipeline101);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    compute_pass_encoder0010.popDebugGroup()
    query100.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_buffer001 = command_encoder001.finish();
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
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
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.insertDebugMarker("mymarker");
    query101.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.queue.submit([]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([0.25, -0.25, -1.0, 0.25, -0.75, 0.75, 0.75, -0.5, -0.25, 1.0, -0.25, -0.5, -0.25, 0.5, 1.0, 0.0, 0.75, -0.75, 0.5, -1.0, 0.75, 1.0, 1.0, -1.0, -0.5, -1.0, 0.5, -0.75, -0.25, -1.0, -1.0, 0.5, 0.0, 0.75, 0.5, 0.5, -0.75, 1.0, 0.75, 0.0, 1.0, 0.25, -0.5, -0.5, 0.75, 0.0, 1.0, -0.25, 0.0, 0.0, 0.75, 0.0, 0.5, 0.75, 0.75, -0.5, -0.75, -0.5, 0.75, 1.0, 1.0, 0.75, 0.75, -0.25, 0.5, -0.25, -1.0, 0.25, 0.25, -1.0, 0.75, 0.5, 0.75, 0.0, 0.75, -0.75, 0.25, -0.75, -0.75, 0.75, -0.25, 0.75, -0.75, -0.5, 0.25, 0.5, -1.0, 0.5, 1.0, -0.5, -0.5, 0.25, -1.0, 1.0, -0.5, -1.0, 0.0, -0.5, 0.0, 0.5, ]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_pass_encoder1011.setPipeline(render_pipeline103);
    
    command_encoder300.insertDebugMarker("mymarker");
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
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
        occlusionQuerySet: query000
    });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const command_buffer101 = command_encoder101.finish();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder1011.insertDebugMarker("marker");
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setStencilReference(1);
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setPipeline(render_pipeline103);
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setStencilReference(1);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.setPipeline(render_pipeline102);
    command_encoder301.pushDebugGroup("mygroupmarker")
    command_encoder302.pushDebugGroup("mygroupmarker")
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group100);
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    texture002.destroy();
    query000.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    device30.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_bundle_encoder300.popDebugGroup();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    buffer100.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query300.destroy()
    
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setPipeline(render_pipeline105);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    texture102.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query000.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    texture001.destroy();
    render_pass_encoder1011.setStencilReference(1);
    device20.pushErrorScope("internal");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    buffer300.destroy()
    buffer104.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture000.destroy();
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    texture101.destroy();
    render_pass_encoder1011.insertDebugMarker("marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setStencilReference(1);
    
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder1000.setPipeline(compute_pipeline1011);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder301.insertDebugMarker("mymarker");
    compute_pass_encoder3020.popDebugGroup()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer106.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.submit([command_buffer300, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder1011.insertDebugMarker("marker");
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    command_encoder302.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline108);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1030.setVertexBuffer(0, buffer1010);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder1000.setVertexBuffer(0, buffer107);
    
    
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    query101.destroy()
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer1011.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1010, 0, array2, 0, array2.length);
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.end();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setVertexBuffer(0, buffer1012);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer107.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    device60.destroy();
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.draw(3);
    render_pass_encoder1031.setPipeline(render_pipeline102);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    
    render_bundle_encoder102.setPipeline(render_pipeline108);
    buffer109.destroy()
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    buffer108.destroy()
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query104
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1031.beginOcclusionQuery(0)
    query104.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    query100.destroy()
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.end();
    
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
    buffer1013.destroy()
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.pushErrorScope("internal");
    render_pass_encoder0020.executeBundles([render_bundle_encoder000, ])
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture200.destroy();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1021.setPipeline(render_pipeline1010);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
        occlusionQuerySet: query000
    });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder3020.popDebugGroup()
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const array5 = new Float32Array([-0.5, -0.5, -0.25, -0.25, -1.0, 0.5, 0.5, -0.75, 0.5, 0.5, -0.5, 0.5, 0.25, -0.25, -0.25, 0.5, -0.5, 1.0, -0.5, 0.5, 0.75, -1.0, 0.75, 0.5, -0.75, 0.25, 1.0, -0.75, 0.25, 0.0, 0.5, 0.5, -1.0, 0.25, -0.75, 1.0, -1.0, -0.75, 0.5, 0.0, 0.5, -1.0, -0.25, 0.5, 0.5, 0.75, 1.0, 1.0, -0.25, 0.5, -0.75, 0.5, 0.75, 0.25, 0.5, -0.75, -0.25, 0.0, 1.0, 0.5, 0.0, -0.25, 1.0, -0.25, 0.25, 0.25, -0.75, 0.25, 0.0, 0.75, -0.25, -0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, 1.0, 1.0, 0.5, 0.25, -0.75, -1.0, 1.0, -0.75, 0.25, 0.0, -1.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.25, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    render_pass_encoder1021.insertDebugMarker("marker");
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query000.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline1010.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group107);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group108);
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1011.setVertexBuffer(0, buffer1017);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1010.setVertexBuffer(0, buffer1015);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1001.setPipeline(render_pipeline1011);
    render_pass_encoder1010.end();
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group109);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1010.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer1010);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1031.setVertexBuffer(0, buffer1017);
    render_pass_encoder0021.setPipeline(render_pipeline000);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1011.setIndexBuffer(buffer1015, "uint16");
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline1011.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group1010);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.end();
    render_pass_encoder0021.endOcclusionQuery()
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    device10.queue.submit([]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.setVertexBuffer(0, buffer1015);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1021.drawIndexed(3);
    const command_buffer103 = command_encoder103.finish();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.draw(3);
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

    render_pass_encoder0021.setBindGroup(0, bind_group001);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0021.setVertexBuffer(0, buffer001);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0020.setVertexBuffer(0, buffer001);
    render_pass_encoder1011.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder1021.end();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1000.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1021.end();
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1000.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1000.end();
    device20.queue.submit([]);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1030.end();
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0021.end();
    device30.queue.submit([]);
    render_pass_encoder1011.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer006, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.end();
    render_pass_encoder1011.draw(3);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.popDebugGroup();
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer103, 0);
    device20.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.end();
    device20.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1031.end();
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    compute_pass_encoder1000.end();
    device30.queue.submit([command_buffer301, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer009, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1031.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0010, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0011, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    const command_buffer303 = command_encoder303.finish();
    device60.queue.submit([]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1000.endOcclusionQuery()
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder1020.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    device30.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    device00.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1011.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1021.end();
    device30.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    device60.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1011.end();
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1031.end();
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.end();
    device10.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1026, 0);
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer301, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0018, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0019, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1032, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0010.end();
    compute_pass_encoder3030.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.draw(3);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0020.draw(3);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1031.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_pass_encoder0021.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1001.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.draw(3);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.draw(3);
    compute_pass_encoder3030.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    device10.queue.submit([]);
    render_pass_encoder1021.end();
    render_pass_encoder1030.draw(3);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    device30.queue.submit([command_buffer302, ]);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1021.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder1000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.end();
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1011.end();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.end();
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0021.draw(3);
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    device20.queue.submit([]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer301, ]);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder3010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1038, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([]);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1011.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1010.setIndexBuffer(buffer1033, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1030, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1021.draw(3);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0027, 0);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder0020.popDebugGroup();
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    render_pass_encoder1031.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1001.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.end();
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1043, 0);
    device60.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    compute_pass_encoder0010.popDebugGroup()
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder0021.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1001.end();
    render_pass_encoder1001.setIndexBuffer(buffer1035, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    device30.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    device20.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.end();
    compute_pass_encoder3020.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder1031.end();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder1021.end();
    compute_pass_encoder0010.end();
    compute_pass_encoder0010.end();
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0010.end();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1030.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    compute_pass_encoder3020.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1047, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1030.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndirect(buffer1047, 0);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer1029, 0);
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
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.end();
    render_pass_encoder1030.drawIndirect(buffer1047, 0);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1032, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1051, 0);
    device00.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    device00.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder1031.drawIndirect(buffer102, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0021.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1035, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1052, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1031.end();
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder1021.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.end();
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1048, 0);
    device00.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1039, "uint16");
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
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1052, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1055, 0);
    device00.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1052, "uint16");
    device20.queue.submit([command_buffer200, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1021.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder1011.popDebugGroup();
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    device20.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1031, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder0020.end();
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    device60.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder3020.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0020.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder0020.end();
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1001.drawIndirect(buffer1056, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndirect(buffer1056, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1020.end();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
}