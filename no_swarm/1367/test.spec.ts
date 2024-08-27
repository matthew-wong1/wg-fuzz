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
    device00.destroy();
    
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.25, -0.25, 0.75, -1.0, -0.75, -0.75, -1.0, -0.5, 0.25, -0.25, 0.5, 0.5, -0.5, 0.5, -0.75, 0.25, -0.75, 0.25, 1.0, 0.75, -0.75, 1.0, -1.0, -1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.0, 0.5, 0.75, 0.75, 0.75, 0.5, 0.5, -0.75, 0.0, 1.0, 0.75, -0.5, 0.25, -0.75, 1.0, -0.75, 0.0, -0.75, 0.0, 0.0, -1.0, -0.75, 0.75, 0.5, 0.0, 0.0, 0.5, -1.0, 0.5, -1.0, -0.25, 0.0, -0.25, 1.0, 0.0, 0.5, 0.75, 1.0, -0.25, 0.0, -0.25, 0.75, 0.75, 0.0, -0.5, 0.0, -1.0, 0.75, 0.25, -0.75, 0.25, 1.0, -1.0, -0.75, 0.25, 0.5, 0.0, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, 0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.75, -1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
    device10.destroy();
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const array1 = new Float32Array([0.5, -0.75, 0.75, -0.75, -0.5, 0.25, 0.5, -0.5, 0.0, 0.75, 0.25, 0.5, -1.0, -0.25, 0.75, 0.25, -0.75, 0.0, -0.25, -0.75, -1.0, 0.75, 1.0, 0.0, -1.0, 0.5, 0.75, -0.75, -0.75, 1.0, -1.0, -0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.75, -0.5, -0.75, 0.0, 1.0, -0.5, -1.0, -0.25, 0.25, 0.25, -0.5, 0.0, 0.0, 0.0, 1.0, -0.75, -1.0, 0.75, 0.25, 0.25, 0.25, -0.75, 0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 1.0, -0.25, 0.75, 0.0, 0.75, 0.5, 0.25, 0.0, 0.5, 0.0, 0.5, 0.25, 0.0, 1.0, 0.25, -0.5, 0.0, -0.5, -0.25, 1.0, 0.25, 0.0, 1.0, 1.0, 0.5, 0.0, -1.0, 1.0, 0.0, 1.0, 0.25, 1.0, 0.25, 0.25, -0.25, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    texture200.destroy();
    
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const array2 = new Float32Array([-1.0, -0.25, 0.75, -0.25, -1.0, 0.25, 0.5, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, -0.25, -1.0, -1.0, -0.75, 0.0, 0.25, 0.5, 0.5, 0.0, -0.75, 0.75, 0.75, -0.25, 0.0, -0.75, -0.5, 0.75, -0.75, 0.75, -0.5, 0.75, 0.5, 0.75, 0.5, -0.5, -0.25, -1.0, 1.0, -0.5, 0.0, 0.0, -0.25, 1.0, -0.75, 1.0, -0.75, -0.25, 0.0, -0.25, 0.0, -1.0, 0.75, -0.25, -0.5, 0.75, 0.5, -0.75, -1.0, 0.75, 0.0, -0.75, 0.75, 0.0, -0.25, -0.75, 1.0, 0.25, 0.25, 1.0, 0.25, -0.25, -0.5, 0.5, 1.0, 0.5, 0.75, -1.0, -0.25, -1.0, 0.75, -0.25, 0.5, 0.75, 1.0, 0.75, 0.75, 0.0, -0.25, -0.25, 0.75, 1.0, 0.5, 0.75, -1.0, 0.25, -0.5, 0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder400.popDebugGroup();
    const array3 = new Float32Array([-1.0, 1.0, -0.25, -1.0, 0.25, 0.25, -0.25, 0.0, 0.75, 1.0, 0.75, -0.75, 1.0, 0.75, -0.25, 0.5, 0.75, 0.0, 1.0, -0.75, -0.75, -0.5, 1.0, -1.0, -1.0, 0.25, -1.0, -1.0, 0.25, 1.0, -0.5, -0.5, -0.75, -0.75, -0.5, -0.25, -0.25, -0.25, 0.5, 0.5, -0.5, -1.0, 0.25, -0.5, -0.5, -0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, 0.5, 0.0, 0.25, 1.0, 0.5, -0.75, -1.0, 0.25, -1.0, -0.5, -0.5, -1.0, -0.25, -0.5, 1.0, 0.25, 0.75, 1.0, 0.0, -0.25, 1.0, 0.75, -0.75, 0.75, 1.0, 0.75, 0.5, -1.0, -0.75, 0.75, 0.25, 0.25, -1.0, 0.25, 0.5, 0.25, -0.75, -0.5, 0.5, 1.0, 0.5, -1.0, 0.0, 0.5, -1.0, 0.25, 1.0, -0.75, ]);
    device40.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    device30.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query400.destroy()
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.pushErrorScope("validation");
    buffer400.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    device40.destroy();
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    const array4 = new Float32Array([-1.0, 0.0, 0.0, -0.5, -0.5, -0.75, 0.25, 0.25, -0.25, 0.25, 0.5, -0.25, -1.0, 0.25, 0.25, 0.25, -0.25, 0.5, 0.5, -0.75, -0.25, -0.25, -0.75, -1.0, 0.75, 0.75, 0.5, -1.0, 0.0, 1.0, -0.25, 1.0, 0.5, -0.75, -0.75, 1.0, -1.0, 0.75, 0.75, -0.5, -1.0, -0.5, 0.75, 1.0, 0.75, -0.75, 0.0, 0.75, 0.25, 1.0, -0.5, -0.5, -0.5, 0.25, -1.0, -0.75, 1.0, -0.75, -0.75, 1.0, 0.0, -0.75, 0.5, 0.5, 0.0, 0.0, 0.25, 1.0, 1.0, 0.5, 0.75, -1.0, 0.5, -0.75, 1.0, -1.0, -0.75, 0.5, 0.5, 0.25, 0.0, 0.75, 0.0, -0.75, 1.0, 0.0, 0.5, 1.0, 0.25, -0.5, -0.75, 0.25, -0.25, 0.5, 0.25, 0.5, 0.75, -0.25, 0.25, 0.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const array5 = new Float32Array([-0.5, -0.5, 1.0, 1.0, 0.5, -1.0, -0.5, 0.5, 0.25, -1.0, 0.5, 0.25, -0.5, 1.0, 0.0, 0.5, 1.0, 1.0, -0.75, 0.75, 1.0, 0.5, -0.75, -0.5, 0.5, 0.0, 0.25, -0.25, 0.5, -0.25, 1.0, -1.0, -0.5, 0.5, -1.0, -1.0, -0.5, 0.25, -0.5, 0.25, 0.25, -0.5, 0.25, 0.5, 0.5, -0.5, 0.75, -1.0, 0.75, 0.75, -1.0, -1.0, 0.0, 1.0, 0.5, -1.0, -0.25, -0.5, -1.0, 0.5, -0.5, -0.75, 1.0, 0.75, -1.0, 1.0, -1.0, -1.0, -0.25, -0.5, 0.0, -0.75, 0.5, -0.25, 0.25, 1.0, -0.75, -0.75, 1.0, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.75, 0.5, 0.25, 0.0, -0.75, -0.75, -0.75, -0.75, 1.0, 0.0, 1.0, -0.25, 0.0, 0.5, -0.25, ]);
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.destroy();
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    
    
    const array6 = new Float32Array([0.5, 0.0, 0.75, -1.0, -0.75, -0.5, 0.0, 0.75, 0.75, -0.5, -0.25, 0.25, 0.75, -0.25, 0.75, 1.0, -0.5, 1.0, -0.5, 0.5, 0.75, 0.75, 0.25, -1.0, 0.5, 0.0, 0.25, 1.0, 0.25, 1.0, -1.0, -0.25, -1.0, -1.0, 0.0, -0.5, -0.75, 0.25, -0.25, 0.0, -1.0, 0.25, 0.75, 0.25, -0.75, 0.0, -0.5, 1.0, 1.0, 0.5, 1.0, -1.0, -1.0, 0.5, 0.75, 1.0, -1.0, -0.25, -0.25, -1.0, 0.5, 1.0, -1.0, 1.0, 0.75, -0.75, -0.25, 0.0, -0.5, -0.5, 0.25, 0.75, 0.0, -0.5, -0.25, 0.75, 1.0, -1.0, -1.0, -0.5, -1.0, 0.75, 0.25, -1.0, -1.0, 1.0, 0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.0, -0.25, 0.75, -0.25, 1.0, 0.75, 0.25, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query500.destroy()
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    render_bundle_encoder000.popDebugGroup();
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
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    const query700 = device70.createQuerySet({
        label: "query700",
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
    
    
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query700.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.pushErrorScope("internal");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    
    
    
    texture400.destroy();
    render_pass_encoder4001.setStencilReference(1);
    command_encoder700.pushDebugGroup("mygroupmarker")
    device70.pushErrorScope("validation");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer701,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const compute_pass_encoder7001 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7001" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    command_encoder300.pushDebugGroup("mygroupmarker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.setPipeline(compute_pipeline702);
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7001.insertDebugMarker("marker")
    buffer701.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    compute_pass_encoder7001.setPipeline(compute_pipeline701);
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const command_buffer701 = command_encoder701.finish();
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    compute_pass_encoder7001.setBindGroup(0, bind_group702);
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder7000.popDebugGroup()
    
    compute_pass_encoder7020.setPipeline(compute_pipeline704);
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder703.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    render_bundle_encoder700.popDebugGroup();
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    buffer703.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer702.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout702]
    });
    compute_pass_encoder7001.dispatchWorkgroups(100);
    
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder7001.insertDebugMarker("marker")
    texture600.destroy();
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
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
    compute_pass_encoder7001.pushDebugGroup("group_marker")
    query700.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder7000.dispatchWorkgroups(100);
    
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    buffer700.destroy()
    const command_buffer703 = command_encoder703.finish();
    command_encoder600.insertDebugMarker("mymarker");
    
    const uint32_7001 = new Uint32Array(3);

    uint32_7001[0] = 100;
    uint32_7001[1] = 1;
    uint32_7001[2] = 1;

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer707, 0, uint32_7001, 0, uint32_7001.length);

    compute_pass_encoder7001.dispatchWorkgroupsIndirect(buffer707, 0);
    buffer702.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder600.insertDebugMarker("mymarker");
    
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device70.queue.writeBuffer(buffer704, 0, array3, 0, array3.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    device70.queue.writeBuffer(buffer704, 0, array0, 0, array0.length);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    buffer704.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: compute_pipeline704.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer709,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group703);
    compute_pass_encoder7020.dispatchWorkgroups(100);
    command_encoder704.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    command_encoder705.copyBufferToBuffer(
        buffer706,
        0,
        buffer707,
        0,
        400
    );
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer7010, 0, array0, 0, array0.length);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    command_encoder704.copyTextureToBuffer(
        {
            texture: texture700
        },
        {
            buffer: buffer707
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    buffer601.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    render_bundle_encoder700.popDebugGroup();
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device80.destroy();
    device70.queue.writeBuffer(buffer707, 0, array0, 0, array0.length);
    command_encoder705.clearBuffer(buffer707);
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device70.queue.writeBuffer(buffer707, 0, array6, 0, array6.length);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device70.queue.writeBuffer(buffer707, 0, array2, 0, array2.length);
    
    const render_pass_encoder7020 = command_encoder702.beginRenderPass({
        label: "render_pass_encoder7020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    command_encoder704.copyBufferToBuffer(
        buffer703,
        0,
        buffer7010,
        0,
        400
    );
    render_pass_encoder7020.setPipeline(render_pipeline702);
    device70.queue.writeBuffer(buffer7010, 0, array6, 0, array6.length);
    compute_pass_encoder7020.insertDebugMarker("marker")
    command_encoder704.copyBufferToBuffer(
        buffer706,
        0,
        buffer7010,
        0,
        400
    );
    render_pass_encoder7020.pushDebugGroup("group_marker");
    compute_pass_encoder7000.dispatchWorkgroups(100);
    device70.queue.writeBuffer(buffer705, 0, array3, 0, array3.length);
    
    render_pass_encoder6000.executeBundles([])
    
    
    
    
    const compute_pass_encoder7040 = command_encoder704.beginComputePass({ label: "compute_pass_encoder7040" });
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7001.popDebugGroup()
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder705.pushDebugGroup("mygroupmarker")
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    device70.queue.submit([command_buffer701, command_buffer703, ]);
    render_pass_encoder7020.insertDebugMarker("marker");
    
    command_encoder705.insertDebugMarker("mymarker");
    render_pass_encoder6000.setStencilReference(1);
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    compute_pass_encoder7020.insertDebugMarker("marker")
    render_pass_encoder6000.insertDebugMarker("marker");
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
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
    buffer709.destroy()
    
    
    
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout704]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder705.clearBuffer(buffer704);
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.setVertexBuffer(0, buffer708);
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer707.destroy()
    
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    
    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7012 = device70.createBuffer({
        label: "buffer7012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7012,
                },
            },
        ],
    });

    render_pass_encoder7020.setBindGroup(0, bind_group704);
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout704]
    });
    render_pass_encoder7020.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    
    query700.destroy()
    command_encoder704.clearBuffer(buffer7010);
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    command_encoder705.copyBufferToBuffer(
        buffer7012,
        0,
        buffer7010,
        0,
        400
    );
    compute_pass_encoder7000.end();
    command_encoder705.copyBufferToBuffer(
        buffer704,
        0,
        buffer7010,
        0,
        400
    );
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout706,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7000.popDebugGroup()
    command_encoder705.copyTextureToBuffer(
        {
            texture: texture700
        },
        {
            buffer: buffer7012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder700.popDebugGroup();
    command_encoder705.copyBufferToBuffer(
        buffer701,
        0,
        buffer7010,
        0,
        400
    );
    const render_pass_encoder7050 = command_encoder705.beginRenderPass({
        label: "render_pass_encoder7050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    compute_pass_encoder7040.setPipeline(compute_pipeline7010);
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder700.setIndexBuffer(buffer705, "uint16");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    {
        await buffer7010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer7010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer7010.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder7050.setPipeline(render_pipeline704);
    device70.pushErrorScope("internal");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    
    
    const buffer7013 = device70.createBuffer({
        label: "buffer7013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7014 = device70.createBuffer({
        label: "buffer7014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group705 = device70.createBindGroup({
        label: "bind_group705",
        layout: compute_pipeline7010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7014,
                },
            },
        ],
    });

    compute_pass_encoder7040.setBindGroup(0, bind_group705);
    const buffer7015 = device70.createBuffer({
        label: "buffer7015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7016 = device70.createBuffer({
        label: "buffer7016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group706 = device70.createBindGroup({
        label: "bind_group706",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7016,
                },
            },
        ],
    });

    compute_pass_encoder7001.setBindGroup(0, bind_group706);
    render_pass_encoder6000.setPipeline(render_pipeline602);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.end();
    compute_pass_encoder7040.popDebugGroup()
    compute_pass_encoder7040.dispatchWorkgroups(100);
    compute_pass_encoder7040.end();
    const buffer7017 = device70.createBuffer({
        label: "buffer7017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7018 = device70.createBuffer({
        label: "buffer7018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group707 = device70.createBindGroup({
        label: "bind_group707",
        layout: compute_pipeline704.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7018,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group707);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7019 = device70.createBuffer({
        label: "buffer7019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7019, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7019, 0);
    command_encoder705.popDebugGroup()
    compute_pass_encoder7020.end();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group600);
    render_pass_encoder6000.setVertexBuffer(0, buffer601);
    render_pass_encoder7020.setVertexBuffer(0, buffer7016);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder7020.draw(3);
    compute_pass_encoder7040.dispatchWorkgroups(100);
    const buffer7020 = device70.createBuffer({
        label: "buffer7020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7021 = device70.createBuffer({
        label: "buffer7021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group708 = device70.createBindGroup({
        label: "bind_group708",
        layout: render_pipeline704.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7021,
                },
            },
        ],
    });

    render_pass_encoder7050.setBindGroup(0, bind_group708);
    compute_pass_encoder7020.popDebugGroup()
    command_encoder704.popDebugGroup()
    render_pass_encoder7050.popDebugGroup();
    compute_pass_encoder7020.end();
    const command_buffer704 = command_encoder704.finish();
    compute_pass_encoder7020.end();
    compute_pass_encoder7020.end();
    compute_pass_encoder7001.end();
    render_pass_encoder7020.setIndexBuffer(buffer702, "uint16");
    render_pass_encoder7020.popDebugGroup();
    device70.queue.submit([command_buffer701, command_buffer704, ]);
    render_pass_encoder7020.end();
    command_encoder700.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer7022 = device70.createBuffer({
        label: "buffer7022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7022, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer7022, 0);
    render_pass_encoder7050.setVertexBuffer(0, buffer7021);
    render_pass_encoder7050.setIndexBuffer(buffer706, "uint16");
    render_pass_encoder7050.drawIndexedIndirect(buffer707, 0);
    render_pass_encoder7020.drawIndirect(buffer7022, 0);
    command_encoder702.popDebugGroup()
    render_pass_encoder6000.draw(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6000.end();
    render_pass_encoder7050.drawIndexedIndirect(buffer702, 0);
    compute_pass_encoder7020.end();
    render_pass_encoder7020.end();
    command_encoder600.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7050.end();
    render_pass_encoder7020.popDebugGroup();
    render_pass_encoder7020.setIndexBuffer(buffer703, "uint16");
    const command_buffer702 = command_encoder702.finish();
    render_pass_encoder7050.drawIndexedIndirect(buffer7017, 0);
    render_pass_encoder7050.draw(3);
    compute_pass_encoder7020.popDebugGroup()
    command_encoder300.popDebugGroup()
    const buffer7023 = device70.createBuffer({
        label: "buffer7023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7024 = device70.createBuffer({
        label: "buffer7024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group709 = device70.createBindGroup({
        label: "bind_group709",
        layout: compute_pipeline704.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7024,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group709);
    render_pass_encoder7050.end();
    compute_pass_encoder7020.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    const buffer7025 = device70.createBuffer({
        label: "buffer7025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7026 = device70.createBuffer({
        label: "buffer7026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7010 = device70.createBindGroup({
        label: "bind_group7010",
        layout: compute_pipeline704.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7026,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group7010);
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder7020.drawIndirect(buffer7012, 0);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer705 = command_encoder705.finish();
    render_pass_encoder4000.popDebugGroup();
    const buffer7027 = device70.createBuffer({
        label: "buffer7027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7028 = device70.createBuffer({
        label: "buffer7028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7011 = device70.createBindGroup({
        label: "bind_group7011",
        layout: compute_pipeline7010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7028,
                },
            },
        ],
    });

    compute_pass_encoder7040.setBindGroup(0, bind_group7011);
    compute_pass_encoder7001.dispatchWorkgroups(100);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    const buffer7029 = device70.createBuffer({
        label: "buffer7029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7030 = device70.createBuffer({
        label: "buffer7030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7012 = device70.createBindGroup({
        label: "bind_group7012",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7030,
                },
            },
        ],
    });

    compute_pass_encoder7001.setBindGroup(0, bind_group7012);
    const uint32_7040 = new Uint32Array(3);

    uint32_7040[0] = 100;
    uint32_7040[1] = 1;
    uint32_7040[2] = 1;

    const buffer7031 = device70.createBuffer({
        label: "buffer7031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7031, 0, uint32_7040, 0, uint32_7040.length);

    compute_pass_encoder7040.dispatchWorkgroupsIndirect(buffer7031, 0);
    render_pass_encoder7020.drawIndexedIndirect(buffer7031, 0);
    compute_pass_encoder7000.end();
    const buffer7032 = device70.createBuffer({
        label: "buffer7032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7033 = device70.createBuffer({
        label: "buffer7033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7013 = device70.createBindGroup({
        label: "bind_group7013",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7033,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group7013);
    const buffer7034 = device70.createBuffer({
        label: "buffer7034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7035 = device70.createBuffer({
        label: "buffer7035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7014 = device70.createBindGroup({
        label: "bind_group7014",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7035,
                },
            },
        ],
    });

    compute_pass_encoder7001.setBindGroup(0, bind_group7014);
    const uint32_7040 = new Uint32Array(3);

    uint32_7040[0] = 100;
    uint32_7040[1] = 1;
    uint32_7040[2] = 1;

    const buffer7036 = device70.createBuffer({
        label: "buffer7036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7036, 0, uint32_7040, 0, uint32_7040.length);

    compute_pass_encoder7040.dispatchWorkgroupsIndirect(buffer7036, 0);
    render_pass_encoder7050.setIndexBuffer(buffer703, "uint16");
    render_pass_encoder7020.drawIndexedIndirect(buffer7012, 0);
    render_pass_encoder7020.setIndexBuffer(buffer7019, "uint16");
    device70.queue.submit([command_buffer705, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder6000.draw(3);
    device70.queue.submit([command_buffer702, command_buffer704, ]);
    const buffer7037 = device70.createBuffer({
        label: "buffer7037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7038 = device70.createBuffer({
        label: "buffer7038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7015 = device70.createBindGroup({
        label: "bind_group7015",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7038,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group7015);
    render_pass_encoder7050.drawIndexed(3);
    const command_buffer300 = command_encoder300.finish();
    const uint32_7001 = new Uint32Array(3);

    uint32_7001[0] = 100;
    uint32_7001[1] = 1;
    uint32_7001[2] = 1;

    const buffer7039 = device70.createBuffer({
        label: "buffer7039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7039, 0, uint32_7001, 0, uint32_7001.length);

    compute_pass_encoder7001.dispatchWorkgroupsIndirect(buffer7039, 0);
    device70.queue.submit([command_buffer705, ]);
    compute_pass_encoder7040.dispatchWorkgroups(100);
    compute_pass_encoder7020.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder7020.end();
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7001.popDebugGroup()
    render_pass_encoder7020.popDebugGroup();
    const buffer7040 = device70.createBuffer({
        label: "buffer7040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7041 = device70.createBuffer({
        label: "buffer7041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7016 = device70.createBindGroup({
        label: "bind_group7016",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7041,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group7016);
    render_pass_encoder7020.drawIndirect(buffer705, 0);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder7050.drawIndexedIndirect(buffer7016, 0);
    device70.queue.submit([command_buffer705, ]);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7042 = device70.createBuffer({
        label: "buffer7042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7042, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7042, 0);
    device60.queue.submit([]);
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer7043 = device70.createBuffer({
        label: "buffer7043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7043, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer7043, 0);
    render_pass_encoder7020.drawIndirect(buffer7036, 0);
    render_pass_encoder7020.end();
    render_pass_encoder7020.popDebugGroup();
    render_pass_encoder7020.setIndexBuffer(buffer7035, "uint16");
    render_pass_encoder7050.drawIndexedIndirect(buffer7018, 0);
    compute_pass_encoder7020.end();
    render_pass_encoder7050.drawIndirect(buffer7042, 0);
    compute_pass_encoder7001.end();
    render_pass_encoder7020.draw(3);
    compute_pass_encoder7040.popDebugGroup()
    device70.queue.submit([command_buffer705, ]);
    render_pass_encoder7020.setIndexBuffer(buffer7019, "uint16");
    render_pass_encoder7020.drawIndexedIndirect(buffer7031, 0);
    device70.queue.submit([command_buffer705, ]);
    compute_pass_encoder7040.popDebugGroup()
    compute_pass_encoder7001.end();
    device70.queue.submit([command_buffer705, ]);
    const buffer7044 = device70.createBuffer({
        label: "buffer7044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7045 = device70.createBuffer({
        label: "buffer7045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7017 = device70.createBindGroup({
        label: "bind_group7017",
        layout: compute_pipeline704.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7045,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group7017);
    render_pass_encoder7020.draw(3);
    compute_pass_encoder7001.popDebugGroup()
    compute_pass_encoder7001.popDebugGroup()
    const buffer7046 = device70.createBuffer({
        label: "buffer7046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7047 = device70.createBuffer({
        label: "buffer7047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7018 = device70.createBindGroup({
        label: "bind_group7018",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7047,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group7018);
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer7048 = device70.createBuffer({
        label: "buffer7048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7048, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer7048, 0);
    device70.queue.submit([]);
    compute_pass_encoder7020.dispatchWorkgroups(100);
    render_pass_encoder7050.drawIndexedIndirect(buffer7036, 0);
    const buffer7049 = device70.createBuffer({
        label: "buffer7049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7050 = device70.createBuffer({
        label: "buffer7050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7019 = device70.createBindGroup({
        label: "bind_group7019",
        layout: compute_pipeline7010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7050,
                },
            },
        ],
    });

    compute_pass_encoder7040.setBindGroup(0, bind_group7019);
    render_pass_encoder7020.drawIndexed(3);
    render_pass_encoder7020.setIndexBuffer(buffer703, "uint16");
    render_pass_encoder7020.popDebugGroup();
}