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
    
    
    const array0 = new Float32Array([-0.75, 0.5, 0.5, 0.0, -1.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.25, 0.25, 0.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.0, 0.75, -0.25, -0.25, -1.0, 0.75, 0.75, 0.75, 0.75, 0.75, -0.5, 0.5, -0.75, -0.5, -0.5, -0.75, -1.0, 0.0, -0.75, 0.25, 0.0, 1.0, -0.5, -1.0, 1.0, 0.25, -1.0, -1.0, -0.75, 1.0, 0.75, 0.0, -0.5, 0.25, -0.5, -0.5, 0.0, 1.0, -0.75, 0.25, 0.0, -0.75, -1.0, 0.5, 0.0, 1.0, -0.25, -0.25, 0.75, 0.0, -0.5, 1.0, 0.5, 1.0, -0.5, 0.25, -0.75, 0.25, 0.5, 0.25, 0.0, 0.5, 0.0, 0.75, -0.75, 0.75, -0.5, -1.0, 0.0, 0.25, 0.25, 0.75, 0.25, -0.5, 1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 0.25, 0.75, ]);
    const array1 = new Float32Array([0.25, -1.0, -0.25, 0.25, -0.75, 0.25, 0.0, 0.5, 1.0, -0.25, 0.25, -1.0, -0.75, 0.5, 1.0, -1.0, -0.75, -0.5, -1.0, 1.0, 0.25, 0.5, 0.75, 0.0, -0.75, 0.0, -0.5, -0.75, 0.0, 0.75, 1.0, 0.5, -1.0, -0.5, 1.0, 0.75, 1.0, 0.5, 0.0, 0.0, -1.0, -1.0, 0.75, -0.5, 0.25, 0.25, -0.75, -0.5, -0.75, -0.25, 0.5, -0.5, 0.25, 1.0, -0.5, -0.75, 0.25, -0.75, 0.75, -1.0, 1.0, -0.5, 1.0, 0.5, 0.5, -0.25, 0.0, -0.75, 0.0, 0.75, -0.5, 0.0, 0.25, 0.25, -1.0, -0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -0.75, -0.5, 0.5, -1.0, 0.0, 0.25, -0.75, 0.75, 0.0, -1.0, 0.5, -1.0, -0.5, -0.25, -0.75, -1.0, -0.25, -0.5, -0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-0.75, -0.75, 0.5, -0.5, -0.75, -0.5, -1.0, 1.0, 0.75, -0.5, -0.75, -0.5, -0.5, -0.5, -0.25, 0.25, -1.0, 0.75, 0.75, 0.25, 0.75, -0.5, -0.25, -1.0, 0.5, -0.25, 1.0, 0.75, 0.25, -1.0, -0.25, 0.5, 0.75, 0.0, 0.25, -0.75, -0.75, -0.25, -1.0, -0.25, 0.75, -0.75, 0.5, 0.75, -0.5, 0.25, 0.25, -0.25, 0.0, -0.5, -0.75, 0.75, -0.25, 1.0, 0.25, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, -0.75, -0.25, 0.75, -1.0, -0.5, -0.25, 0.5, -1.0, 1.0, 0.5, -1.0, 0.0, 0.5, -0.75, 0.0, -0.75, 1.0, -0.25, -0.5, 1.0, 0.0, 0.25, -0.25, 0.75, 0.0, -0.5, -1.0, 0.0, -0.5, 0.0, 0.5, 1.0, -0.75, -0.75, -0.5, 1.0, 0.5, -0.75, -1.0, ]);
    const array3 = new Float32Array([-0.25, 0.25, 0.5, 0.75, -0.25, 0.0, 0.25, -1.0, -0.25, -1.0, 0.25, -0.25, -0.75, -1.0, 1.0, -1.0, 0.5, 0.75, 0.0, -1.0, -0.5, 1.0, -0.5, 0.5, -0.25, 0.0, 0.25, 0.5, 0.75, -0.75, 0.75, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, -1.0, -1.0, 0.0, 0.25, -0.5, 0.75, 0.5, -1.0, -0.75, -0.25, -0.75, -0.5, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 0.75, -0.5, -1.0, 1.0, 1.0, -1.0, -1.0, -0.25, 1.0, -0.75, 1.0, 0.25, 1.0, 0.75, 0.0, -0.5, 0.75, 1.0, -0.5, -1.0, -0.75, -0.5, 0.0, 0.5, -0.5, -0.75, -1.0, 0.5, 0.0, -0.25, -0.5, 1.0, 1.0, -0.75, -0.25, 0.0, 0.25, -0.75, 1.0, -0.25, 0.0, -0.25, 1.0, 0.75, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array4 = new Float32Array([-1.0, 0.25, -0.25, -0.25, 0.5, -1.0, 1.0, 0.0, 0.0, 0.75, 0.5, 0.0, -1.0, 1.0, -1.0, 0.0, 0.25, -1.0, -1.0, 1.0, 0.5, 0.25, -0.25, 0.5, -0.75, -0.25, -1.0, 0.0, -0.25, -0.5, 0.75, -1.0, 0.0, -0.75, -0.25, 0.75, -0.25, -0.5, 0.0, -1.0, 1.0, -1.0, 1.0, -0.5, 0.0, 0.25, -0.25, 0.25, -1.0, -1.0, 0.25, 0.5, -0.25, 0.75, -0.25, 0.25, -1.0, 0.25, 1.0, -0.25, 1.0, 0.5, -1.0, -0.25, -0.75, -0.25, 1.0, 0.75, -1.0, 0.25, 1.0, -0.75, -1.0, -0.25, 0.75, 1.0, -1.0, -1.0, 0.75, 0.25, 1.0, -0.75, 0.5, -1.0, -0.5, -0.5, 1.0, 0.0, 0.0, 0.0, 1.0, 0.5, 1.0, -1.0, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer100.destroy()
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    
    
    
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
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const array5 = new Float32Array([0.25, 0.5, -0.25, -0.5, -1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -0.75, -0.75, -0.25, -0.75, 0.75, -0.5, -0.25, -0.75, -1.0, -1.0, 1.0, -0.5, -0.75, 0.75, -1.0, -0.75, 0.75, -0.25, 0.75, 0.75, -0.75, 0.5, 0.5, 0.0, 1.0, 1.0, -0.25, 0.75, 0.5, -0.5, 1.0, -0.75, -0.5, -0.5, 1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.0, 1.0, -0.5, 0.5, -0.75, 1.0, 0.75, -0.75, -1.0, 0.75, -0.75, -0.5, -0.25, 0.75, 0.0, -0.5, 0.75, 0.0, 0.75, -0.75, 0.75, -0.25, 1.0, -0.75, -0.25, -0.25, -0.75, 0.25, 1.0, 0.25, 0.75, 0.75, -0.25, 0.75, 0.75, 0.25, -0.25, 0.0, 0.25, -0.75, -1.0, -0.75, -0.25, -0.25, -0.25, 0.25, -0.25, 0.25, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    command_encoder300.popDebugGroup()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder300.pushDebugGroup("mygroupmarker")
    texture100.destroy();
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder300.clearBuffer(buffer300);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_buffer301 = command_encoder301.finish();
    
    buffer001.destroy()
    device30.queue.submit([command_buffer301, ]);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device20.destroy();
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder300.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.pushErrorScope("internal");
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1010.beginOcclusionQuery(0)
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    query001.destroy()
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
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder300.clearBuffer(buffer300);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1010.beginOcclusionQuery(1)
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder1010.setStencilReference(1);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device10.queue.submit([command_buffer100, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    command_encoder300.popDebugGroup()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder300.clearBuffer(buffer300);
    command_encoder102.pushDebugGroup("mygroupmarker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([]);
    
    query000.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query102.destroy()
    
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    texture300.destroy();
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
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
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    
    texture000.destroy();
    command_encoder300.clearBuffer(buffer300);
    command_encoder302.insertDebugMarker("mymarker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder302.copyBufferToBuffer(
        buffer302,
        0,
        buffer300,
        0,
        400
    );
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device30.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder1020.executeBundles([])
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    render_pass_encoder1020.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    query102.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
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
    
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_pass_encoder1021.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    query000.destroy()
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query000.destroy()
    render_pass_encoder1021.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.pushErrorScope("out-of-memory");
    device00.queue.submit([command_buffer000, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    device40.destroy();
    texture001.destroy();
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder1011.setPipeline(render_pipeline100);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
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
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query002.destroy()
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
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
        occlusionQuerySet: query002
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder1010.setStencilReference(1);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
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
        occlusionQuerySet: undefined
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query003.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0010.setPipeline(render_pipeline005);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query102
    });
    query102.destroy()
    render_pass_encoder1021.setPipeline(render_pipeline101);
    render_pass_encoder1010.executeBundles([])
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    buffer003.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder1031.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder1021.pushDebugGroup("group_marker");
    query101.destroy()
    texture301.destroy();
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    query000.destroy()
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.popDebugGroup();
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group101);
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
    render_pass_encoder0011.executeBundles([])
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    render_pass_encoder0010.beginOcclusionQuery(0)
    texture000.destroy();
    render_pass_encoder0011.setPipeline(render_pipeline005);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setStencilReference(1);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer103.destroy()
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
    render_pass_encoder1030.setPipeline(render_pipeline101);
    
    render_pass_encoder0011.popDebugGroup();
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1011.setVertexBuffer(0, buffer103);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture600.destroy();
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    buffer002.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.popDebugGroup();
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query003.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1031.pushDebugGroup("group_marker");
    
    
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group103);
    render_pass_encoder0011.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    query101.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.setPipeline(render_pipeline101);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    render_pass_encoder1040.setVertexBuffer(0, buffer103);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group105);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    render_pass_encoder1010.setVertexBuffer(0, buffer106);
    render_pass_encoder1030.setVertexBuffer(0, buffer1014);
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group001);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.setVertexBuffer(0, buffer005);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.end();
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    render_pass_encoder1031.setPipeline(render_pipeline102);
    const command_buffer104 = command_encoder104.finish();
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group108);
    render_pass_encoder1031.setVertexBuffer(0, buffer1016);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.setVertexBuffer(0, buffer1019);
    device10.queue.submit([]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1021.setVertexBuffer(0, buffer102);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    device60.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1030.end();
    render_pass_encoder0010.setVertexBuffer(0, buffer008);
    command_encoder101.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    command_encoder102.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    const command_buffer103 = command_encoder103.finish();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0010.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1030.end();
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device10.queue.submit([command_buffer104, ]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder0011.draw(3);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1021.end();
    render_pass_encoder1010.end();
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device60.queue.submit([]);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([]);
    render_pass_encoder1011.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0010.end();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.end();
    device10.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder0011.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0010.end();
    render_pass_encoder1031.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder0011.draw(3);
    device10.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device10.queue.submit([]);
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.end();
    device00.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1031.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0011.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
}