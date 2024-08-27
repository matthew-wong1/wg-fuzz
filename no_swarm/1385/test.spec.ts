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
    
    const array0 = new Float32Array([-0.5, 0.75, -0.5, 0.25, -0.25, -1.0, -0.25, -0.25, 0.75, 1.0, 0.75, -1.0, 0.25, -0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.0, 0.25, -0.25, 0.25, -0.75, 0.0, -1.0, 0.25, -1.0, -0.5, 1.0, -0.5, -0.5, 1.0, 0.75, 0.75, -1.0, 0.5, 1.0, -0.25, 0.0, -1.0, 1.0, 0.5, 0.75, 0.25, 0.5, -0.25, 0.0, -0.25, 0.75, 0.0, 0.5, 0.25, -1.0, 1.0, -0.25, 0.0, -0.25, -1.0, -0.5, 0.25, 1.0, -1.0, 0.25, 0.75, -1.0, 1.0, 0.5, 1.0, 0.75, 1.0, 0.75, -1.0, -0.5, 0.75, 1.0, 0.5, 1.0, -0.5, -0.75, -0.25, -0.25, 0.0, 0.5, -0.5, -0.75, -0.75, 0.25, 0.25, 1.0, 0.75, -0.25, 0.0, 0.75, -0.75, -0.25, 0.25, 0.5, 0.25, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, -1.0, 0.0, 0.5, 0.0, 0.0, 1.0, 0.5, -0.75, 0.0, 0.0, 1.0, -0.25, -0.25, 0.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.25, 1.0, -1.0, -0.75, -0.5, -1.0, 0.5, -1.0, 0.0, -0.5, 0.25, 0.5, -0.25, 1.0, 0.75, 0.25, 0.5, -0.75, 1.0, 0.0, 0.25, -1.0, 0.25, 0.75, -0.25, 0.0, 0.75, 0.25, 0.75, 0.5, 0.0, 0.0, 1.0, 1.0, 0.25, -0.5, 1.0, -0.25, 0.25, -0.5, 0.0, 0.5, -1.0, -0.5, -0.25, 1.0, -0.25, -0.25, -0.25, 0.75, 0.5, -1.0, 0.75, 1.0, -0.75, 0.25, 1.0, -0.5, -0.75, 0.0, -0.25, -0.25, 0.25, 1.0, -0.75, 0.25, 0.0, 0.0, -0.25, -1.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.5, 0.25, 0.75, -1.0, -1.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.0, -0.5, -1.0, -1.0, 0.75, 0.5, -0.5, 0.25, -1.0, -0.75, -0.5, 0.0, 1.0, 0.5, 0.75, -0.75, 0.25, 0.5, 1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 0.75, 1.0, 0.25, 0.0, -0.5, -1.0, -0.25, -0.25, 1.0, -0.75, -0.75, 0.75, 0.5, 1.0, 1.0, 0.0, -0.75, 1.0, 0.25, -0.75, -1.0, -0.75, 0.25, 0.0, -0.5, 0.5, -0.5, 1.0, 0.25, 0.25, 0.0, -0.25, 0.75, -0.25, -0.75, 0.25, -0.5, -0.25, 0.25, 0.5, 1.0, 0.0, 0.5, 0.0, -1.0, 0.5, -0.5, -0.25, 0.75, -0.25, 0.25, -0.25, 0.0, -0.75, 0.75, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, 0.75, -0.75, 1.0, 1.0, -1.0, 0.0, 0.75, 0.75, -1.0, 0.25, -0.25, -0.25, -0.25, 0.5, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query100.destroy()
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.destroy();
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("validation");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device10.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    texture400.destroy();
    
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    query100.destroy()
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    buffer400.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
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
    const command_buffer400 = command_encoder400.finish();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    device60.pushErrorScope("internal");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.pushErrorScope("validation");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query400.destroy()
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4010.popDebugGroup();
    const array3 = new Float32Array([-0.75, 0.0, -0.75, 0.5, -1.0, 0.5, -0.5, -0.25, 0.25, 0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 1.0, 1.0, 1.0, -0.25, 1.0, -0.75, -0.75, -1.0, -0.5, -1.0, 0.0, 0.75, 0.75, 0.0, 1.0, 1.0, -0.5, 0.75, 0.25, 0.0, -0.25, 0.0, -0.5, 0.5, -1.0, -0.25, 1.0, -0.5, -1.0, 1.0, 0.0, 0.0, 0.0, 0.0, -0.5, 0.0, -1.0, -1.0, -1.0, 0.25, -0.25, 0.25, 0.75, -0.75, 0.0, -0.5, 0.5, 0.0, -0.5, 0.25, 0.0, 0.5, -1.0, 0.0, 0.25, 0.25, -1.0, -1.0, 1.0, 1.0, 0.25, 0.5, -0.25, 0.75, -0.5, 0.75, -0.5, 0.25, 0.75, -1.0, 0.75, -1.0, 0.5, -1.0, 0.75, 0.5, 0.5, -0.5, -0.5, 0.25, -1.0, 0.5, 0.25, 0.5, -0.5, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    texture600.destroy();
    buffer600.destroy()
    const array4 = new Float32Array([-0.25, -1.0, 0.25, -0.5, -0.75, -0.75, 0.75, 0.5, 0.25, -0.75, -0.5, 0.75, 0.0, 0.0, 0.5, -0.25, -1.0, 0.25, -0.25, 0.75, -0.75, 0.0, -1.0, 0.5, 0.0, -1.0, 0.75, -0.5, -0.25, 0.5, 0.75, 0.25, -0.5, -0.25, 0.25, 0.0, 0.0, 0.25, 1.0, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, 0.0, 0.5, 0.25, 1.0, 1.0, -0.75, 0.0, 0.5, 0.0, 0.0, 0.75, 0.75, 0.25, -1.0, 1.0, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, -0.25, -0.5, -0.5, -0.25, -0.5, -1.0, 0.25, -1.0, 0.25, -0.75, -0.5, 0.25, 0.5, 0.0, -0.5, -0.5, 1.0, 1.0, -1.0, 0.0, -0.75, 0.5, 0.25, -0.75, -1.0, 1.0, 0.25, 0.25, -0.75, 0.5, 0.75, -0.25, 0.5, 1.0, ]);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder4010.setPipeline(render_pipeline400);
    device40.pushErrorScope("internal");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer301.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture600.destroy();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    
    const array5 = new Float32Array([-0.5, 0.75, 0.25, -0.75, -1.0, -1.0, 0.75, -1.0, 0.25, 0.75, 0.0, -1.0, 0.75, 0.0, 0.25, 0.5, -0.5, -1.0, -0.25, 0.75, 0.5, -0.5, -1.0, -1.0, -0.75, -0.75, -0.25, 0.75, 0.0, 0.0, 0.75, -1.0, -0.75, 0.0, 0.5, 1.0, -0.5, -0.75, -0.75, -1.0, 0.25, 0.5, -0.75, 0.75, 0.25, 0.0, -0.75, 0.5, -0.25, 1.0, 1.0, -0.75, 0.5, 0.5, -0.25, 1.0, -0.75, -0.75, 0.5, 0.25, 0.5, 0.75, -0.75, -0.5, 1.0, -0.25, 0.25, -1.0, 0.25, -0.5, -1.0, 0.5, -1.0, 0.5, -0.25, 1.0, 1.0, 0.0, 0.75, 0.25, 0.75, 0.75, -0.5, 0.25, -0.25, -0.25, -0.5, 0.5, -0.5, -0.5, 1.0, -0.75, -0.25, 0.0, -1.0, -1.0, -1.0, -0.5, 0.0, 0.0, ]);
    
    
    
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
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4012,
            },
        ],
        occlusionQuerySet: query400
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const array6 = new Float32Array([-1.0, 0.0, 0.25, 0.75, -0.5, 1.0, -0.75, -0.75, 0.5, 1.0, -0.25, 0.75, -1.0, 0.75, 0.75, -0.25, 1.0, -1.0, -0.75, -0.25, 1.0, 1.0, 1.0, 0.5, 0.0, 0.5, 0.25, -0.5, 0.0, 0.0, -0.25, 1.0, 1.0, -0.5, 0.5, -0.25, 0.0, 1.0, 0.0, 1.0, 1.0, -1.0, -0.25, -0.75, 1.0, -0.25, 0.5, 0.5, 0.25, 0.0, -0.75, -0.75, 0.25, 1.0, 0.5, -0.75, 1.0, -0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 0.75, -0.25, 0.25, -0.75, 0.0, 0.75, -1.0, -1.0, -0.5, -0.5, 0.0, -1.0, 0.5, 0.75, 0.25, 0.25, 1.0, -0.25, -1.0, 0.5, -0.25, 0.0, 0.75, -0.25, -1.0, -1.0, -0.75, 0.0, -1.0, -0.25, 0.75, 0.0, -1.0, 0.25, 0.5, -0.25, 0.0, ]);
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    texture600.destroy();
    
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    texture401.destroy();
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer401.destroy()
    const array7 = new Float32Array([1.0, 1.0, 0.75, 0.5, 1.0, 0.75, 0.0, 0.25, -0.25, -0.5, -0.5, 1.0, -0.75, 0.75, -0.75, -1.0, 0.5, -0.75, -0.75, -0.5, -0.25, -0.5, -0.5, -0.75, 0.25, -0.5, 0.75, -0.75, 0.0, -0.75, 1.0, 0.0, -1.0, -0.75, -0.75, 0.75, 1.0, 0.5, 0.75, -0.75, 0.0, 0.25, -0.75, -0.25, 1.0, 0.25, 1.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.75, -1.0, -0.25, 0.75, 0.0, -0.75, -0.25, 0.25, -0.75, 1.0, -0.25, 0.75, -0.5, 0.0, 0.0, 0.5, 0.75, 0.5, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, -0.5, 0.75, 0.25, 0.25, -0.75, -0.25, 0.0, -0.75, 0.0, 1.0, 1.0, 0.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.0, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    query401.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    render_pass_encoder4011.insertDebugMarker("marker");
    query600.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query600.destroy()
    
    
    texture100.destroy();
    
    
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    query300.destroy()
    
    buffer402.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder4011.setPipeline(render_pipeline402);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder4011.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4011.beginOcclusionQuery(0)
    render_pass_encoder4011.insertDebugMarker("marker");
    const command_buffer602 = command_encoder602.finish();
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer603.destroy()
    {
        await buffer603.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer603.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer603.unmap();
        console.log(new Float32Array(data));
    }
    buffer602.destroy()
    const array8 = new Float32Array([0.25, 1.0, -0.5, 1.0, -1.0, 0.25, -0.25, 1.0, -1.0, 0.25, -0.25, -0.75, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, 0.25, 0.0, -0.25, -0.5, 0.0, 0.0, 0.0, -0.75, -0.5, -0.5, -0.25, -0.5, -0.25, -0.75, 0.25, -0.5, -1.0, -0.5, 0.5, 0.5, -1.0, 0.0, -0.75, 0.5, -1.0, -0.25, 1.0, -0.75, -1.0, 0.25, 0.25, -0.75, -0.5, -0.5, 0.75, -0.5, -0.5, -0.25, 0.0, 0.75, 1.0, 0.5, 0.25, 0.0, -0.75, 1.0, -1.0, -1.0, -1.0, -1.0, 0.25, -1.0, -1.0, 0.25, 0.5, 0.25, 0.0, 0.75, 1.0, 0.75, 0.5, -0.5, 1.0, 0.25, 0.25, -0.25, 0.75, 0.5, -1.0, 0.75, 1.0, 0.25, 0.5, 0.5, -0.5, 0.0, -0.75, 0.75, 0.25, 0.5, 1.0, 1.0, ]);
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query400.destroy()
    render_pass_encoder4010.popDebugGroup();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    const command_buffer303 = command_encoder303.finish();
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.setStencilReference(1);
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture402.destroy();
    
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder603.copyBufferToBuffer(
        buffer602,
        0,
        buffer601,
        0,
        400
    );
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    command_encoder402.resolveQuerySet(
        query402,
        0,
        32,
        buffer401,
        0
    )
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    texture300.destroy();
    
    
    render_pass_encoder4020.insertDebugMarker("marker");
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device60.queue.writeBuffer(buffer604, 0, array5, 0, array5.length);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    buffer403.destroy()
    
    render_pass_encoder4020.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    command_encoder604.insertDebugMarker("mymarker");
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.pushErrorScope("out-of-memory");
    
    
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture606 = device60.createTexture({
        label: "texture606",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4020.setPipeline(render_pipeline403);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder604.copyTextureToTexture(
        {
            texture: texture605
        },
        {
            texture: texture606
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder603.copyBufferToBuffer(
        buffer604,
        0,
        buffer600,
        0,
        400
    );
    device60.queue.writeBuffer(buffer604, 0, array7, 0, array7.length);
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    command_encoder604.copyTextureToTexture(
        {
            texture: texture605
        },
        {
            texture: texture601
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder4011.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const command_buffer603 = command_encoder603.finish();
    query300.destroy()
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder4011.endOcclusionQuery()
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder604.copyTextureToBuffer(
        {
            texture: texture606
        },
        {
            buffer: buffer603
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    buffer604.destroy()
    buffer405.destroy()
    texture201.destroy();
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query601
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    query602.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture604 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.popDebugGroup();
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder600.copyTextureToBuffer(
        {
            texture: texture602
        },
        {
            buffer: buffer602
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.popDebugGroup();
    query403.destroy()
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    render_bundle_encoder601.popDebugGroup();
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    
    
    device60.queue.writeTexture({ texture: texture602 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4011.setStencilReference(1);
    device60.queue.writeTexture({ texture: texture602 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const texture_view6060 = texture606.createView({ label: "texture_view6060" });
    texture606.destroy();
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    texture605.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout408,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4011.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer606.destroy()
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
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
    device60.queue.writeTexture({ texture: texture604 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    render_pass_encoder4010.setStencilReference(1);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6040.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder302.popDebugGroup()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.submit([command_buffer601, command_buffer602, command_buffer603, ]);
    
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder4011.endOcclusionQuery()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4011.setBindGroup(0, bind_group401);
    compute_pass_encoder6040.setPipeline(compute_pipeline604);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    const command_buffer200 = command_encoder200.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4010.setVertexBuffer(0, buffer405);
    device30.queue.submit([command_buffer303, ]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer609, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer609, 0);
    const command_buffer302 = command_encoder302.finish();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    render_pass_encoder4010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder4010.setIndexBuffer(buffer407, "uint16");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder4010.drawIndexedIndirect(buffer406, 0);
    device40.queue.submit([command_buffer400, ]);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder4011.setVertexBuffer(0, buffer404);
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6011,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group602);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    compute_pass_encoder6040.end();
    render_pass_encoder4011.draw(3);
    const command_buffer304 = command_encoder304.finish();
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder3010.end();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder4020.setVertexBuffer(0, buffer408);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer400, 0);
    render_pass_encoder4011.end();
    render_pass_encoder4010.draw(3);
    render_pass_encoder4010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder4020.end();
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group603);
    device30.queue.submit([command_buffer302, ]);
    device00.queue.submit([]);
    device60.queue.submit([]);
    device20.queue.submit([]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder6000.end();
    render_pass_encoder4020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4010.end();
    command_encoder600.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3010.end();
    device30.queue.submit([command_buffer304, ]);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder4010.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4010.draw(3);
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder6000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer400, ]);
    device60.queue.submit([]);
    device60.queue.submit([command_buffer600, command_buffer602, command_buffer603, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer402, 0);
    device70.queue.submit([]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4011.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder4020.draw(3);
    compute_pass_encoder3010.dispatchWorkgroups(100);
}